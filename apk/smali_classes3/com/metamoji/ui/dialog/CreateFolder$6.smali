.class Lcom/metamoji/ui/dialog/CreateFolder$6;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "CreateFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CreateFolder;->renameFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CreateFolder;

.field final synthetic val$oldTags:Ljava/util/List;

.field final synthetic val$tags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CreateFolder;Ljava/util/List;Ljava/util/List;)V
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

    .line 240
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->val$tags:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->val$oldTags:Ljava/util/List;

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

    .line 240
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CreateFolder$6;->call()Ljava/lang/Void;

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

    .line 244
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->val$tags:Ljava/util/List;

    .line 245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->val$tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_folderName(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_focusFolderTags(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/util/List;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_focusFolderTags(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_focusFolderTags(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getLabelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_focusFolderTags(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_focusFolderTags(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_folderName(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_folderName(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->val$tags:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v2, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->val$oldTags:Ljava/util/List;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 263
    iget-object v3, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v3}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v3

    .line 264
    invoke-static {v0, v2, v3}, Lcom/metamoji/noteanytime/MainActivity;->adjustTags(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;)Z

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[ %s ] : [ %s ] \u2192 [ %s ]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a3

    .line 270
    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_focusFolderTags(Lcom/metamoji/ui/dialog/CreateFolder;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->-$$Nest$fget_currentFolder(Lcom/metamoji/ui/dialog/CreateFolder;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/metamoji/ui/dialog/CreateFolder$6;->this$0:Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/CreateFolder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 274
    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 275
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/dialog/CreateFolder$6$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/metamoji/ui/dialog/CreateFolder$6$1;-><init>(Lcom/metamoji/ui/dialog/CreateFolder$6;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-object v0
.end method
