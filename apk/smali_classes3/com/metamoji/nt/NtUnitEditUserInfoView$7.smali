.class Lcom/metamoji/nt/NtUnitEditUserInfoView$7;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->showLabelWithLabels(Ljava/util/List;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

.field final synthetic val$targetLabels:Ljava/util/List;

.field final synthetic val$unit:Lcom/metamoji/nt/NtUnitController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/util/List;Lcom/metamoji/nt/NtUnitController;)V
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

    .line 531
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->val$targetLabels:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->val$unit:Lcom/metamoji/nt/NtUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 533
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->val$targetLabels:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 539
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 543
    const-string v4, "label"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 544
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 547
    :goto_1
    const-string/jumbo v5, "userid"

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 548
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

    .line 555
    :cond_4
    iget-object v5, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->val$unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v5

    .line 556
    iget-object v6, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v6, v5}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$mgetPopupViewInfo(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    move-result-object v6

    .line 558
    iget-object v7, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v7}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_5

    .line 559
    iget-object v7, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v8}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/util/HashMap;)V

    :cond_5
    if-nez v6, :cond_6

    .line 564
    new-instance v6, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    invoke-direct {v6}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;-><init>()V

    .line 565
    iget-object v7, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v7}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_6
    iget-object v5, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->val$unit:Lcom/metamoji/nt/NtUnitController;

    instance-of v5, v5, Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz v5, :cond_7

    .line 570
    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_MSG_IS_RECORDING:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    .line 571
    const-string v7, "%@"

    const-string v8, "%s"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 572
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 578
    :cond_7
    invoke-virtual {v6, v4, v3}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->addLabel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->val$unit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v6, v2}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->setTargetUnit(Lcom/metamoji/nt/NtUnitController;)V

    move-object v2, v6

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 586
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->showInfoView(Z)V

    .line 588
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0, v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$mupdateLabelWithLabelInfo(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    .line 590
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    iget-object v1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;->val$unit:Lcom/metamoji/nt/NtUnitController;

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    :cond_9
    :goto_3
    return-void
.end method
