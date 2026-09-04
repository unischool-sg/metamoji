.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleMultiDeleteButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1881
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1884
    new-instance p1, Lcom/metamoji/cm/mutable/MutableBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>(Z)V

    .line 1886
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p2

    .line 1887
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1888
    :goto_0
    invoke-virtual {p2, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p2

    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1891
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v3, :cond_1

    .line 1892
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1893
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_isTrash(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1894
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v5

    goto :goto_2

    .line 1896
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->moveDocumentToTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v5

    .line 1898
    :goto_2
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1899
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_isTrash(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1900
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v5

    .line 1901
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 1902
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1903
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    :cond_4
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    .line 1909
    invoke-virtual {p2, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1910
    const-string v6, "beforeTags = %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1911
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_isTrash(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1913
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v3, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v5

    .line 1914
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1915
    invoke-virtual {p2, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1916
    const-string v5, "afterTags = %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1918
    :cond_5
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    goto :goto_4

    .line 1922
    :cond_6
    :goto_3
    invoke-virtual {p1, v4}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    goto/16 :goto_1

    .line 1925
    :cond_7
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    .line 1931
    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1934
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_isTrash(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1935
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    .line 1936
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "[ %s ] : [ %s ] : %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x19d

    .line 1937
    invoke-static {v0, p2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 1940
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1941
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 1942
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderChanged()V

    .line 1943
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    :cond_a
    return-void
.end method
