.class Lcom/metamoji/nt/NtNameTipInfoView$7;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->showLabel(Ljava/lang/String;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;

.field final synthetic val$pt:Landroid/graphics/PointF;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;Landroid/graphics/PointF;)V
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

    .line 526
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->val$pt:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 528
    invoke-static {}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->val$userId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 530
    monitor-exit v0

    return-void

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v2, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$mgetPopupViewInfo(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;)Lcom/metamoji/nt/NtNameTipLabelInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 535
    monitor-exit v0

    return-void

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->val$pt:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setPt(Landroid/graphics/PointF;)V

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/nt/NtNameTipLabelInfo;->lastTick:J

    .line 542
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtNameTipInfoView;->showInfoView(Z)V

    .line 544
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v2, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$mupdateLabel(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    .line 545
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    iget-object v3, p0, Lcom/metamoji/nt/NtNameTipInfoView$7;->val$userId:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    .line 546
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
