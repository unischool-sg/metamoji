.class Lcom/metamoji/nt/NtNameTipInfoView$3;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->clearPopupInfos()V
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

    .line 233
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$3;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$3;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$3;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 240
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtNameTipLabelInfo;

    .line 244
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    const/16 v4, 0x8

    .line 246
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v4, p0, Lcom/metamoji/nt/NtNameTipInfoView$3;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/NtNameTipInfoView;->removeView(Landroid/view/View;)V

    .line 249
    :cond_1
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 250
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setUserId(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setLaserPointerCanvas(Lcom/metamoji/ui/LaserPointerCanvas;)V

    .line 252
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->clearTimer()V

    goto :goto_1

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$3;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 256
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$3;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/util/HashMap;)V

    :cond_3
    return-void
.end method
