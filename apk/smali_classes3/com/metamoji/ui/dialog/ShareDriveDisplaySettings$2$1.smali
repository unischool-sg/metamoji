.class Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2$1;
.super Ljava/lang/Object;
.source "ShareDriveDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;)V
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

    .line 253
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2$1;->this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2$1;->this$1:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->sharedDriveSyncStartWithToDisplayOnlyOption(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
