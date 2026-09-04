.class Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$2;
.super Ljava/lang/Object;
.source "LibraryURLConnectionBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->requestAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$2;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 104
    :try_start_0
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$2;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;-><init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$2;->val$url:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
