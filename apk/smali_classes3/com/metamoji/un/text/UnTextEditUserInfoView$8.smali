.class Lcom/metamoji/un/text/UnTextEditUserInfoView$8;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->showLabelWithLabels(Ljava/util/ArrayList;Lcom/metamoji/un/text/UnTextUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

.field final synthetic val$targetLabels:Ljava/util/ArrayList;

.field final synthetic val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/util/ArrayList;Lcom/metamoji/un/text/UnTextUnit;)V
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

    .line 543
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->val$targetLabels:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 545
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->val$targetLabels:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 551
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 555
    const-string v4, "label"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 556
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 559
    :goto_1
    const-string/jumbo v5, "userid"

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 560
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    if-eqz v4, :cond_1

    if-nez v3, :cond_4

    goto :goto_0

    .line 567
    :cond_4
    iget-object v5, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v5}, Lcom/metamoji/un/text/UnTextUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v5

    .line 568
    iget-object v6, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v6, v5}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mgetPopupViewInfo(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/lang/String;)Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    move-result-object v6

    .line 570
    iget-object v7, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v7}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_5

    .line 571
    iget-object v7, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v8}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/util/HashMap;)V

    :cond_5
    if-nez v6, :cond_6

    .line 576
    new-instance v6, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    invoke-direct {v6}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;-><init>()V

    .line 577
    iget-object v7, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v7}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_6
    invoke-virtual {v6, v4, v3}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->addLabel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v6, v2}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->setTargetTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    move-object v2, v6

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    .line 589
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showInfoView(Z)V

    .line 591
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mupdateLabelWithLabelInfo(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    .line 593
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    :cond_8
    :goto_3
    return-void
.end method
