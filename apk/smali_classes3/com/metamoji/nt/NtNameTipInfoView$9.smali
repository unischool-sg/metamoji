.class Lcom/metamoji/nt/NtNameTipInfoView$9;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->hideAllLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 627
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$9;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 629
    invoke-static {}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$9;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 632
    monitor-exit v0

    return-void

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$9;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$9;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNameTipInfoView;->showInfoView(Z)V

    goto :goto_1

    .line 639
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$9;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v2}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 640
    iget-object v3, p0, Lcom/metamoji/nt/NtNameTipInfoView$9;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v3}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtNameTipLabelInfo;

    if-eqz v3, :cond_2

    .line 644
    iget-object v4, p0, Lcom/metamoji/nt/NtNameTipInfoView$9;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-virtual {v4, v2, v3}, Lcom/metamoji/nt/NtNameTipInfoView;->removePopupLabel(Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    goto :goto_0

    .line 648
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
