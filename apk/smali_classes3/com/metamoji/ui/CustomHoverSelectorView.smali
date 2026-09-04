.class public Lcom/metamoji/ui/CustomHoverSelectorView;
.super Landroid/view/ViewGroup;
.source "CustomHoverSelectorView.java"


# instance fields
.field private _collaboBarWidth:I

.field private _context:Landroid/content/Context;

.field private _exitFullScreenButton:Landroid/view/View;

.field private _hover:Lcom/metamoji/ui/HoverSelectorView;

.field private _hoverRect:Landroid/graphics/Rect;

.field private _layerInfoLeft:I

.field private _mutl:Lcom/metamoji/ui/menu/MenuUtils;

.field private _pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

.field private _sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

.field private _sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

.field private _showBar:Lcom/metamoji/ui/ShowBarButton;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fget_pallet(Lcom/metamoji/ui/CustomHoverSelectorView;)Lcom/metamoji/ui/UiTinyPalletViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    const/4 p2, -0x1

    .line 46
    iput p2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_layerInfoLeft:I

    const/4 p2, 0x0

    .line 49
    iput-object p2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    .line 50
    iput-object p2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    .line 52
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hoverRect:Landroid/graphics/Rect;

    .line 53
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    .line 58
    invoke-direct {p0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calcLayerInfoRect()V
    .locals 3

    .line 180
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    const/4 v1, -0x1

    .line 186
    iput v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_layerInfoLeft:I

    .line 188
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getEditLayerInfoView()Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 191
    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-static {v2, v1, p0}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    .line 192
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_layerInfoLeft:I

    .line 195
    :cond_2
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getPersonalModeInfoView()Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 198
    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-static {v2, v1, p0}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    .line 199
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_layerInfoLeft:I

    .line 202
    :cond_3
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getOfflineEditModeInfoView()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 204
    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 205
    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-static {v1, v0, p0}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    .line 206
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_layerInfoLeft:I

    :cond_4
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 62
    iput-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_context:Landroid/content/Context;

    .line 64
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 65
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 69
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43a00000    # 320.0f

    div-float v1, v0, v1

    .line 73
    new-instance v2, Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/metamoji/ui/menu/MenuUtils;-><init>(Landroid/content/Context;FF)V

    iput-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 75
    new-instance v0, Lcom/metamoji/ui/ShowBarButton;

    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/ShowBarButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    const/4 v1, 0x4

    .line 76
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ShowBarButton;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomHoverSelectorView;->createExitFullScreenButton()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_exitFullScreenButton:Landroid/view/View;

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_exitFullScreenButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->addView(Landroid/view/View;)V

    .line 86
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-direct {p1, v0, v2}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;-><init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V

    iput-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    .line 90
    invoke-virtual {p1, v1}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->setClickable(Z)V

    .line 92
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->addView(Landroid/view/View;)V

    .line 101
    :cond_0
    new-instance p1, Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-direct {p1, v0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;-><init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V

    iput-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    const/16 v0, 0x8

    .line 102
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->addView(Landroid/view/View;)V

    .line 105
    new-instance p1, Lcom/metamoji/ui/HoverSelectorView;

    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/metamoji/ui/HoverSelectorView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    .line 106
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateSharePalletForSchool(Z)V
    .locals 5

    .line 444
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 448
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    invoke-virtual {v1}, Lcom/metamoji/ui/ShowBarButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->update()V

    .line 458
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    invoke-virtual {v0, v2}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_5

    .line 462
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 466
    :cond_4
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->editing_area:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 467
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 468
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    .line 470
    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 471
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->calcMyLayout(Landroid/graphics/Rect;)V

    .line 472
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->layout(IIII)V

    .line 473
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    :cond_5
    :goto_0
    return-void

    .line 476
    :cond_6
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->setVisibility(I)V

    .line 477
    iput v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    return-void
.end method


# virtual methods
.method public CreateCenterButtonImage()Lcom/metamoji/cm/Blob;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 305
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/HoverSelectorView;->CreateCenterButtonImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 309
    :cond_1
    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    return-object v0
.end method

.method createExitFullScreenButton()Landroid/view/View;
    .locals 7

    .line 519
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 520
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x0

    .line 521
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 522
    new-instance v1, Lcom/metamoji/ui/CustomHoverSelectorView$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/CustomHoverSelectorView$2;-><init>(Lcom/metamoji/ui/CustomHoverSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x42200000    # 40.0f

    .line 531
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 533
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_show:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x79

    const/16 v4, 0x80

    const/16 v5, 0xff

    const/16 v6, 0x75

    .line 534
    invoke-static {v5, v6, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v2, v3}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->fullscreen_btn_base:I

    invoke-static {v3}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 536
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->fullscreen_btn_base_p:I

    invoke-static {v4}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 537
    invoke-static {v3, v2, v1, v1}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 538
    invoke-static {v4, v2, v1, v1}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 540
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 541
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 542
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 544
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v2, -0x10100a7

    .line 545
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, 0x10100a7

    .line 546
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 548
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getHoverPosition(Landroid/graphics/Rect;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HoverSelectorView;->getHoverPosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getShowBarBtn()Landroid/view/View;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    return-object v0
.end method

.method public getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    return-object v0
.end method

.method public get_restorData()[I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/HoverSelectorView;->get_restorData()[I

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 270
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HoverSelectorView;->setVisibility(I)V

    return-void
.end method

.method public hideShowBarBtn()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ShowBarButton;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_exitFullScreenButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isShow()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/HoverSelectorView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    if-ne p1, v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/HoverSelectorView;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    .line 246
    :cond_1
    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->getFxId(Lcom/metamoji/nt/NtCommand;)Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object p1

    .line 247
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_2

    :goto_0
    return-void

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->notifyEnableCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Z)V

    return-void
.end method

.method public notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/HoverSelectorView;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 112
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 116
    :cond_0
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {v6}, Lcom/metamoji/ui/HoverSelectorView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 117
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 118
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->right:I

    .line 119
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 120
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 121
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Lcom/metamoji/ui/CustomHoverSelectorView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 122
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    iget-object v8, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hoverRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v9}, Lcom/metamoji/ui/HoverSelectorView;->preLayout(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 123
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    iget-object v8, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hoverRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hoverRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hoverRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hoverRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/metamoji/ui/HoverSelectorView;->layout(IIII)V

    .line 125
    :cond_1
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    invoke-virtual {v6}, Lcom/metamoji/ui/ShowBarButton;->getVisibility()I

    move-result v6

    const/high16 v9, 0x42200000    # 40.0f

    const/high16 v10, 0x40800000    # 4.0f

    if-eq v6, v7, :cond_3

    .line 126
    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    .line 127
    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    const/high16 v12, 0x42400000    # 48.0f

    .line 131
    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    .line 133
    iget v13, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    .line 134
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v13, 0x0

    .line 137
    :cond_2
    iget-object v14, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    sub-int v15, v3, v6

    sub-int/2addr v15, v11

    sub-int/2addr v15, v13

    sub-int/2addr v15, v12

    add-int v8, v2, v11

    sub-int v11, v3, v11

    sub-int/2addr v11, v13

    sub-int/2addr v11, v12

    add-int/2addr v6, v8

    invoke-virtual {v14, v15, v8, v11, v6}, Lcom/metamoji/ui/ShowBarButton;->layout(IIII)V

    .line 141
    :cond_3
    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_exitFullScreenButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_5

    .line 142
    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    .line 143
    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    .line 145
    iget v9, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    .line 146
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v9, 0x0

    .line 149
    :cond_4
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_exitFullScreenButton:Landroid/view/View;

    sub-int v11, v3, v6

    sub-int/2addr v11, v8

    sub-int/2addr v11, v9

    add-int v12, v2, v8

    sub-int v8, v3, v8

    sub-int/2addr v8, v9

    add-int/2addr v6, v12

    invoke-virtual {v5, v11, v12, v8, v6}, Landroid/view/View;->layout(IIII)V

    .line 152
    :cond_5
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/metamoji/ui/UiSharePalletViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_6

    .line 153
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/UiSharePalletViewGroup;->calcMyLayout(Landroid/graphics/Rect;)V

    .line 155
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v11, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v8, v9, v11}, Lcom/metamoji/ui/UiSharePalletViewGroup;->layout(IIII)V

    .line 156
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    .line 160
    :cond_6
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_7

    .line 161
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->calcMyLayout(Landroid/graphics/Rect;)V

    .line 163
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    iget-object v6, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v11, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v8, v9, v11}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->layout(IIII)V

    .line 164
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    .line 167
    :cond_7
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v5}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_9

    .line 168
    iget v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    sub-int/2addr v3, v5

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v3, v5

    .line 169
    iget v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_layerInfoLeft:I

    if-lez v5, :cond_8

    if-ge v5, v3, :cond_8

    .line 170
    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v5, v3

    .line 172
    :cond_8
    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    iget-object v1, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget-object v2, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->calcMyLayout(Landroid/graphics/Rect;)V

    .line 174
    iget-object v1, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget-object v2, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->layout(IIII)V

    :cond_9
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 227
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 228
    invoke-direct {p0}, Lcom/metamoji/ui/CustomHoverSelectorView;->calcLayerInfoRect()V

    .line 229
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomHoverSelectorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 231
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/CustomHoverSelectorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 215
    iget-object p3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 216
    iget-object p3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 217
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 218
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 219
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 220
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    iget-object p2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hoverRect:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/ui/HoverSelectorView;->preLayout(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 221
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {p1}, Lcom/metamoji/ui/HoverSelectorView;->updateViewImage()V

    return-void
.end method

.method public reLayoutTinyPallet()V
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 368
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->editing_area:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 373
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 374
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 375
    iget v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    .line 376
    iget-object v3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->calcMyLayout(Landroid/graphics/Rect;)V

    .line 378
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/HoverSelectorView;->refresh()V

    return-void
.end method

.method public resume_restorData([I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HoverSelectorView;->resume_restorData([I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HoverSelectorView;->setVisibility(I)V

    return-void
.end method

.method public showShowBarBtn()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ShowBarButton;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_exitFullScreenButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public tinyPalletHide()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->hide()V

    :cond_0
    return-void
.end method

.method public tinyPalletShow()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_pallet:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomHoverSelectorView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/CustomHoverSelectorView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/CustomHoverSelectorView$1;-><init>(Lcom/metamoji/ui/CustomHoverSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateBandButtonImage()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/HoverSelectorView;->updateBandButtonImage()V

    return-void
.end method

.method public updateInfoSharePallet(Z)V
    .locals 0

    .line 383
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePalletForSchool:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->updateInfo()V

    :cond_0
    return-void
.end method

.method public updatePaddingRight(I)V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HoverSelectorView;->updatePaddingRight(I)V

    .line 487
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {p1}, Lcom/metamoji/ui/HoverSelectorView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomHoverSelectorView;->requestLayout()V

    .line 489
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {p1}, Lcom/metamoji/ui/HoverSelectorView;->refresh()V

    :cond_0
    return-void
.end method

.method public updatePaddingTop(ZI)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/HoverSelectorView;->updatePaddingTop(ZI)V

    .line 511
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {p1}, Lcom/metamoji/ui/HoverSelectorView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomHoverSelectorView;->requestLayout()V

    .line 513
    iget-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_hover:Lcom/metamoji/ui/HoverSelectorView;

    invoke-virtual {p1}, Lcom/metamoji/ui/HoverSelectorView;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSharePallet(Z)V
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    if-eqz v0, :cond_3

    .line 403
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_showBar:Lcom/metamoji/ui/ShowBarButton;

    invoke-virtual {v1}, Lcom/metamoji/ui/ShowBarButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->update(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    .line 414
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiSharePalletViewGroup;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_3

    .line 418
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 422
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->editing_area:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 423
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 424
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 426
    iget-object v3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiSharePalletViewGroup;->calcMyLayout(Landroid/graphics/Rect;)V

    .line 428
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    iget-object v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/metamoji/ui/UiSharePalletViewGroup;->layout(IIII)V

    .line 429
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_sharePallet:Lcom/metamoji/ui/UiSharePalletViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiSharePalletViewGroup;->setVisibility(I)V

    .line 433
    iput v2, p0, Lcom/metamoji/ui/CustomHoverSelectorView;->_collaboBarWidth:I

    .line 440
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->updateSharePalletForSchool(Z)V

    return-void
.end method
