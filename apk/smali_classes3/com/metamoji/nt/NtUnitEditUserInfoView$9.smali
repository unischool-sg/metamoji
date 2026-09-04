.class Lcom/metamoji/nt/NtUnitEditUserInfoView$9;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->hideLabelWithUnit(Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

.field final synthetic val$targetUnit:Lcom/metamoji/nt/NtUnitController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitController;)V
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

    .line 654
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->val$targetUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 657
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->showInfoView(Z)V

    return-void

    .line 663
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 664
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    .line 665
    iget-object v5, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->val$targetUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getTargetUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 667
    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->removeView(Landroid/view/View;)V

    .line 669
    invoke-virtual {v4, v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 670
    invoke-virtual {v4, v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->setTargetUnit(Lcom/metamoji/nt/NtUnitController;)V

    .line 673
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 680
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/util/HashMap;)V

    .line 681
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->showInfoView(Z)V

    :cond_4
    return-void
.end method
