.class Landroidx/media3/transformer/InactiveTimestampAdjustment;
.super Ljava/lang/Object;
.source "InactiveTimestampAdjustment.java"

# interfaces
.implements Landroidx/media3/effect/GlEffect;


# instance fields
.field public final speedProvider:Landroidx/media3/common/audio/SpeedProvider;


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/SpeedProvider;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 51
    instance-of v0, p1, Landroidx/media3/transformer/InactiveTimestampAdjustment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    check-cast p1, Landroidx/media3/transformer/InactiveTimestampAdjustment;

    .line 55
    iget-object v0, p0, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    iget-object p1, p1, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDurationAfterEffectApplied(J)J
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/SpeedProviderUtil;->getDurationAfterSpeedProviderApplied(Landroidx/media3/common/audio/SpeedProvider;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public hashCode()I
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public isNoOp(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toGlShaderProgram(Landroid/content/Context;Z)Landroidx/media3/effect/GlShaderProgram;
    .locals 0

    .line 36
    new-instance p1, Landroidx/media3/effect/PassthroughShaderProgram;

    invoke-direct {p1}, Landroidx/media3/effect/PassthroughShaderProgram;-><init>()V

    return-object p1
.end method
