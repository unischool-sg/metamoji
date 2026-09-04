.class Lcom/metamoji/forSchool/ScSchoolCommand$3;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAllowEveryoneAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method public static synthetic $r8$lambda$9TowA6EIBMqcqCrREX4TAq3xJqM(Lcom/metamoji/forSchool/ScSchoolCommand$3;Lcom/metamoji/nt/NtNoteController;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand$3;->lambda$run$0(Lcom/metamoji/nt/NtNoteController;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1401
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$3;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/metamoji/nt/NtNoteController;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1407
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ALLOW_EVERYONE_ANSWER_MSG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1408
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$3$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/ScSchoolCommand$3$1;-><init>(Lcom/metamoji/forSchool/ScSchoolCommand$3;Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 1416
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1404
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 1405
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$3;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    new-instance v2, Lcom/metamoji/forSchool/ScSchoolCommand$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/forSchool/ScSchoolCommand$3$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/forSchool/ScSchoolCommand$3;Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
