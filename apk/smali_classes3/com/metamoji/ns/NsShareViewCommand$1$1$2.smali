.class Lcom/metamoji/ns/NsShareViewCommand$1$1$2;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsShareViewCommand$1$1;

.field final synthetic val$are:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$jobCompleted:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsShareViewCommand$1$1;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
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

    .line 157
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1$2;->this$1:Lcom/metamoji/ns/NsShareViewCommand$1$1;

    iput-object p2, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1$2;->val$jobCompleted:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1$2;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1$2;->val$jobCompleted:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1$2;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
