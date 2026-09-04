.class Lcom/metamoji/un/text/UnTextEditUserInfoView$9;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->hideLabel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

.field final synthetic val$targetEditUserId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/lang/String;)V
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

    .line 605
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->val$targetEditUserId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 608
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

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

    .line 612
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showInfoView(Z)V

    return-void

    .line 614
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 615
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    .line 618
    iget-object v5, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->val$targetEditUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->removeLabel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 622
    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getEditUserCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 624
    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->removeView(Landroid/view/View;)V

    .line 626
    invoke-virtual {v4, v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 627
    invoke-virtual {v4, v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->setTargetTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 630
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0, v4}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mupdateLabelWithLabelInfo(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    .line 635
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getTargetTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    .line 643
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 644
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/util/HashMap;)V

    .line 645
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showInfoView(Z)V

    :cond_5
    return-void
.end method
