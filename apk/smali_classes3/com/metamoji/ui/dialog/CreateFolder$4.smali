.class Lcom/metamoji/ui/dialog/CreateFolder$4;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "CreateFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CreateFolder;->createFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CreateFolder;

.field final synthetic val$tags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CreateFolder;Ljava/util/List;)V
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

    .line 193
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$4;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CreateFolder$4;->val$tags:Ljava/util/List;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$4;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$4;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/CreateFolder$4;->val$tags:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[ %s ] : %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a0

    .line 202
    invoke-static {v2, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$4;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$4;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 206
    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 207
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/dialog/CreateFolder$4$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/metamoji/ui/dialog/CreateFolder$4$1;-><init>(Lcom/metamoji/ui/dialog/CreateFolder$4;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-object v0
.end method
