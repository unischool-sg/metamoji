.class Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;
.super Ljava/util/TimerTask;
.source "UnSurveyUnitResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->handleOutputCsvButtonTap(Lcom/metamoji/ui/common/UiButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;

.field final synthetic val$btn:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method public static synthetic $r8$lambda$9fTfrGY56aFH9zm2WzUcG3YEUmE(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;Lcom/metamoji/ui/common/UiButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;->lambda$run$0(Lcom/metamoji/ui/common/UiButton;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Lcom/metamoji/ui/common/UiButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;->val$btn:Lcom/metamoji/ui/common/UiButton;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/metamoji/ui/common/UiButton;)V
    .locals 1

    const/4 v0, 0x1

    .line 696
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 697
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_csvExporting:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 695
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;->val$btn:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;Lcom/metamoji/ui/common/UiButton;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
