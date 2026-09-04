.class public Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;
.super Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;
.source "UnSurveyBarChartSetting.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyBarChartSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarChartScaleGridSettingMarginWide"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;",
        "Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;",
        "count",
        "",
        "<init>",
        "(I)V",
        "getCount",
        "()I",
        "labelMargin",
        "",
        "getLabelMargin",
        "()D",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;-><init>(I)V

    iput p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;->count:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSettingMarginWide;->count:I

    return v0
.end method

.method public getLabelMargin()D
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    return-wide v0
.end method
