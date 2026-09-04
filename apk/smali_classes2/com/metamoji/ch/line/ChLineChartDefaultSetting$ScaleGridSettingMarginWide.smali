.class final Lcom/metamoji/ch/line/ChLineChartDefaultSetting$ScaleGridSettingMarginWide;
.super Lcom/metamoji/ch/ChScaleGridDefaultSetting;
.source "IChLineChartSetting.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ch/line/ChLineChartDefaultSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScaleGridSettingMarginWide"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/ch/line/ChLineChartDefaultSetting$ScaleGridSettingMarginWide;",
        "Lcom/metamoji/ch/ChScaleGridDefaultSetting;",
        "<init>",
        "()V",
        "labelMargin",
        "",
        "getLabelMargin",
        "()D",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/metamoji/ch/ChScaleGridDefaultSetting;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabelMargin()D
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    return-wide v0
.end method
