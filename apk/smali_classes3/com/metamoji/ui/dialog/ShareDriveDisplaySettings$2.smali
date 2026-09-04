.class Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;
.super Ljava/lang/Object;
.source "ShareDriveDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$values:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;->val$values:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 247
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;->val$values:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;->entryList:Ljava/util/ArrayList;

    .line 251
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;

    .line 253
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2$1;-><init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
