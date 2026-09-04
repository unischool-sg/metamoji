.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$5;
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

    .line 4905
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$5;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4907
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$5;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    invoke-interface {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->onCancel()V

    return-void
.end method
