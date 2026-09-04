.class Lcom/metamoji/noteanytime/MainActivity$61$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$61$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$61$1;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$61$1;Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;)V
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

    .line 4302
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$61$1;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 4305
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    if-nez v0, :cond_0

    .line 4306
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void

    .line 4307
    :cond_0
    iget v0, v0, Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;->errorCode:I

    if-nez v0, :cond_1

    .line 4309
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$61$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$61$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$61;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$61;->val$sdDriveMan:Lcom/metamoji/dvm/DvmDriveManager;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$61$1;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$61$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$61;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$61;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$61$1;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$61$1;->val$newDriveName:Ljava/lang/String;

    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$61$1$1$1;

    invoke-direct {v3, p0}, Lcom/metamoji/noteanytime/MainActivity$61$1$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$61$1$1;)V

    new-instance v4, Lcom/metamoji/noteanytime/MainActivity$61$1$1$2;

    invoke-direct {v4, p0}, Lcom/metamoji/noteanytime/MainActivity$61$1$1$2;-><init>(Lcom/metamoji/noteanytime/MainActivity$61$1$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/dvm/DvmDriveManager;->updateDriveName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void

    .line 4328
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;->errorCode:I

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_2

    .line 4329
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$61$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$61$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$61;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$61;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V

    return-void

    .line 4330
    :cond_2
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;->errorCode:I

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_3

    .line 4331
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$61$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$61$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$61;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$61;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMessageAndClearDrive(Ljava/lang/String;I)V

    return-void

    .line 4333
    :cond_3
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$61$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
