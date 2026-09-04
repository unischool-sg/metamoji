.class Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;
.super Ljava/lang/Object;
.source "UnSurveyUnitResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultListItemData"
.end annotation


# instance fields
.field public _color:I

.field public _index:I

.field public _itemName:Ljava/lang/String;

.field public _itemPercent:Ljava/lang/String;

.field public _itemVote:Ljava/lang/String;

.field public _textColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_color:I

    const/16 v0, 0xff

    const/16 v1, 0x40

    .line 71
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_textColor:I

    .line 73
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_itemName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_itemVote:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_itemPercent:Ljava/lang/String;

    return-void
.end method
