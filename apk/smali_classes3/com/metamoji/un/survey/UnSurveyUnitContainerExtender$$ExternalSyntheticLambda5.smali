.class public final synthetic Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

.field public final synthetic f$1:Lcom/metamoji/cm/CmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iput-object p2, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda5;->f$1:Lcom/metamoji/cm/CmContext;

    return-void
.end method


# virtual methods
.method public final onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda5;->f$1:Lcom/metamoji/cm/CmContext;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->lambda$handleAddSurveyUnit$0(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
