.class Lcom/metamoji/noteanytime/MainActivity$63$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$63$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$63$1;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$63$1;Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;)V
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

    .line 4433
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$63$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$63$1;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$63$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 4436
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$63$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 4437
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 4438
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$63$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$63$1;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$63$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$63;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$63;->val$driveId:Ljava/lang/String;

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$63$1$1$1;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/MainActivity$63$1$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$63$1$1;)V

    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$63$1$1$2;

    invoke-direct {v3, p0}, Lcom/metamoji/noteanytime/MainActivity$63$1$1$2;-><init>(Lcom/metamoji/noteanytime/MainActivity$63$1$1;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/metamoji/dvm/DvmDriveManager;->clearDrive(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void

    .line 4456
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$63$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
