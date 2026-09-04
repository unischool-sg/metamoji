.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$4;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4898
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$4;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 4900
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$4;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$4;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$4;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
