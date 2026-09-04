.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$58$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7134
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 7137
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;

    iget-object v1, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v5, 0x0

    const-string v7, "editNote"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startEditorActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
