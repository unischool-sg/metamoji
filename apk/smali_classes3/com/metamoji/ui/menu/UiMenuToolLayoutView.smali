.class public Lcom/metamoji/ui/menu/UiMenuToolLayoutView;
.super Landroid/view/ViewGroup;
.source "UiMenuToolLayoutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static MARGIN:I = 0xa


# instance fields
.field final MARGIN_B:I

.field final MARGIN_L:I

.field final MARGIN_R:I

.field final MARGIN_T:I

.field _anchor:Landroid/graphics/Rect;

.field _anchorView:Landroid/view/View;

.field _context:Landroid/content/Context;

.field _menubase:Lcom/metamoji/ui/CustomMenuView;

.field _paint:Landroid/graphics/Paint;

.field _pallet:Landroid/graphics/Rect;

.field _tmpRect:Landroid/graphics/Rect;

.field _tools:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field _tools_kigyo:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field _tools_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field m_forFullScreen:Z

.field m_needlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/CustomMenuView;Z)V
    .locals 9

    .line 56
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 33
    iput v0, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->MARGIN_L:I

    .line 34
    iput v0, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->MARGIN_T:I

    const/16 v1, 0x8

    .line 35
    iput v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->MARGIN_R:I

    .line 36
    iput v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->MARGIN_B:I

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->m_needlayout:Z

    .line 43
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_anchor:Landroid/graphics/Rect;

    .line 44
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_tmpRect:Landroid/graphics/Rect;

    .line 45
    iput-boolean v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->m_forFullScreen:Z

    const/4 v2, 0x6

    .line 146
    new-array v3, v2, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_ENTRE_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v1

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_FIT_PAPER_WIDTH:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v0

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v8, 0x5

    aput-object v4, v3, v8

    iput-object v3, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_tools:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v3, 0x7

    .line 147
    new-array v3, v3, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_ENTRE_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v1

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_FIT_PAPER_WIDTH:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v5

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v6

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v7

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v0

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v8

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v4, v3, v2

    iput-object v3, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_tools_kigyo:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 150
    new-array v2, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_ENTRE_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v3, v2, v1

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_FIT_PAPER_WIDTH:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v3, v2, v5

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v3, v2, v6

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v3, v2, v7

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_tools_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v5, v0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->setWillNotDraw(Z)V

    .line 59
    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_menubase:Lcom/metamoji/ui/CustomMenuView;

    .line 61
    iput-boolean p3, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->m_forFullScreen:Z

    .line 62
    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView;->getAnchorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_anchorView:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->init()V

    return-void
.end method

.method private makepallet()V
    .locals 13

    .line 154
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x42200000    # 40.0f

    .line 161
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    .line 165
    iget-object v3, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_tools_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 169
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v6, v4, :cond_a

    .line 171
    aget-object v8, v3, v6

    .line 172
    invoke-static {v8}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v9

    .line 173
    iget-boolean v10, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->m_forFullScreen:Z

    if-nez v10, :cond_4

    .line 174
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v8, v10, :cond_1

    goto/16 :goto_2

    .line 177
    :cond_1
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v8, v10, :cond_2

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v10

    sget-object v11, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v10, v11}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_2

    .line 180
    :cond_2
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 181
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v8, v10, :cond_5

    goto :goto_2

    .line 185
    :cond_3
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v8, v10, :cond_5

    goto :goto_2

    .line 190
    :cond_4
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v8, v10, :cond_9

    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v8, v10, :cond_9

    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v8, v10, :cond_9

    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v8, v10, :cond_5

    goto :goto_2

    .line 194
    :cond_5
    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v8, v10, :cond_6

    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v8, v10, :cond_6

    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v8, v10, :cond_6

    sget-object v10, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v8, v10, :cond_7

    :cond_6
    int-to-float v7, v7

    const/high16 v10, 0x41200000    # 10.0f

    .line 196
    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v10

    add-float/2addr v7, v10

    float-to-int v7, v7

    .line 198
    :cond_7
    new-instance v10, Lcom/metamoji/ui/UiHoverButton;

    iget-object v11, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_context:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/metamoji/ui/UiHoverButton;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_8

    .line 200
    invoke-virtual {v1, v8}, Lcom/metamoji/ui/flexible/FxManager;->isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v11

    .line 201
    invoke-virtual {v10, v11}, Lcom/metamoji/ui/UiHoverButton;->setEnabled(Z)V

    .line 204
    :cond_8
    invoke-static {v2, v2, v9}, Lcom/metamoji/ui/HoverCm;->makeImage(III)Landroid/graphics/Bitmap;

    move-result-object v9

    const/16 v11, 0x7f

    const/16 v12, 0xff

    .line 205
    invoke-static {v11, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-static {v9, v11}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 207
    invoke-direct {p0, v10, v9, v11}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->setButtonImage(Lcom/metamoji/ui/UiHoverButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 209
    invoke-virtual {v10, v2, v2}, Lcom/metamoji/ui/UiHoverButton;->setSize(II)V

    .line 210
    invoke-virtual {v10, v5}, Lcom/metamoji/ui/UiHoverButton;->setVisibility(I)V

    .line 211
    invoke-virtual {v10, p0}, Lcom/metamoji/ui/UiHoverButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v10, v8}, Lcom/metamoji/ui/UiHoverButton;->setTag(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0, v10}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->addView(Landroid/view/View;)V

    add-int/2addr v7, v2

    :cond_9
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 217
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v7

    iput v1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private setButtonImage(Lcom/metamoji/ui/UiHoverButton;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 221
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 225
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 226
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 227
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p3, 0x10100a7

    const v0, 0x101009e

    .line 230
    filled-new-array {p3, v0}, [I

    move-result-object p3

    invoke-virtual {v1, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p2, -0x10100a7

    .line 231
    filled-new-array {p2, v0}, [I

    move-result-object p3

    invoke-virtual {v1, p3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p3, -0x101009e

    .line 232
    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-virtual {v1, p2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/UiHoverButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 279
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method ExecCommandWithIndex(Lcom/metamoji/nt/NtCommand;I)V
    .locals 2

    .line 273
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 274
    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method init()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_pallet:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_pallet:Landroid/graphics/Rect;

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->makepallet()V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 72
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xd2

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_menubase:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 243
    sget-object v0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView$1;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 263
    :pswitch_0
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 264
    const-string v0, "AnchorView"

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_anchorView:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_NAVIGATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 260
    :pswitch_1
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_HELP_MODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 257
    :pswitch_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->showEditorBars()V

    return-void

    .line 254
    :pswitch_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->hideEditorBars()V

    return-void

    .line 251
    :pswitch_4
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 248
    :pswitch_5
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_ZOOM_FIT_PAPER_WIDTH:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 245
    :pswitch_6
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_ZOOM_ENTIRE_PAPER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v4, v1, v0

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_pallet:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v6, v1, v0

    iget-object v7, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p2, 0x40800000    # 4.0f

    .line 93
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    float-to-int p3, p3

    .line 94
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 97
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    instance-of v2, v1, Lcom/metamoji/ui/UiHoverButton;

    if-eqz v2, :cond_2

    .line 99
    move-object v2, v1

    check-cast v2, Lcom/metamoji/ui/UiHoverButton;

    .line 100
    invoke-virtual {v2}, Lcom/metamoji/ui/UiHoverButton;->get_layoutheight()F

    move-result v3

    float-to-int v3, v3

    .line 101
    invoke-virtual {v2}, Lcom/metamoji/ui/UiHoverButton;->get_layoutwidth()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, p2

    add-int/2addr v3, p3

    .line 104
    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    const/4 p2, 0x1

    if-ne v0, p2, :cond_1

    int-to-float p2, v2

    .line 107
    sget v1, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->MARGIN:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_1

    :cond_1
    move p2, v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_pallet:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 124
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->_pallet:Landroid/graphics/Rect;

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->getChildCount()I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    .line 131
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 133
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 134
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 135
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 136
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42200000    # 40.0f

    .line 140
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x6

    if-ge v3, p2, :cond_2

    .line 141
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    mul-int/lit8 v3, p1, 0x6

    .line 143
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;->setMeasuredDimension(II)V

    return-void
.end method
