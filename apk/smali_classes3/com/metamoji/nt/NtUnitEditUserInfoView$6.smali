.class Lcom/metamoji/nt/NtUnitEditUserInfoView$6;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->showLabel(Ljava/lang/String;Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$targetEditUserId:Ljava/lang/String;

.field final synthetic val$unit:Lcom/metamoji/nt/NtUnitController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/lang/String;Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V
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

    .line 481
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$unit:Lcom/metamoji/nt/NtUnitController;

    iput-object p4, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$targetEditUserId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$label:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v1, v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$mgetPopupViewInfo(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    move-result-object v1

    .line 490
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/util/HashMap;)V

    :cond_1
    if-nez v1, :cond_2

    .line 496
    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    invoke-direct {v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;-><init>()V

    .line 497
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$unit:Lcom/metamoji/nt/NtUnitController;

    instance-of v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz v0, :cond_3

    .line 502
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_MSG_IS_RECORDING:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$label:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$label:Ljava/lang/String;

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$targetEditUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->addLabel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->checkTargetLayer()V

    .line 513
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->showInfoView(Z)V

    .line 515
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->setTargetUnit(Lcom/metamoji/nt/NtUnitController;)V

    .line 517
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$mupdateLabelWithLabelInfo(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    .line 519
    :cond_4
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;->val$unit:Lcom/metamoji/nt/NtUnitController;

    invoke-static {v0, v2, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    return-void
.end method
