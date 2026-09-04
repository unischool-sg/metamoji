.class Lcom/metamoji/noteanytime/MainActivity$62$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$62;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$62;

.field final synthetic val$newDriveName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$62;Ljava/lang/String;)V
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

    .line 4363
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$62$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$62;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$62$1;->val$newDriveName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4366
    new-instance v0, Lcom/metamoji/cs/dc/params/CsRenameDriveParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsRenameDriveParam;-><init>()V

    .line 4367
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$62$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$62;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$62;->val$driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsRenameDriveParam;->driveId:Ljava/lang/String;

    .line 4368
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$62$1;->val$newDriveName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsRenameDriveParam;->driveName:Ljava/lang/String;

    .line 4370
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsRenameDriveResponse;

    .line 4372
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$62$1$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$62$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$62$1;Lcom/metamoji/cs/dc/response/CsRenameDriveResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
