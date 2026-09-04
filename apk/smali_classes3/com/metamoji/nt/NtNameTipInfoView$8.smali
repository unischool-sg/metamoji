.class Lcom/metamoji/nt/NtNameTipInfoView$8;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->hideLabel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;)V
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

    .line 555
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$8;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtNameTipInfoView$8;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 557
    invoke-static {}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$8;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$8;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$8;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNameTipInfoView;->showInfoView(Z)V

    goto :goto_1

    .line 566
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 567
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtNameTipLabelInfo;

    .line 570
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/nt/NtNameTipInfoView$8;->val$userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    new-instance v1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    .line 573
    new-instance v4, Lcom/metamoji/nt/NtNameTipInfoView$8$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/metamoji/nt/NtNameTipInfoView$8$1;-><init>(Lcom/metamoji/nt/NtNameTipInfoView$8;Ljava/util/Map$Entry;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v4, v5, v6}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    .line 585
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setTimer(Lcom/metamoji/cm/UiTimer;)V

    .line 591
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
