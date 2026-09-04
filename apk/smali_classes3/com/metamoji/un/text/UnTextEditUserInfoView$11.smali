.class Lcom/metamoji/un/text/UnTextEditUserInfoView$11;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->hideAllLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 696
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 699
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showInfoView(Z)V

    return-void

    .line 705
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 706
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    .line 709
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->removeView(Landroid/view/View;)V

    .line 711
    invoke-virtual {v3, v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 712
    invoke-virtual {v3, v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->setTargetTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    goto :goto_1

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 716
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/util/HashMap;)V

    .line 717
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showInfoView(Z)V

    return-void
.end method
