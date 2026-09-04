.class Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForDistributeClass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;

.field final synthetic val$are:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;Lcom/metamoji/ns/ui/NsCollaboWaitView;Ljava/util/concurrent/CountDownLatch;)V
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

    .line 74
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1;->val$waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1;->val$waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->hide()V

    .line 79
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
