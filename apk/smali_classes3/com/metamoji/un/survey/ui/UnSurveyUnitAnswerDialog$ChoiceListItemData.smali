.class Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;
.super Ljava/lang/Object;
.source "UnSurveyUnitAnswerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChoiceListItemData"
.end annotation


# instance fields
.field public _itemId:Ljava/lang/String;

.field public _itemName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;->_itemId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;->_itemName:Ljava/lang/String;

    return-void
.end method
