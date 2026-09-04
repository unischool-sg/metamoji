.class public final Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;
.super Ljava/lang/Object;
.source "UnSurveyPieChartDecimalLabelSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/IChDecimalLabelSetting;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;",
        "Lcom/metamoji/ch/IChDecimalLabelSetting;",
        "_numDecimal",
        "",
        "_color",
        "_fontSize",
        "",
        "<init>",
        "(IID)V",
        "get_color",
        "()I",
        "get_fontSize",
        "()D",
        "numDecimal",
        "getNumDecimal",
        "color",
        "getColor",
        "fontName",
        "",
        "getFontName",
        "()Ljava/lang/String;",
        "fontSize",
        "getFontSize",
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
.field private final _color:I

.field private final _fontSize:D

.field private final _numDecimal:I


# direct methods
.method public constructor <init>(IID)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;->_numDecimal:I

    iput p2, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;->_color:I

    iput-wide p3, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;->_fontSize:D

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;->_color:I

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "Source Han Sans"

    return-object v0
.end method

.method public getFontSize()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;->_fontSize:D

    return-wide v0
.end method

.method public getNumDecimal()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;->_numDecimal:I

    return v0
.end method

.method public final get_color()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;->_color:I

    return v0
.end method

.method public final get_fontSize()D
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyPieChartDecimalLabelSetting;->_fontSize:D

    return-wide v0
.end method
