.class public Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;
.super Lcom/metamoji/ch/ChScaleGridDefaultSetting;
.source "UnSurveyBarChartSetting.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyBarChartSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarChartScaleGridSetting"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;",
        "Lcom/metamoji/ch/ChScaleGridDefaultSetting;",
        "_itemCount",
        "",
        "<init>",
        "(I)V",
        "get_itemCount",
        "()I",
        "label",
        "Lcom/metamoji/ch/IChLabelSetting;",
        "getLabel",
        "()Lcom/metamoji/ch/IChLabelSetting;",
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
.field private final _itemCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/metamoji/ch/ChScaleGridDefaultSetting;-><init>()V

    iput p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;->_itemCount:I

    return-void
.end method


# virtual methods
.method public getLabel()Lcom/metamoji/ch/IChLabelSetting;
    .locals 3

    .line 51
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartLabelDefaultSetting;

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    iget v2, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;->_itemCount:I

    invoke-virtual {v1, v2}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->barChartFontSize(I)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartLabelDefaultSetting;-><init>(D)V

    check-cast v0, Lcom/metamoji/ch/IChLabelSetting;

    return-object v0
.end method

.method public final get_itemCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartScaleGridSetting;->_itemCount:I

    return v0
.end method
