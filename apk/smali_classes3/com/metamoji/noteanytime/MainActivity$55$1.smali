.class Lcom/metamoji/noteanytime/MainActivity$55$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$55;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$55;

.field final synthetic val$newDriveName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$55;Ljava/lang/String;)V
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

    .line 4004
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$55$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$55;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$55$1;->val$newDriveName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4007
    new-instance v0, Lcom/metamoji/cs/dc/params/CsCreateDriveParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsCreateDriveParam;-><init>()V

    .line 4008
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$55$1;->val$newDriveName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsCreateDriveParam;->driveName:Ljava/lang/String;

    .line 4009
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;

    .line 4011
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$55$1$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$55$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$55$1;Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
