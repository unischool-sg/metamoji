.class Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$2;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForLogin.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

.field final synthetic val$are:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Ljava/util/concurrent/CountDownLatch;)V
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

    .line 272
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$2;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$2;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$2;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
