.class Lcom/metamoji/noteanytime/MainActivity$55$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$55$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$55$1;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$55$1;Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;)V
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

    .line 4011
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$55$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$55$1;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$55$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4013
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$55$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$55$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;->driveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setDriveIdActivatingAfterSync(Ljava/lang/String;)V

    .line 4017
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAllSharedDriveSyncWithAdditionOnlyOption()Z

    return-void

    .line 4019
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$55$1$1;->val$result:Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
