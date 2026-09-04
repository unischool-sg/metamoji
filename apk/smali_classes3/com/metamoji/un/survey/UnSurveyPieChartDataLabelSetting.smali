.class public final Lcom/metamoji/un/survey/UnSurveyPieChartDataLabelSetting;
.super Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;
.source "UnSurveyPieChartDataLabelSetting.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyPieChartDataLabelSetting;",
        "Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;",
        "_fontSize",
        "",
        "<init>",
        "(D)V",
        "get_fontSize",
        "()D",
        "categoryLabel",
        "Lcom/metamoji/ch/IChLabelSetting;",
        "getCategoryLabel",
        "()Lcom/metamoji/ch/IChLabelSetting;",
        "percentageLabel",
        "Lcom/metamoji/ch/IChDecimalLabelSetting;",
        "getPercentageLabel",
        "()Lcom/metamoji/ch/IChDecimalLabelSetting;",
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
.field private final _fontSize:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDataLabelSetting;->_fontSize:D

    return-void
.end method


# virtual methods
.method public getCategoryLabel()Lcom/metamoji/ch/IChLabelSetting;
    .locals 3

    .line 20
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyPieChartLabelSetting;

    iget-wide v1, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDataLabelSetting;->_fontSize:D

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyPieChartLabelSetting;-><init>(D)V

    check-cast v0, Lcom/metamoji/ch/IChLabelSetting;

    return-object v0
.end method

.method public getPercentageLabel()Lcom/metamoji/ch/IChDecimalLabelSetting;
    .locals 5

    .line 23
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;

    const/16 v1, 0x99

    const/16 v2, 0xb8

    const/16 v3, 0xff

    invoke-static {v3, v1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-wide v2, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDataLabelSetting;->_fontSize:D

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;-><init>(IID)V

    check-cast v0, Lcom/metamoji/ch/IChDecimalLabelSetting;

    return-object v0
.end method

.method public final get_fontSize()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDataLabelSetting;->_fontSize:D

    return-wide v0
.end method
