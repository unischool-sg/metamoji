.class Lcom/metamoji/ui/library/item/LibraryPartView$4;
.super Ljava/lang/Object;
.source "LibraryPartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPartView;->thumbnailTaskExecute(Landroid/os/AsyncTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$task:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPartView;Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;)V
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

    .line 245
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPartView$4;->val$task:Landroid/os/AsyncTask;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPartView$4;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView$4;->val$task:Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$4;->val$executor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
