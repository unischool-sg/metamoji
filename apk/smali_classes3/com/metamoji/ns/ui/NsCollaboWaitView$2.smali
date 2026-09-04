.class Lcom/metamoji/ns/ui/NsCollaboWaitView$2;
.super Ljava/lang/Object;
.source "NsCollaboWaitView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

.field final synthetic val$cancelable:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;Z)V
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

    .line 204
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iput-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->val$cancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget v0, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_taskId:I

    invoke-static {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->getTask(I)Lcom/metamoji/ns/task/NsCollaboBgTaskBase;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 209
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->val$cancelable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboWaitView$2$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView$2$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView$2;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
