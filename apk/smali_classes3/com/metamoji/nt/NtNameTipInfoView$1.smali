.class Lcom/metamoji/nt/NtNameTipInfoView$1;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNameTipInfoView;
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

    .line 92
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$1;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$1;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v2}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/nt/NtNameTipInfoView$1;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v3}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    iget-object v4, p0, Lcom/metamoji/nt/NtNameTipInfoView$1;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v4}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtNameTipLabelInfo;

    if-eqz v4, :cond_1

    .line 107
    invoke-virtual {v4, v0, v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->checkTimeout(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    iget-object v5, p0, Lcom/metamoji/nt/NtNameTipInfoView$1;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-virtual {v5, v3, v4}, Lcom/metamoji/nt/NtNameTipInfoView;->removePopupLabel(Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
