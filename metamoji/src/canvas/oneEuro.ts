/**
 * One-Euro filter.
 *
 * Pen input is noisy at low speed and latency-sensitive at high speed, and a
 * fixed smoothing constant has to pick one to be bad at. This filter adapts its
 * cutoff to the signal's own speed: heavy smoothing while the pen creeps (where
 * jitter is what you notice) and almost none while it moves (where lag is what
 * you notice).
 *
 * Casiez, Roussel & Vogel, CHI 2012.
 */

export interface OneEuroConfig {
  /** Cutoff at zero speed, Hz. Lower = smoother but laggier when still. */
  minCutoff: number;
  /** How much speed raises the cutoff. Higher = less lag when moving fast. */
  beta: number;
  /** Cutoff for the derivative estimate, Hz. */
  dCutoff: number;
}

export const DEFAULT_ONE_EURO: OneEuroConfig = {
  minCutoff: 1.4,
  beta: 0.06,
  dCutoff: 1.0,
};

class LowPass {
  private y: number | null = null;

  filter(value: number, alpha: number): number {
    this.y = this.y === null ? value : alpha * value + (1 - alpha) * this.y;
    return this.y;
  }

  reset(): void {
    this.y = null;
  }

  get value(): number | null {
    return this.y;
  }
}

function alphaFor(cutoff: number, dt: number): number {
  const tau = 1 / (2 * Math.PI * cutoff);
  return 1 / (1 + tau / dt);
}

/** A one-euro filter over a single scalar channel. */
export class OneEuroFilter {
  private x = new LowPass();
  private dx = new LowPass();
  private lastTime: number | null = null;

  constructor(private config: OneEuroConfig = DEFAULT_ONE_EURO) {}

  reset(): void {
    this.x.reset();
    this.dx.reset();
    this.lastTime = null;
  }

  filter(value: number, timestampMs: number): number {
    if (this.lastTime === null) {
      this.lastTime = timestampMs;
      this.x.filter(value, 1);
      return value;
    }

    // Guard against duplicate timestamps, which some devices do emit.
    const dt = Math.max((timestampMs - this.lastTime) / 1000, 1e-4);
    this.lastTime = timestampMs;

    const prev = this.x.value ?? value;
    const rawSpeed = (value - prev) / dt;
    const speed = this.dx.filter(rawSpeed, alphaFor(this.config.dCutoff, dt));

    const cutoff = this.config.minCutoff + this.config.beta * Math.abs(speed);
    return this.x.filter(value, alphaFor(cutoff, dt));
  }
}

/** Filters x, y and pressure together, sharing one timestamp. */
export class PointFilter {
  private fx: OneEuroFilter;
  private fy: OneEuroFilter;
  private fp: OneEuroFilter;

  constructor(config: OneEuroConfig = DEFAULT_ONE_EURO) {
    this.fx = new OneEuroFilter(config);
    this.fy = new OneEuroFilter(config);
    // Pressure is smoothed harder: it is noisier than position and a jittery
    // width reads as a defect in a way a jittery path does not.
    this.fp = new OneEuroFilter({ minCutoff: 0.8, beta: 0.01, dCutoff: 1.0 });
  }

  reset(): void {
    this.fx.reset();
    this.fy.reset();
    this.fp.reset();
  }

  filter(x: number, y: number, pressure: number, t: number) {
    return {
      x: this.fx.filter(x, t),
      y: this.fy.filter(y, t),
      p: this.fp.filter(pressure, t),
    };
  }
}
