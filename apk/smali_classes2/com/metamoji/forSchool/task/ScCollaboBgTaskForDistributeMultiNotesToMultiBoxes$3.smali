.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;

.field final synthetic val$are:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$finalResult:Lcom/metamoji/dvm/cs/DvmDistributeClassResult;

.field final synthetic val$waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;Lcom/metamoji/ns/ui/NsCollaboWaitView;Lcom/metamoji/dvm/cs/DvmDistributeClassResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 179
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3;->val$waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iput-object p3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3;->val$finalResult:Lcom/metamoji/dvm/cs/DvmDistributeClassResult;

    iput-object p4, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3;->val$waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->hide()V

    .line 184
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3;->val$finalResult:Lcom/metamoji/dvm/cs/DvmDistributeClassResult;

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes$3;)V

    invoke-static {v0, v1}, Lcom/metamoji/dvm/cs/DvmCsUtil;->showDvmCsAlertDialog(Lcom/metamoji/dvm/cs/DvmResultBase;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
