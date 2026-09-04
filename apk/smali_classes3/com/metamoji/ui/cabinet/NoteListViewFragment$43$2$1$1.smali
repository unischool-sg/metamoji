.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4939
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4939
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4942
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v1, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-boolean v4, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$isReadOnly:Z

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-boolean v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$isDragDrop:Z

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-object v6, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    iget-boolean v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$reacquisition:Z

    invoke-static/range {v1 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    const/4 v0, 0x0

    return-object v0
.end method
