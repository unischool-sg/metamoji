.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1171
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    .line 1175
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p2

    .line 1176
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1177
    :goto_0
    invoke-virtual {p2, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p2

    .line 1178
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1180
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mgetItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1181
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v3

    if-ne p1, v3, :cond_1

    if-eqz p2, :cond_1

    .line 1183
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1188
    const-string v0, "[NoteListViewFragment] :: ERROR prepareTrashAllDeleteButton.onClick:"

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1190
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 1191
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderChanged()V

    .line 1192
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method
