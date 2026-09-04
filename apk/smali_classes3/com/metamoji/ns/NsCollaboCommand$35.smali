.class Lcom/metamoji/ns/NsCollaboCommand$35;
.super Landroid/os/AsyncTask;
.source "NsCollaboCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->onCollaboDocumentOpened(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$are:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$jobCompleted:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 3034
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$35;->val$jobCompleted:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$35;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3034
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboCommand$35;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 3038
    :catch_0
    :goto_0
    :try_start_0
    sget-object p1, Lcom/metamoji/ns/NsCollaboCommand;->s_bgTaskForLogin:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x64

    .line 3040
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3045
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$35;->val$jobCompleted:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3046
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$35;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3045
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$35;->val$jobCompleted:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3046
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$35;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3047
    throw p1
.end method
