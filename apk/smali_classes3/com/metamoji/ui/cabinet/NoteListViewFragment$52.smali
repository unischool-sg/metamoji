.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->deleteNote(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 6335
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 6338
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->val$driveId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 6339
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->val$docId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p1

    .line 6340
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6341
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 6342
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderChanged()V

    .line 6343
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 6345
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void
.end method
