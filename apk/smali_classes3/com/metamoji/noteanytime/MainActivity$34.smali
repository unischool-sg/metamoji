.class Lcom/metamoji/noteanytime/MainActivity$34;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->moveFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

.field final synthetic val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

.field final synthetic val$fromTagId:Ljava/lang/String;

.field final synthetic val$fromTags:Ljava/util/List;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$sdDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$toFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdDriveDocumentManager;Landroid/content/res/Resources;Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;)V
    .locals 0

    .line 2442
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$toFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$fromTagId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$fromTags:Ljava/util/List;

    iput-object p6, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$sdDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p7, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$res:Landroid/content/res/Resources;

    iput-object p8, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

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

    .line 2442
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity$34;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2446
    invoke-static {}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->clearData()V

    .line 2448
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$toFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smupdateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    .line 2454
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$toFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 2455
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$fromTagId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 2460
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v0

    .line 2461
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2462
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$fromTags:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 2463
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$sdDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-static {v0, v1, v3}, Lcom/metamoji/noteanytime/MainActivity;->adjustTags(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2465
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$res:Landroid/content/res/Resources;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Not_Move_Folder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    .line 2468
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$34$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$34$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$34;)V

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 2483
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iget-object v1, v1, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_absPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2484
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iget-object v1, v1, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_driveID:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity$34;->val$toFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[ %s ] : [ %s ] \u2192 [ %s ]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a1

    .line 2485
    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    return-object v2
.end method
