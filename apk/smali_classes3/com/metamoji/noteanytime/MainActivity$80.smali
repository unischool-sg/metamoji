.class Lcom/metamoji/noteanytime/MainActivity$80;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->isAllowedToParticipateBox(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completion:Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5757
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$80;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$80;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5760
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;-><init>()V

    .line 5761
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$80;->val$driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;->driveId:Ljava/lang/String;

    .line 5762
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    if-eqz v0, :cond_0

    .line 5764
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->errorCode:I

    if-nez v1, :cond_0

    .line 5765
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$80;->val$driveId:Ljava/lang/String;

    iget-object v2, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinCode:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinEnabled:Z

    invoke-static {v1, v2, v3}, Lcom/metamoji/noteanytime/MainActivity;->setDriveAllowToParticipateBoxCache(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5766
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$80;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;

    if-eqz v1, :cond_1

    .line 5767
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinEnabled:Z

    invoke-interface {v1, v0}, Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;->onCompletion(Z)V

    return-void

    .line 5771
    :cond_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$80;->val$driveId:Ljava/lang/String;

    iget-object v2, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinCode:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinEnabled:Z

    invoke-static {v1, v2, v0}, Lcom/metamoji/noteanytime/MainActivity;->setDriveAllowToParticipateBoxCache(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5772
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$80;->val$completion:Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5773
    invoke-interface {v0, v1}, Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;->onCompletion(Z)V

    :cond_1
    return-void
.end method
