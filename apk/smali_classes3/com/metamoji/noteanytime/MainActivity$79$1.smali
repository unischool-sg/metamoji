.class Lcom/metamoji/noteanytime/MainActivity$79$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$79;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$79;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$79;Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5733
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$79$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$79;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$79$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5735
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$79$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 5736
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$79$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$79;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$79;->val$driveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$79$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$79;

    iget-boolean v1, v1, Lcom/metamoji/noteanytime/MainActivity$79;->val$isAllow:Z

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->setJoinEnabledToCache(Ljava/lang/String;Z)V

    return-void

    .line 5738
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$79$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
