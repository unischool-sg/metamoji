.class public final synthetic Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

.field public final synthetic f$1:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

.field public final synthetic f$2:Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    iput-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;

    return-void
.end method


# virtual methods
.method public final onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;->f$2:Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->$r8$lambda$0E8ejWBSxz0mo57yfGR0yS1puTw(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
