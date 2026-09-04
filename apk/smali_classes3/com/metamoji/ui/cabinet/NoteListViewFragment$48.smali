.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyNotes(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V
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
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;Ljava/util/List;Ljava/util/ArrayList;)V
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

    .line 6134
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$fromDriveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$fromTags:Ljava/util/List;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$docIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p3, :cond_1

    .line 6138
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScSelectNote;->DriveID:Ljava/lang/String;

    .line 6139
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScSelectNote;->Tags:Ljava/util/List;

    .line 6140
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$fromDriveId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/metamoji/sd/SdUtils;->isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$fromTags:Ljava/util/List;

    invoke-static {p3, p2}, Lcom/metamoji/sd/SdUtils;->isSameTags(Ljava/util/List;Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6141
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_res(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Could_Not_Copy_Same_Folder:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    return-void

    .line 6144
    :cond_0
    invoke-static {p2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromAbsPath(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 6145
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$docIds:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$fromTags:Ljava/util/List;

    invoke-static {p3}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->val$fromDriveId:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyNoteForContextmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 6146
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object v0

    invoke-static {p2, p1, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    .line 6147
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
