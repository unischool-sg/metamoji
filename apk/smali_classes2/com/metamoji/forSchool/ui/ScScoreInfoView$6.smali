.class Lcom/metamoji/forSchool/ui/ScScoreInfoView$6;
.super Ljava/lang/Object;
.source "ScScoreInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreInfoView;->updatePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$6;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 454
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$6;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 455
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 460
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getOfflineEditModeInfoView()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    move-result-object v2

    .line 468
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getPersonalModeInfoView()Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    move-result-object v3

    .line 469
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getEditLayerInfoView()Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    if-eqz v2, :cond_2

    .line 470
    invoke-virtual {v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 472
    invoke-virtual {v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getRightMargin()I

    move-result v3

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 473
    invoke-virtual {v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getRealTopMargin()I

    move-result v4

    .line 474
    invoke-virtual {v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getHeight()I

    move-result v2

    add-int/2addr v4, v2

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v4, v2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 475
    invoke-virtual {v3}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 477
    invoke-virtual {v3}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getRightMargin()I

    move-result v2

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v2, v4

    .line 478
    invoke-virtual {v3}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getTopMargin()I

    move-result v4

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v4, v6

    .line 479
    invoke-virtual {v3}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getHeight()I

    move-result v3

    add-int/2addr v4, v3

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v4, v3

    move v3, v2

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    .line 480
    invoke-virtual {v4}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 482
    invoke-virtual {v4}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getRightMargin()I

    move-result v2

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v2

    .line 483
    invoke-virtual {v4}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getTopMargin()I

    move-result v2

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v2, v6

    .line 484
    invoke-virtual {v4}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v2

    goto :goto_2

    .line 488
    :cond_4
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->isShowEditorBars()Z

    move-result v2

    if-nez v2, :cond_5

    const/high16 v2, 0x435e0000    # 222.0f

    .line 490
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    goto :goto_1

    :cond_5
    const/high16 v2, 0x41a00000    # 20.0f

    .line 493
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    :goto_1
    float-to-int v2, v2

    move v3, v2

    .line 495
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v4, v2

    .line 498
    :goto_2
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-ne v2, v3, :cond_6

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eq v2, v4, :cond_7

    .line 499
    :cond_6
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 500
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 501
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$6;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    :cond_7
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getHover()Lcom/metamoji/ui/CustomHoverSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->requestLayout()V

    return-void
.end method
