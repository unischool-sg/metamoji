.class Lcom/metamoji/noteanytime/MainActivity$79;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->setAllowToParticipateBox(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$isAllow:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5724
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$79;->val$driveId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/metamoji/noteanytime/MainActivity$79;->val$isAllow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5727
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;-><init>()V

    .line 5728
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$79;->val$driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;->driveId:Ljava/lang/String;

    .line 5729
    iget-boolean v1, p0, Lcom/metamoji/noteanytime/MainActivity$79;->val$isAllow:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->ENABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->DISABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    :goto_0
    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;->joinEnabled:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    .line 5731
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    .line 5733
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$79$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$79$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$79;Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
