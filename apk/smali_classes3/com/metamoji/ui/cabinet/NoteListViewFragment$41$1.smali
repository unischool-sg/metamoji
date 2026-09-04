.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$41$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;->run()V
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
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4742
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;

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

    .line 4742
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4745
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;->val$copiedDocId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;->val$driveId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41$1;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;

    iget-object v4, v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smeditDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;)V

    const/4 v0, 0x0

    return-object v0
.end method
