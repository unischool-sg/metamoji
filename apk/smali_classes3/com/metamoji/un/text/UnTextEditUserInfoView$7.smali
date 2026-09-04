.class Lcom/metamoji/un/text/UnTextEditUserInfoView$7;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->showLabel(Ljava/lang/String;Lcom/metamoji/un/text/UnTextUnit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

.field final synthetic val$dispLabel:Ljava/lang/String;

.field final synthetic val$targetEditUserId:Ljava/lang/String;

.field final synthetic val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/lang/String;Lcom/metamoji/un/text/UnTextUnit;Ljava/lang/String;)V
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

    .line 500
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$dispLabel:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p4, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$targetEditUserId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$dispLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v1, v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mgetPopupViewInfo(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/lang/String;)Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    move-result-object v1

    .line 509
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/util/HashMap;)V

    :cond_1
    if-nez v1, :cond_2

    .line 515
    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    invoke-direct {v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;-><init>()V

    .line 516
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$dispLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$targetEditUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->addLabel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->checkTargetLayer()V

    .line 523
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showInfoView(Z)V

    .line 525
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->setTargetTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    .line 527
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mupdateLabelWithLabelInfo(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;->val$targetUnit:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0, v2, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    return-void
.end method
