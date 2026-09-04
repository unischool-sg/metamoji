.class final Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartLabelDefaultSetting;
.super Lcom/metamoji/ch/ChLabelDefaultSetting;
.source "UnSurveyBarChartSetting.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyBarChartSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BarChartLabelDefaultSetting"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartLabelDefaultSetting;",
        "Lcom/metamoji/ch/ChLabelDefaultSetting;",
        "_fontSize",
        "",
        "<init>",
        "(D)V",
        "get_fontSize",
        "()D",
        "fontSize",
        "getFontSize",
        "fontName",
        "",
        "getFontName",
        "()Ljava/lang/String;",
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

    .line 30
    invoke-direct {p0}, Lcom/metamoji/ch/ChLabelDefaultSetting;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartLabelDefaultSetting;->_fontSize:D

    return-void
.end method


# virtual methods
.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "Source Han Sans"

    return-object v0
.end method

.method public getFontSize()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartLabelDefaultSetting;->_fontSize:D

    return-wide v0
.end method

.method public final get_fontSize()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/metamoji/un/survey/UnSurveyBarChartSetting$BarChartLabelDefaultSetting;->_fontSize:D

    return-wide v0
.end method
