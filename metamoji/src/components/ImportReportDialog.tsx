/**
 * Shows what a `.atdoc` import actually recovered.
 *
 * Import fidelity is partial by nature — some unit types are not implemented
 * here, per-point pressure is not in the source format, and rich text bodies use
 * a second encoding this build does not read. Reporting that plainly is better
 * than handing back a note that looks subtly wrong with no explanation.
 */

import { useTranslation } from "../i18n/useTranslation";
import type { ImportReport } from "../ipc/api";

interface Props {
  report: ImportReport;
  onClose: () => void;
}

export function ImportReportDialog({ report, onClose }: Props) {
  const { t } = useTranslation();
  const kinds = Object.entries(report.unitCounts)
    .filter(([type]) => type.startsWith("$"))
    .sort((a, b) => b[1] - a[1]);

  return (
    <div className="dialog-backdrop" role="dialog" aria-modal="true" aria-label={t("取り込みが完了しました")}>
      <div className="dialog">
        <h2>{t("取り込みが完了しました")}</h2>

        <div className="report-stats">
          <Stat value={report.pageCount} label={t("ページ")} />
          <Stat value={report.strokeCount} label={t("ストローク")} />
          <Stat value={report.modelCount} label={t("モデル")} />
          <Stat value={`v${report.formatVersion}`} label={t("形式バージョン")} />
        </div>

        {kinds.length > 0 && (
          <>
            <h3 style={{ fontSize: 12, color: "var(--color-text-muted)", margin: "0 0 6px" }}>
              {t("取り込んだ要素")}
            </h3>
            <ul className="report-list">
              {kinds.map(([type, count]) => (
                <li key={type}>
                  <code>{type}</code> × {count}
                </li>
              ))}
            </ul>
          </>
        )}

        {report.warnings.length > 0 && (
          <div className="notice" style={{ marginTop: "var(--space-4)" }}>
            <ul className="report-list" style={{ margin: 0 }}>
              {report.warnings.map((warning) => (
                <li key={warning}>{warning}</li>
              ))}
            </ul>
          </div>
        )}

        <div className="dialog__actions">
          <button type="button" className="btn btn--primary" onClick={onClose}>
            {t("閉じる")}
          </button>
        </div>
      </div>
    </div>
  );
}

function Stat({ value, label }: { value: number | string; label: string }) {
  return (
    <div className="report-stat">
      <div className="report-stat__value">{value}</div>
      <div className="report-stat__label">{label}</div>
    </div>
  );
}
