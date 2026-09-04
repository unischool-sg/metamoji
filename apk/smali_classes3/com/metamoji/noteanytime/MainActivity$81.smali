.class Lcom/metamoji/noteanytime/MainActivity$81;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->updateDriveAllowToParticipateBoxCache(Ljava/lang/String;ZLcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completion:Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5797
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5799
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    if-eqz v0, :cond_1

    .line 5800
    iget v0, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->errorCode:I

    .line 5806
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$driveId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5801
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    iget-boolean v2, v2, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinEnabled:Z

    invoke-static {v1, v0, v2}, Lcom/metamoji/noteanytime/MainActivity;->setDriveAllowToParticipateBoxCache(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5802
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;

    if-eqz v0, :cond_1

    .line 5803
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    iget-object v1, v1, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;->onCompletion(Ljava/lang/String;)V

    return-void

    .line 5806
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    iget-boolean v2, v2, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinEnabled:Z

    invoke-static {v1, v0, v2}, Lcom/metamoji/noteanytime/MainActivity;->setDriveAllowToParticipateBoxCache(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5807
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;

    if-eqz v0, :cond_1

    .line 5808
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$81;->val$result:Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_1
    return-void
.end method
