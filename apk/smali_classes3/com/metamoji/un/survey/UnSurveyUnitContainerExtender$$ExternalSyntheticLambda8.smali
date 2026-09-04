.class public final synthetic Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

.field public final synthetic f$1:Lcom/metamoji/un/survey/UnSurveyUnit;

.field public final synthetic f$2:Lcom/metamoji/cm/CmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;Lcom/metamoji/un/survey/UnSurveyUnit;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;->f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    iput-object p2, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;->f$1:Lcom/metamoji/un/survey/UnSurveyUnit;

    iput-object p3, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;->f$2:Lcom/metamoji/cm/CmContext;

    return-void
.end method


# virtual methods
.method public final onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;->f$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;->f$1:Lcom/metamoji/un/survey/UnSurveyUnit;

    iget-object v2, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;->f$2:Lcom/metamoji/cm/CmContext;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->lambda$handleSurveyUnitAnswer$4(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;Lcom/metamoji/un/survey/UnSurveyUnit;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
