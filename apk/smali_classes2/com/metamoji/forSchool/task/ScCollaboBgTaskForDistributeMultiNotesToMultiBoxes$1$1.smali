.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1$1;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1$1;->this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1$1;->this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1;

    iget-object p1, p1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$1;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
