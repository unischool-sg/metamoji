.class Lcom/metamoji/noteanytime/MainActivity$63$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$63;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$63;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$63;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4425
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$63$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$63;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4428
    new-instance v0, Lcom/metamoji/cs/dc/params/CsDeleteDriveParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsDeleteDriveParam;-><init>()V

    .line 4429
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$63$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$63;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$63;->val$driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsDeleteDriveParam;->driveId:Ljava/lang/String;

    .line 4431
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;

    .line 4433
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$63$1$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$63$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$63$1;Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
