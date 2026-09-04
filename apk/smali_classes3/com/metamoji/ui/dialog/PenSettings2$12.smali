.class Lcom/metamoji/ui/dialog/PenSettings2$12;
.super Ljava/lang/Object;
.source "PenSettings2.java"

# interfaces
.implements Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PenSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PenSettings2;

.field final synthetic val$mDialog:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PenSettings2;Landroid/view/View;)V
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

    .line 448
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->val$mDialog:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 14

    .line 451
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 452
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v2, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v3, v3, Lcom/metamoji/ui/dialog/PenSettings2;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v3}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v3

    iget-object v4, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-boolean v4, v4, Lcom/metamoji/ui/dialog/PenSettings2;->mInitializedInkColorsAndOpacity:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mbackupInkColorsAndOpacity(Lcom/metamoji/ui/dialog/PenSettings2;Ljava/util/List;FLjava/lang/String;Z)V

    .line 453
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iput p1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mCurrentPenType:I

    .line 455
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeStd1:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    const-string/jumbo v4, "standard"

    const-string v6, "markerpen"

    const/4 v7, 0x4

    const-string v8, "fountainpen"

    const-string v9, "calligraphy"

    const/4 v10, 0x2

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eq p1, v1, :cond_d

    if-ne p1, v3, :cond_1

    goto/16 :goto_2

    .line 480
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeMrk1:I

    if-ne p1, v1, :cond_4

    .line 482
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_2

    .line 483
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v11}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 485
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_3

    .line 486
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v11}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 496
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v12, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 497
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v5, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 498
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v10, v5}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 499
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v2, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 500
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v7, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    move-object p1, v6

    goto/16 :goto_3

    .line 501
    :cond_4
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeCal1:I

    if-ne p1, v1, :cond_7

    .line 503
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_5

    .line 504
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v11}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 506
    :cond_5
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_6

    .line 507
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v12}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 517
    :cond_6
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v12, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 518
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v5, v5}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 519
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v10, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 524
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowWheelPage(Lcom/metamoji/ui/dialog/PenSettings2;)V

    move-object p1, v9

    goto/16 :goto_3

    .line 525
    :cond_7
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeFnt1:I

    if-ne p1, v1, :cond_a

    .line 527
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_8

    .line 528
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v11}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 530
    :cond_8
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_9

    .line 531
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v11}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 541
    :cond_9
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v12, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 542
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v5, v5}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 543
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v10, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 548
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowWheelPage(Lcom/metamoji/ui/dialog/PenSettings2;)V

    :goto_1
    move-object p1, v8

    goto :goto_3

    .line 549
    :cond_a
    sget v1, Lcom/metamoji/noteanytime/R$id;->pentypeBrs1:I

    if-ne p1, v1, :cond_10

    .line 551
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_b

    .line 552
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v11}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 554
    :cond_b
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_c

    .line 555
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v11}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 565
    :cond_c
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v12, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 566
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v5, v5}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 567
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v10, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 572
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowWheelPage(Lcom/metamoji/ui/dialog/PenSettings2;)V

    goto :goto_1

    :cond_d
    :goto_2
    if-eq p1, v3, :cond_e

    .line 457
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_e

    .line 458
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenStandard:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v12}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 464
    :cond_e
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_f

    .line 465
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v11}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 475
    :cond_f
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v12, v5}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 476
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v5, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 477
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v10, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 478
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v2, v5}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    .line 479
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1, v7, v12}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$msetShowPage(Lcom/metamoji/ui/dialog/PenSettings2;IZ)V

    :cond_10
    move-object p1, v4

    .line 574
    :goto_3
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->isPageHidden(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 575
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setVisibleHeadPage()V

    .line 577
    :cond_11
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->canPagePrev()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v12

    goto :goto_4

    :cond_12
    move v1, v7

    .line 578
    :goto_4
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/PenSettings2;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->canPageNext()Z

    move-result v2

    if-eqz v2, :cond_13

    move v7, v12

    :cond_13
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 580
    iget-object v11, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->val$mDialog:Landroid/view/View;

    sget v13, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/View;->setAlpha(F)V

    .line 582
    :cond_14
    iget-object v11, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->val$mDialog:Landroid/view/View;

    sget v13, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v1, :cond_15

    .line 584
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->val$mDialog:Landroid/view/View;

    sget v13, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_15
    if-nez v7, :cond_16

    .line 587
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->val$mDialog:Landroid/view/View;

    sget v13, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 589
    :cond_16
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->val$mDialog:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    if-nez v7, :cond_17

    .line 591
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->val$mDialog:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 594
    :cond_17
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/PenSettings2;->getResources()Landroid/content/res/Resources;

    .line 596
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v1, :cond_18

    .line 597
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mGroupPenCalligraphy:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v3

    .line 599
    :cond_18
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 600
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-ne v10, v3, :cond_1b

    .line 601
    :cond_19
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenAngle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mStylePenRate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 602
    :cond_1a
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v2, v1, Lcom/metamoji/ui/dialog/PenSettings2;->mButtonInkColor:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1, v2, v5}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mupdateStyleView(Lcom/metamoji/ui/dialog/PenSettings2;Lcom/metamoji/ui/common/UiButton;Z)V

    :cond_1b
    if-eqz v0, :cond_1c

    .line 609
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    :cond_1c
    if-eqz v0, :cond_1d

    .line 610
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1d
    if-eqz v0, :cond_1f

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    move v1, v5

    goto :goto_5

    :cond_1f
    move v1, v12

    :goto_5
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    move v12, v5

    :cond_21
    if-ne v1, v12, :cond_23

    if-eqz v0, :cond_22

    .line 611
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_22
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 614
    :cond_23
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 615
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 616
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_24

    .line 618
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    new-instance v1, Lcom/metamoji/ui/dialog/PenSettings2$12$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/PenSettings2$12$1;-><init>(Lcom/metamoji/ui/dialog/PenSettings2$12;)V

    iput-object v1, v0, Lcom/metamoji/ui/dialog/PenSettings2;->mInkColorsNormal:Ljava/util/ArrayList;

    .line 624
    :cond_24
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mrestoreInkColorsAndOpacity(Lcom/metamoji/ui/dialog/PenSettings2;Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$mupdateSample(Lcom/metamoji/ui/dialog/PenSettings2;)V

    .line 626
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$12;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PenSettings2;->-$$Nest$minitWeightPreset(Lcom/metamoji/ui/dialog/PenSettings2;)V

    return-void
.end method
