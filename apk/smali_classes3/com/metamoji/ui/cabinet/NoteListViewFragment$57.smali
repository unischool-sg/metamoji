.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$57;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->deliverNoteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$noteListViewFragment:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6735
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$57;->val$noteListViewFragment:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$57;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 6738
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$57;->val$noteListViewFragment:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$57;->val$command:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startEditorActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
