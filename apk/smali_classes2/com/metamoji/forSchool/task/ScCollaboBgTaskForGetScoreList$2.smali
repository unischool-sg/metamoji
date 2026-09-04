.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$2;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForGetScoreList.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;

.field final synthetic val$finalAre:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;Ljava/util/concurrent/CountDownLatch;)V
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

    .line 180
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$2;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$2;->val$finalAre:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$2;->val$finalAre:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
