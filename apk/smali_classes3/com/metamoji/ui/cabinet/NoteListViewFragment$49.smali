.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->moveNotes(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

.field final synthetic val$docIds:Ljava/util/ArrayList;

.field final synthetic val$fromDriveId:Ljava/lang/String;

.field final synthetic val$fromTags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 6182
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$docIds:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$fromTags:Ljava/util/List;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$fromDriveId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 6186
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScSelectNote;->DriveID:Ljava/lang/String;

    .line 6187
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScSelectNote;->Tags:Ljava/util/List;

    .line 6189
    invoke-static {p2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromAbsPath(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 6190
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$docIds:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$fromTags:Ljava/util/List;

    invoke-static {p3}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->val$fromDriveId:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->moveNoteForContextmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 6191
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object v0

    invoke-static {p2, p1, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    .line 6192
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
