.class public final synthetic Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

.field public final synthetic f$1:Lcom/metamoji/un/survey/UnSurveyUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iput-object p2, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/un/survey/UnSurveyUnit;

    return-void
.end method


# virtual methods
.method public final onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/un/survey/UnSurveyUnit;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->lambda$handleSurveyUnitEditSettings$1(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
