.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->ReacquisitionShareNote(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 7131
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 7134
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;->val$docId:Ljava/lang/String;

    new-instance v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58$1;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;)V

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    return-void
.end method
