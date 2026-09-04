.class Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;
.super Ljava/lang/Object;
.source "UnSurveyUnitSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;
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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;->_itemId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;->_itemName:Ljava/lang/String;

    return-void
.end method
