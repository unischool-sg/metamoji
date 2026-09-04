.class Lcom/metamoji/noteanytime/MainActivity$59$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$59;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$59;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$59;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4183
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$59$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$59;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4186
    new-instance v0, Lcom/metamoji/cs/dc/params/CsDeleteMemberToDriveParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsDeleteMemberToDriveParam;-><init>()V

    .line 4187
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$59$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$59;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$59;->val$driveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsDeleteMemberToDriveParam;->driveId:Ljava/lang/String;

    .line 4189
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;

    .line 4191
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$59$1$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$59$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$59$1;Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
