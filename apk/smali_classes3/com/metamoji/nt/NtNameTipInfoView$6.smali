.class Lcom/metamoji/nt/NtNameTipInfoView$6;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->addLabel(Ljava/lang/String;Lcom/metamoji/ui/LaserPointerCanvas;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;

.field final synthetic val$color:I

.field final synthetic val$laserPointerCanvas:Lcom/metamoji/ui/LaserPointerCanvas;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;Lcom/metamoji/ui/LaserPointerCanvas;I)V
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

    .line 485
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->val$laserPointerCanvas:Lcom/metamoji/ui/LaserPointerCanvas;

    iput p4, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 487
    invoke-static {}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->val$userId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 489
    monitor-exit v0

    return-void

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v2, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$mgetPopupViewInfo(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;)Lcom/metamoji/nt/NtNameTipLabelInfo;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v2}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/util/HashMap;)V

    :cond_1
    if-nez v1, :cond_2

    .line 500
    new-instance v1, Lcom/metamoji/nt/NtNameTipLabelInfo;

    invoke-direct {v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;-><init>()V

    .line 501
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->val$userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setUserId(Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->val$laserPointerCanvas:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setLaserPointerCanvas(Lcom/metamoji/ui/LaserPointerCanvas;)V

    .line 503
    iget v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->val$color:I

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setColor(I)V

    .line 505
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v2}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 509
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->clearTimer()V

    const/16 v3, 0x8

    .line 510
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v3, p0, Lcom/metamoji/nt/NtNameTipInfoView$6;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtNameTipInfoView;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 512
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 515
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
