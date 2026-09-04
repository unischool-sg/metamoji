.class public Lcom/metamoji/ui/CustomMenuView;
.super Landroid/widget/FrameLayout;
.source "CustomMenuView.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/CustomMenuView$ViewState;,
        Lcom/metamoji/ui/CustomMenuView$MenuDirection;,
        Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;,
        Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;,
        Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;,
        Lcom/metamoji/ui/CustomMenuView$MenuItemView;,
        Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;
    }
.end annotation


# instance fields
.field private FONT_SIZE:F

.field private _anchor:Landroid/graphics/Rect;

.field _anchorView:Landroid/view/View;

.field _beforSubMenu:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

.field private _context:Landroid/content/Context;

.field _density:F

.field _densitydpi:F

.field _displayArea:Landroid/graphics/Rect;

.field _fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field private _maxVisibleItemCount:I

.field private _menuCloseEventListener:Lcom/metamoji/ui/MenuCloseEventListener;

.field _menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

.field _menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

.field private _menuEventListener:Lcom/metamoji/ui/MenuEventListener;

.field _menuPoint:Landroid/graphics/Point;

.field _menuPush:Z

.field _mutl:Lcom/metamoji/ui/menu/MenuUtils;

.field private _normalstring:Ljava/lang/String;

.field _scrollGesture:Landroid/view/GestureDetector;

.field _scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

.field private _tempRect:Landroid/graphics/Rect;

.field private _tempRect2:Landroid/graphics/Rect;

.field private _viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

.field _viewgroup:Lcom/metamoji/ui/CustomMenuView;

.field private _visibleItemIndex:I

.field _wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

.field private mOnCustomGestureListener:Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;

.field private mOnCustomTouchListener:Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

.field private m_backButton:Landroid/widget/ImageButton;

.field private m_balloonPaint:Landroid/graphics/Paint;

.field private m_balloonPath:Landroid/graphics/Path;

.field private m_contextcount:I

.field private m_contexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/menu/UiContextMenuViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private m_currentIndex:I

.field private m_menuIndex:I

.field private m_menus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_mores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_titleArea:Landroid/graphics/Rect;

.field private m_titleBaseLinePos:I

.field private m_titlePaint:Landroid/graphics/Paint;

.field private m_titleRect:Landroid/graphics/Rect;

.field private m_titleSepArea:Landroid/graphics/Rect;

.field private m_titleSepBitmap:Landroid/graphics/Bitmap;

.field private m_titleSepWidth:I

.field private m_titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_visibleDirection:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

.field paint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$fgetFONT_SIZE(Lcom/metamoji/ui/CustomMenuView;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/CustomMenuView;->FONT_SIZE:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_context(Lcom/metamoji/ui/CustomMenuView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_menuEventListener(Lcom/metamoji/ui/CustomMenuView;)Lcom/metamoji/ui/MenuEventListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalstring(Lcom/metamoji/ui/CustomMenuView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/CustomMenuView;->_normalstring:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monTouch(Lcom/metamoji/ui/CustomMenuView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/CustomMenuView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 59
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

    .line 60
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    .line 61
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    .line 64
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPoint:Landroid/graphics/Point;

    .line 91
    sget-object v1, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 101
    iput v1, p0, Lcom/metamoji/ui/CustomMenuView;->FONT_SIZE:F

    .line 103
    iput-object p0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    .line 120
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleArea:Landroid/graphics/Rect;

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepArea:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 125
    iput v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepWidth:I

    .line 128
    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    iput-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 129
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    .line 131
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_tempRect:Landroid/graphics/Rect;

    .line 132
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_tempRect2:Landroid/graphics/Rect;

    .line 135
    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_UP:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    iput-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->m_visibleDirection:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    .line 179
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

    .line 1184
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    .line 1617
    iput-boolean v1, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPush:Z

    .line 152
    invoke-direct {p0, p1}, Lcom/metamoji/ui/CustomMenuView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-object p2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 59
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

    .line 60
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    .line 61
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    .line 64
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPoint:Landroid/graphics/Point;

    .line 91
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    const/high16 v0, 0x41f00000    # 30.0f

    .line 101
    iput v0, p0, Lcom/metamoji/ui/CustomMenuView;->FONT_SIZE:F

    .line 103
    iput-object p0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleArea:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepWidth:I

    .line 128
    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    .line 131
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_tempRect:Landroid/graphics/Rect;

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_tempRect2:Landroid/graphics/Rect;

    .line 135
    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_UP:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_visibleDirection:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    .line 179
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

    .line 1184
    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    .line 1617
    iput-boolean v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPush:Z

    .line 147
    invoke-direct {p0, p1}, Lcom/metamoji/ui/CustomMenuView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object p2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 59
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

    .line 60
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    .line 61
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    .line 64
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPoint:Landroid/graphics/Point;

    .line 91
    sget-object p3, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 99
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    const/high16 p3, 0x41f00000    # 30.0f

    .line 101
    iput p3, p0, Lcom/metamoji/ui/CustomMenuView;->FONT_SIZE:F

    .line 103
    iput-object p0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    .line 120
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleArea:Landroid/graphics/Rect;

    .line 121
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    .line 124
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepArea:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 125
    iput p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepWidth:I

    .line 128
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_tempRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_tempRect2:Landroid/graphics/Rect;

    .line 135
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_UP:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_visibleDirection:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    .line 179
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

    .line 1184
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    .line 1617
    iput-boolean p3, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPush:Z

    .line 142
    invoke-direct {p0, p1}, Lcom/metamoji/ui/CustomMenuView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private CreateMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;II)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "II)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v6, p4

    move p4, v0

    .line 480
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_9

    .line 481
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/metamoji/ui/UiMenuItem;

    .line 483
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MenuKind;->SEPARATOR:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne v1, v2, :cond_0

    .line 484
    new-instance v1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    sget-object v7, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    move-object v2, p0

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;-><init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)V

    .line 485
    iget-object p3, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {p3, v1, v6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_0
    move-object v2, p0

    move v5, p3

    .line 486
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p3

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p3, v1, :cond_1

    .line 487
    new-instance v1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    iget-object v3, v2, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    sget-object v7, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;-><init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)V

    .line 488
    invoke-virtual {v1, p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setMenuEventListener(Lcom/metamoji/ui/MenuEventListener;)V

    .line 489
    iget-object p3, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {p3, v1, v6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 490
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p3

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p3, v1, :cond_2

    .line 491
    new-instance v1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    iget-object v3, v2, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    sget-object v7, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASCHECK:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;-><init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)V

    .line 492
    invoke-virtual {v1, p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setMenuEventListener(Lcom/metamoji/ui/MenuEventListener;)V

    .line 493
    iget-object p3, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {p3, v1, v6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 494
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p3

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->UNDO_REDO_COMB:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p3, v1, :cond_3

    .line 495
    new-instance v1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    iget-object v3, v2, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    sget-object v7, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->UNDO_REDO_COMBO_MENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;-><init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)V

    .line 496
    invoke-virtual {v1, p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setMenuEventListener(Lcom/metamoji/ui/MenuEventListener;)V

    .line 497
    iget-object p3, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {p3, v1, v6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;I)V

    .line 498
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p3

    .line 499
    invoke-virtual {p3}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p3

    .line 500
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p3, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p3

    if-nez p3, :cond_8

    const/high16 p3, 0x3f000000    # 0.5f

    .line 501
    invoke-virtual {v1, p3}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setAlpha(F)V

    .line 502
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setEnabled(Z)V

    goto :goto_1

    .line 504
    :cond_3
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p3

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p3, v1, :cond_4

    .line 505
    new-instance p3, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;

    iget-object v1, v2, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-direct {p3, v1, p0, v0}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;-><init>(Landroid/content/Context;Lcom/metamoji/ui/CustomMenuView;Z)V

    .line 506
    iget-object v1, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v1, p3, v6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 507
    :cond_4
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p3

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->F_TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p3, v1, :cond_5

    .line 508
    new-instance p3, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;

    iget-object v1, v2, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {p3, v1, p0, v3}, Lcom/metamoji/ui/menu/UiMenuToolLayoutView;-><init>(Landroid/content/Context;Lcom/metamoji/ui/CustomMenuView;Z)V

    .line 509
    iget-object v1, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v1, p3, v6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 510
    :cond_5
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p3

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->F_MODES:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p3, v1, :cond_6

    .line 511
    new-instance p3, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;

    iget-object v1, v2, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-direct {p3, v1, p0}, Lcom/metamoji/ui/menu/UiMenuModeLayoutView;-><init>(Landroid/content/Context;Lcom/metamoji/ui/CustomMenuView;)V

    .line 512
    iget-object v1, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v1, p3, v6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 513
    :cond_6
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p3

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->VERSION_INFO:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p3, v1, :cond_7

    .line 514
    new-instance p3, Lcom/metamoji/ui/menu/UiMenuVersionView;

    iget-object v1, v2, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/metamoji/ui/menu/UiMenuVersionView;-><init>(Landroid/content/Context;)V

    .line 515
    iget-object v1, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v1, p3, v6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 516
    :cond_7
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p3

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->CUSTOM_VIEW:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p3, v1, :cond_8

    .line 517
    iget-object p3, v2, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem;->get_customView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;)V

    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p4, p4, 0x1

    move p3, v5

    goto/16 :goto_0

    :cond_9
    move-object v2, p0

    return v6
.end method

.method private ShowContextMenuBody(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 763
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-eq v0, v1, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    .line 769
    :cond_1
    iput-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    .line 770
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    .line 771
    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_menuCloseEventListener:Lcom/metamoji/ui/MenuCloseEventListener;

    const/4 p2, 0x0

    .line 772
    iput p2, p0, Lcom/metamoji/ui/CustomMenuView;->m_currentIndex:I

    .line 773
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_contexts:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 775
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iput p2, p3, Landroid/graphics/Rect;->left:I

    .line 776
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 777
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->getWidth()I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 778
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->getHeight()I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 779
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 780
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/CustomMenuView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 781
    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    neg-int p3, p3

    invoke-virtual {p4, v0, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 784
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 785
    iput p2, p3, Landroid/graphics/Rect;->left:I

    .line 786
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 787
    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p4, p4, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_W:F

    float-to-int p4, p4

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 788
    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p4, p4, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_BODY_H:F

    float-to-int p4, p4

    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 791
    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->CTX_HIGHT:F

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_SPACE:F

    add-float/2addr p4, v0

    .line 792
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v1, v1, Lcom/metamoji/ui/menu/MenuUtils;->CTX_HIGHT:F

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v2, v2, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v2, v2, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_SPACE:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 794
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p4, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 795
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_UP:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_visibleDirection:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    goto :goto_0

    .line 797
    :cond_2
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->MMJUI_CONTEXTMENU_DIRECTION_DOWN:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_visibleDirection:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    .line 800
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v1, v1, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_W:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v3, v3, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_W:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 801
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_visibleDirection:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->ordinal()I

    move-result v0

    .line 803
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 809
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_3

    .line 810
    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_W:F

    div-float/2addr v0, v2

    sub-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 811
    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    sub-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 813
    :cond_3
    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    sub-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 803
    :cond_4
    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_IMAGE_OFFSET_Y:F

    sub-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 804
    iget p4, p3, Landroid/graphics/Rect;->top:I

    if-gez p4, :cond_5

    .line 805
    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 817
    :cond_5
    :goto_1
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_W:F

    float-to-int v0, v0

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 818
    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v0, v0, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    float-to-int v0, v0

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 819
    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {p4, p3}, Lcom/metamoji/ui/menu/MenuUtils;->set_arrowRect(Landroid/graphics/Rect;)V

    .line 821
    invoke-direct {p0, p1}, Lcom/metamoji/ui/CustomMenuView;->composeMenu(Ljava/util/ArrayList;)V

    .line 823
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_contexts:Ljava/util/ArrayList;

    iget p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_currentIndex:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;

    .line 824
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->setVisibility(I)V

    .line 826
    sget-object p1, Lcom/metamoji/ui/CustomMenuView$ViewState;->CONTEXTOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 827
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->popupVisibleChanged()V

    :cond_6
    :goto_2
    return-void
.end method

.method private composeMenu(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 852
    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eqz v1, :cond_11

    .line 857
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v2, v2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MORE_WIDTH:F

    .line 858
    iget-object v3, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v3, v3, Lcom/metamoji/ui/menu/MenuUtils;->CTX_MARGIN:F

    .line 859
    invoke-direct {v0}, Lcom/metamoji/ui/CustomMenuView;->ismobile()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    .line 864
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 865
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 866
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    new-instance v7, Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 869
    iget-object v8, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v8, v8, Lcom/metamoji/ui/menu/MenuUtils;->CTX_HIGHT:F

    iget-object v9, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v9, v9, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v9, v9, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_SPACE:F

    add-float/2addr v8, v9

    .line 871
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 873
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_3

    .line 874
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/ui/UiMenuItem;

    .line 875
    new-instance v5, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    iget-object v10, v0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-direct {v5, v0, v10, v13}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;-><init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;)V

    .line 876
    invoke-virtual {v5, v0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setMenuEventListener(Lcom/metamoji/ui/MenuEventListener;)V

    .line 877
    sget-object v10, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v5, v10}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->desiredSizeByStyle(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result v10

    add-int/2addr v12, v10

    int-to-float v13, v12

    sub-float v16, v9, v2

    cmpl-float v16, v13, v16

    if-ltz v16, :cond_2

    add-int/lit8 v14, v11, 0x1

    .line 880
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v14, v15, :cond_1

    cmpl-float v13, v13, v9

    if-gez v13, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    .line 883
    :cond_1
    new-instance v12, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    iget-object v13, v0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-direct {v12, v0, v13, v14}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;-><init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;)V

    .line 884
    invoke-virtual {v12, v0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setMenuEventListener(Lcom/metamoji/ui/MenuEventListener;)V

    .line 886
    iget-object v13, v0, Lcom/metamoji/ui/CustomMenuView;->m_mores:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 891
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v10

    .line 894
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 898
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v14, 0x1

    if-le v1, v14, :cond_6

    .line 899
    new-instance v1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-direct {v1, v0, v2, v14}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;-><init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;)V

    .line 900
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setMenuEventListener(Lcom/metamoji/ui/MenuEventListener;)V

    .line 901
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->m_mores:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 903
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 904
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 906
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v6, :cond_4

    .line 908
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 909
    invoke-virtual {v11}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->get_realrect()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    int-to-float v5, v2

    cmpl-float v5, v5, v10

    if-lez v5, :cond_5

    float-to-int v2, v10

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 917
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/metamoji/ui/CustomMenuView;->m_contextcount:I

    const/4 v1, 0x0

    .line 918
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_11

    .line 919
    new-instance v5, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;

    iget-object v6, v0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    iget-object v9, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-direct {v5, v6, v9}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;-><init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V

    .line 920
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 922
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v10, v9, :cond_c

    .line 924
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 925
    invoke-virtual {v12}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->get_realrect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    float-to-int v14, v11

    .line 927
    invoke-virtual {v12, v14}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->set_left(I)V

    int-to-float v13, v13

    add-float/2addr v11, v13

    if-nez v10, :cond_9

    add-int/lit8 v13, v9, -0x1

    if-ne v10, v13, :cond_8

    .line 932
    sget-object v13, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_BOTH_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    goto :goto_5

    :cond_8
    sget-object v13, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_LEFT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    goto :goto_5

    :cond_9
    add-int/lit8 v13, v9, -0x1

    if-ne v10, v13, :cond_b

    .line 934
    invoke-virtual {v12}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->isMore()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 935
    sget-object v13, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    goto :goto_5

    .line 937
    :cond_a
    sget-object v13, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_RIGHT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    goto :goto_5

    .line 940
    :cond_b
    sget-object v13, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    .line 943
    :goto_5
    invoke-virtual {v12, v13}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->layoutByStyle(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)V

    .line 944
    invoke-virtual {v5, v12}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 949
    :cond_c
    new-instance v6, Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 950
    new-instance v9, Lcom/metamoji/cm/Size;

    float-to-int v10, v11

    iget-object v11, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v11, v11, Lcom/metamoji/ui/menu/MenuUtils;->CTX_HIGHT:F

    float-to-int v11, v11

    invoke-direct {v9, v10, v11}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 955
    iget-object v11, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    if-eqz v2, :cond_d

    .line 952
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    div-int/lit8 v12, v2, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v7, Landroid/graphics/RectF;->right:F

    int-to-float v13, v2

    sub-float/2addr v12, v13

    sub-float/2addr v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v6, Landroid/graphics/Point;->x:I

    .line 953
    iget v11, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v2

    iget v12, v9, Lcom/metamoji/cm/Size;->width:I

    sub-int/2addr v11, v12

    iput v11, v6, Landroid/graphics/Point;->x:I

    goto :goto_6

    .line 955
    :cond_d
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    iget v12, v9, Lcom/metamoji/cm/Size;->width:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v7, Landroid/graphics/RectF;->right:F

    iget v13, v9, Lcom/metamoji/cm/Size;->width:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    sub-float/2addr v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v6, Landroid/graphics/Point;->x:I

    .line 958
    :goto_6
    iget-object v11, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v11, v11, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v12, v12, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_SPACE:F

    add-float/2addr v11, v12

    .line 959
    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->m_visibleDirection:Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;

    invoke-virtual {v12}, Lcom/metamoji/ui/CustomMenuView$MMJUIContextMenuArrowDirection;->ordinal()I

    move-result v12

    .line 961
    iget-object v13, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    const/4 v14, 0x1

    if-eq v12, v14, :cond_f

    .line 964
    iget v12, v13, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    cmpl-float v12, v8, v12

    if-lez v12, :cond_e

    .line 965
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget v13, v9, Lcom/metamoji/cm/Size;->width:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, v6, Landroid/graphics/Point;->x:I

    .line 966
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget v9, v9, Lcom/metamoji/cm/Size;->height:I

    int-to-float v9, v9

    sub-float/2addr v12, v9

    sub-float/2addr v12, v11

    float-to-int v9, v12

    iput v9, v6, Landroid/graphics/Point;->y:I

    goto :goto_7

    .line 968
    :cond_e
    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v9, v9, Lcom/metamoji/cm/Size;->height:I

    sub-int/2addr v12, v9

    float-to-int v9, v11

    sub-int/2addr v12, v9

    iput v12, v6, Landroid/graphics/Point;->y:I

    goto :goto_7

    .line 961
    :cond_f
    iget v9, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    add-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Point;->y:I

    .line 972
    :goto_7
    iget v9, v6, Landroid/graphics/Point;->y:I

    if-gez v9, :cond_10

    const/4 v9, 0x0

    .line 973
    iput v9, v6, Landroid/graphics/Point;->y:I

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    .line 975
    :goto_8
    iget v11, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    invoke-virtual {v5, v11, v6, v12}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->SetPoint(III)V

    .line 976
    iget-object v6, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v6, v6, Lcom/metamoji/ui/menu/MenuUtils;->CTX_HIGHT:F

    float-to-int v6, v6

    invoke-virtual {v5, v10, v6}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->SetSize(II)V

    .line 977
    invoke-virtual {v5}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->SetEtc()V

    const/16 v6, 0x8

    .line 978
    invoke-virtual {v5, v6}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->setVisibility(I)V

    .line 979
    iget-object v6, v0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v6, v5}, Lcom/metamoji/ui/CustomMenuView;->addView(Landroid/view/View;)V

    .line 980
    iget-object v6, v0, Lcom/metamoji/ui/CustomMenuView;->m_contexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_11
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 218
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/CustomMenuView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/CustomMenuView;->setWillNotDraw(Z)V

    .line 220
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;-><init>(Lcom/metamoji/ui/CustomMenuView;)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

    .line 221
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/CustomMenuView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    .line 224
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 225
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 226
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 227
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 229
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/metamoji/ui/CustomMenuView;->_densitydpi:F

    const/high16 v2, 0x43a00000    # 320.0f

    div-float/2addr v0, v2

    .line 230
    iput v0, p0, Lcom/metamoji/ui/CustomMenuView;->_density:F

    .line 233
    new-instance v0, Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    iget v3, p0, Lcom/metamoji/ui/CustomMenuView;->_density:F

    iget v4, p0, Lcom/metamoji/ui/CustomMenuView;->_densitydpi:F

    invoke-direct {v0, v2, v3, v4}, Lcom/metamoji/ui/menu/MenuUtils;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_mores:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_contexts:Ljava/util/ArrayList;

    .line 238
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    sget v2, Lcom/metamoji/noteanytime/R$string;->ContextMenu_NormalPrefix:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_normalstring:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titles:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    .line 244
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 245
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->menu_back:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 246
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 248
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titlePaint:Landroid/graphics/Paint;

    .line 249
    iget v1, p0, Lcom/metamoji/ui/CustomMenuView;->FONT_SIZE:F

    iget v2, p0, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v1, v2

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 252
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleBaseLinePos:I

    const/high16 v0, 0x40800000    # 4.0f

    .line 254
    iget v1, p0, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepWidth:I

    .line 255
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->menu_back_sep:I

    invoke-static {v0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepBitmap:Landroid/graphics/Bitmap;

    .line 257
    new-instance v0, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;-><init>(Lcom/metamoji/ui/CustomMenuView;)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomGestureListener:Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;

    .line 258
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomGestureListener:Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollGesture:Landroid/view/GestureDetector;

    .line 260
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPath:Landroid/graphics/Path;

    .line 261
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPaint:Landroid/graphics/Paint;

    .line 262
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPaint:Landroid/graphics/Paint;

    sget v0, Lcom/metamoji/ui/menu/MenuUtils;->ACT_BACK_COLOR:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, -0x1

    .line 265
    iput p1, p0, Lcom/metamoji/ui/CustomMenuView;->_maxVisibleItemCount:I

    .line 266
    iput p1, p0, Lcom/metamoji/ui/CustomMenuView;->_visibleItemIndex:I

    return-void
.end method

.method private ismobile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1114
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 1117
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->CONTEXTOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->GUIDANCEMESSAGEVIEWOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-eq p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1122
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$ViewState;->ACTIONOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-ne v0, v3, :cond_1

    .line 1123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 1125
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1126
    iget-object v4, p0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v0, v0

    int-to-float p2, p2

    .line 1127
    invoke-virtual {v3, v0, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    .line 1131
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_JUMP_LOCATION_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq p2, v0, :cond_2

    .line 1132
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/metamoji/ui/CustomMenuView$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/CustomMenuView$3;-><init>(Lcom/metamoji/ui/CustomMenuView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return p1

    :cond_3
    return v1
.end method


# virtual methods
.method public CloseMenu()Z
    .locals 5

    .line 663
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 667
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v3}, Lcom/metamoji/ui/CustomMenuView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 668
    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/CustomMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 669
    instance-of v4, v3, Lcom/metamoji/ui/UiTinyPalletViewGroup;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 672
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 675
    iget-object v4, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/CustomMenuView;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 677
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 678
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    .line 680
    sget-object v2, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    iput-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    .line 681
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    .line 682
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_mores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 683
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 684
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 686
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/CustomMenuView;->setPush(Z)V

    .line 688
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuCloseEventListener:Lcom/metamoji/ui/MenuCloseEventListener;

    if-eqz v0, :cond_4

    .line 689
    invoke-interface {v0}, Lcom/metamoji/ui/MenuCloseEventListener;->onClose()V

    .line 691
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->popupVisibleChanged()V

    const/4 v0, 0x1

    return v0

    :cond_5
    return v1
.end method

.method public ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V

    return-void
.end method

.method public ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            ")V"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 549
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V

    return-void
.end method

.method public ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            "II)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 553
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V

    return-void
.end method

.method public ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 536
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V

    return-void
.end method

.method public ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            "Landroid/graphics/Rect;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            "II)V"
        }
    .end annotation

    .line 560
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 561
    iput p6, p0, Lcom/metamoji/ui/CustomMenuView;->_maxVisibleItemCount:I

    .line 562
    iput p7, p0, Lcom/metamoji/ui/CustomMenuView;->_visibleItemIndex:I

    .line 563
    iget-object p6, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object p7, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-eq p6, p7, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    .line 566
    :cond_0
    iput-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 569
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    if-nez p5, :cond_1

    .line 570
    new-instance p5, Lcom/metamoji/ui/menu/UiMenuScrollView;

    iget-object p6, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-direct {p5, p6}, Lcom/metamoji/ui/menu/UiMenuScrollView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    .line 571
    new-instance p6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p7, -0x2

    invoke-direct {p6, p7, p7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p5, p6}, Lcom/metamoji/ui/menu/UiMenuScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {p5}, Lcom/metamoji/ui/menu/UiMenuScrollView;->removeAllViews()V

    .line 575
    :goto_0
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    if-nez p5, :cond_2

    .line 576
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    .line 578
    :cond_2
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    .line 580
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

    if-nez p5, :cond_3

    .line 581
    new-instance p5, Lcom/metamoji/ui/menu/UiMenuFrameView;

    iget-object p6, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-direct {p5, p6}, Lcom/metamoji/ui/menu/UiMenuFrameView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

    .line 582
    sget p6, Lcom/metamoji/noteanytime/R$drawable;->menu_frame:I

    invoke-virtual {p5, p6}, Lcom/metamoji/ui/menu/UiMenuFrameView;->setBackgroundResource(I)V

    .line 584
    :cond_3
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    const/4 p6, -0x1

    invoke-virtual {p5, p6}, Lcom/metamoji/ui/menu/UiMenuScrollView;->setBackgroundColor(I)V

    .line 586
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    if-nez p5, :cond_4

    .line 587
    new-instance p5, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    iget-object p6, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    iget-object p7, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-direct {p5, p6, p7}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;-><init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V

    iput-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    goto :goto_1

    .line 589
    :cond_4
    invoke-virtual {p5}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->removeAllViews()V

    .line 591
    :goto_1
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    const/4 p6, 0x0

    invoke-virtual {p5, p6}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->setItemMargin(I)V

    .line 592
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    const/4 p7, 0x1

    invoke-virtual {p5, p7}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->setMenuTypeAction(Z)V

    .line 593
    iput p6, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    .line 594
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView;->m_titles:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    .line 595
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    .line 596
    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_menuCloseEventListener:Lcom/metamoji/ui/MenuCloseEventListener;

    .line 597
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    new-instance p5, Lcom/metamoji/ui/CustomMenuView$1;

    invoke-direct {p5, p0}, Lcom/metamoji/ui/CustomMenuView$1;-><init>(Lcom/metamoji/ui/CustomMenuView;)V

    invoke-virtual {p3, p5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_mores:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 609
    invoke-direct {p0, p1, p2, p6, p6}, Lcom/metamoji/ui/CustomMenuView;->CreateMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;II)I

    .line 610
    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/menu/UiMenuScrollView;->addView(Landroid/view/View;)V

    .line 613
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    invoke-virtual {p1, p6}, Lcom/metamoji/ui/menu/UiMenuScrollView;->setVisibility(I)V

    .line 614
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/CustomMenuView;->addView(Landroid/view/View;)V

    .line 616
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

    invoke-virtual {p1, p6}, Lcom/metamoji/ui/menu/UiMenuFrameView;->setVisibility(I)V

    .line 617
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->_wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/CustomMenuView;->addView(Landroid/view/View;)V

    .line 620
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/CustomMenuView;->addView(Landroid/view/View;)V

    .line 625
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 626
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomMenuView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 627
    iget p2, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {p4, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 630
    iput-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    .line 631
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->repositionFrame()V

    .line 634
    sget-object p1, Lcom/metamoji/ui/CustomMenuView$ViewState;->ACTIONOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    return-void
.end method

.method public ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            ")V"
        }
    .end annotation

    .line 541
    iput-object p4, p0, Lcom/metamoji/ui/CustomMenuView;->_anchorView:Landroid/view/View;

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 542
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V

    return-void
.end method

.method public ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 732
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public ShowContextMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 736
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 737
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DRAW_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_0

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 739
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1, p2, v1}, Lcom/metamoji/ui/flexible/FxManager;->makeContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V

    .line 740
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenuBody(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return-void

    .line 742
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenuBody(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 751
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 752
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenuBody(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public cancelAllMenus()V
    .locals 0

    .line 1628
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    return-void
.end method

.method chgBackMenu(Lcom/metamoji/ui/MenuEventListener;)V
    .locals 3

    .line 1148
    iget v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    if-lez v0, :cond_1

    .line 1149
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titles:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1150
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v0}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->removeAllViews()V

    .line 1151
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1152
    iget v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/metamoji/ui/CustomMenuView;->CreateMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;II)I

    .line 1153
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    iget v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1154
    iget p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    if-nez v0, :cond_0

    .line 1156
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->m_titles:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1161
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->invalidate()V

    :cond_1
    return-void
.end method

.method chgNextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titles:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {p3}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->removeAllViews()V

    .line 1173
    iget p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    add-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/CustomMenuView;->CreateMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;II)I

    .line 1174
    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    iget p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    .line 1176
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1178
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView;->m_titlePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->m_titles:Ljava/util/ArrayList;

    iget v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1180
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->invalidate()V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_anchorView:Landroid/view/View;

    return-object v0
.end method

.method hideSubMenus()V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1108
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/UiMenuScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 1636
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentPopupVisible()Z
    .locals 2

    .line 1611
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$ViewState;->CONTEXTOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPush()Z
    .locals 1

    .line 1620
    iget-boolean v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPush:Z

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$ViewState;->CLOSE:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$ViewState;->ACTIONOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/CustomMenuView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/CustomMenuView$2;-><init>(Lcom/metamoji/ui/CustomMenuView;Lcom/metamoji/nt/NtCommand;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 271
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 273
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/CustomMenuView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 275
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;->dispose()V

    .line 276
    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomMenuView$OnCustomTouchListener;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomGestureListener:Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;->dispose()V

    .line 280
    iput-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->mOnCustomGestureListener:Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$ViewState;->ACTIONOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v1, v1, Lcom/metamoji/ui/menu/MenuUtils;->_paintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 291
    iget v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    if-lez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleArea:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 294
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titles:Ljava/util/ArrayList;

    iget v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleBaseLinePos:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView;->m_titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 299
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_tempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 300
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_tempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    sub-int v3, p4, v1

    sub-int v4, p5, v2

    .line 328
    iget-object v5, v0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 329
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 330
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 331
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 332
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_15

    .line 337
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/CustomMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 338
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_13

    .line 340
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 341
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 344
    instance-of v10, v7, Lcom/metamoji/ui/menu/UiMenuScrollView;

    if-eqz v10, :cond_12

    .line 345
    iget-object v8, v0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v9, Lcom/metamoji/ui/CustomMenuView$ViewState;->ACTIONOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-ne v8, v9, :cond_d

    .line 346
    iget-object v8, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v9, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_SHADOW_M:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v8, v9}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v8

    float-to-int v8, v8

    .line 347
    iget-object v9, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v10, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_FRAME_M:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v9, v10}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v9

    float-to-int v9, v9

    .line 349
    iget v10, v0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    if-lez v10, :cond_1

    .line 350
    iget-object v10, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v11, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_SUB_TITLE_H:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v10, v11}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v10

    float-to-int v10, v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 352
    :goto_1
    iget v11, v0, Lcom/metamoji/ui/CustomMenuView;->_density:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v13

    double-to-int v11, v11

    .line 355
    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v12}, Lcom/metamoji/ui/menu/MenuUtils;->get_contextSubMenuGroupSize()Lcom/metamoji/cm/Size;

    move-result-object v12

    add-int v13, v9, v8

    .line 359
    iget v14, v12, Lcom/metamoji/cm/Size;->width:I

    add-int v15, v13, v13

    add-int/2addr v14, v15

    .line 361
    iget-object v5, v0, Lcom/metamoji/ui/CustomMenuView;->m_menus:Ljava/util/ArrayList;

    move/from16 p2, v1

    iget v1, v0, Lcom/metamoji/ui/CustomMenuView;->m_menuIndex:I

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 362
    iget v5, v0, Lcom/metamoji/ui/CustomMenuView;->_maxVisibleItemCount:I

    if-lez v5, :cond_3

    if-gt v1, v5, :cond_2

    goto :goto_2

    .line 365
    :cond_2
    iget v5, v12, Lcom/metamoji/cm/Size;->height:I

    iget v12, v0, Lcom/metamoji/ui/CustomMenuView;->_maxVisibleItemCount:I

    mul-int/2addr v5, v12

    div-int/2addr v5, v1

    goto :goto_3

    .line 363
    :cond_3
    :goto_2
    iget v5, v12, Lcom/metamoji/cm/Size;->height:I

    :goto_3
    sub-int/2addr v15, v11

    add-int/2addr v5, v15

    if-le v14, v3, :cond_4

    move v14, v3

    .line 372
    :cond_4
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    div-int/lit8 v12, v14, 0x2

    sub-int/2addr v1, v12

    .line 373
    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v15, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    move/from16 p4, v1

    sget-object v1, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_ANCHOR_SPACE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v15, v1}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v12, v1

    .line 374
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->_menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->ordinal()I

    move-result v1

    const/4 v15, 0x1

    move/from16 p5, v5

    const/4 v5, 0x2

    if-eq v1, v15, :cond_6

    if-eq v1, v5, :cond_5

    :goto_4
    move/from16 v1, p4

    goto :goto_5

    .line 376
    :cond_5
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v15, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_ANCHOR_SPACE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v12, v15}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v1, v12

    sub-int/2addr v1, v14

    .line 377
    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    div-int/lit8 v15, p5, 0x2

    sub-int/2addr v12, v15

    goto :goto_5

    .line 381
    :cond_6
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v15, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_ANCHOR_SPACE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v12, v15}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v1, v12

    sub-int v12, v1, p5

    goto :goto_4

    :goto_5
    if-ge v12, v2, :cond_7

    move v12, v2

    :cond_7
    add-int v15, v12, p5

    add-int/2addr v15, v10

    if-le v15, v4, :cond_8

    move v15, v4

    :cond_8
    add-int v5, v1, v14

    if-le v5, v3, :cond_9

    sub-int v1, v3, v14

    :cond_9
    if-gez v1, :cond_a

    const/4 v1, 0x0

    :cond_a
    add-int v5, v1, v13

    add-int v16, v12, v13

    add-int v2, v16, v10

    move/from16 v16, v6

    add-int v6, v1, v14

    move/from16 p5, v9

    sub-int v9, v6, v13

    sub-int v13, v15, v13

    add-int/2addr v13, v11

    .line 402
    invoke-virtual {v7, v5, v2, v9, v13}, Landroid/view/View;->layout(IIII)V

    .line 403
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_wakuView:Lcom/metamoji/ui/menu/UiMenuFrameView;

    add-int v5, v12, v10

    invoke-virtual {v2, v1, v5, v6, v15}, Lcom/metamoji/ui/menu/UiMenuFrameView;->layout(IIII)V

    .line 405
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {v2}, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->ordinal()I

    move-result v2

    if-eqz v2, :cond_c

    .line 407
    iget-object v5, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/4 v7, 0x2

    if-eq v2, v7, :cond_b

    .line 414
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPath:Landroid/graphics/Path;

    add-int v19, v1, p5

    add-int v20, v12, p5

    sub-int v21, v6, p5

    sub-int v22, v15, p5

    iget-object v7, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v18, v2

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v24}, Lcom/metamoji/ui/menu/MenuUtils;->makeBalloonPath(Landroid/graphics/Path;IIIIIZ)V

    goto :goto_6

    :cond_b
    move-object/from16 v17, v5

    .line 407
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPath:Landroid/graphics/Path;

    add-int v19, v1, p5

    add-int v20, v12, p5

    sub-int v21, v6, p5

    sub-int v22, v15, p5

    iget-object v5, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v23

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/ui/menu/MenuUtils;->makeBalloonPathForRight(Landroid/graphics/Path;IIIII)V

    goto :goto_6

    .line 410
    :cond_c
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v5, v0, Lcom/metamoji/ui/CustomMenuView;->m_balloonPath:Landroid/graphics/Path;

    add-int v26, v1, p5

    add-int v27, v12, p5

    sub-int v28, v6, p5

    sub-int v29, v15, p5

    iget-object v7, v0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v31}, Lcom/metamoji/ui/menu/MenuUtils;->makeBalloonPath(Landroid/graphics/Path;IIIIIZ)V

    :goto_6
    if-lez v10, :cond_14

    .line 419
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v5, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_BACK_M:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v2, v5}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v2

    int-to-float v5, v8

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-int v5, v1, v2

    add-int/2addr v12, v2

    .line 422
    iget-object v7, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v9, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_BACK_W:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v7, v9}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v7

    float-to-int v7, v7

    .line 423
    iget-object v9, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v10, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_BACK_H:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v9, v10}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v9

    float-to-int v9, v9

    .line 424
    iget-object v10, v0, Lcom/metamoji/ui/CustomMenuView;->m_backButton:Landroid/widget/ImageButton;

    add-int v11, v5, v7

    add-int v13, v12, v9

    invoke-virtual {v10, v5, v12, v11, v13}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 427
    iget-object v10, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepArea:Landroid/graphics/Rect;

    add-int/2addr v1, v8

    iput v1, v10, Landroid/graphics/Rect;->left:I

    .line 428
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepArea:Landroid/graphics/Rect;

    sub-int/2addr v6, v8

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 429
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepArea:Landroid/graphics/Rect;

    int-to-float v6, v13

    iget-object v8, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v10, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_BACK_M:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v8, v10}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v8

    add-float/2addr v6, v8

    iget v8, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepWidth:I

    const/4 v10, 0x2

    div-int/2addr v8, v10

    int-to-float v8, v8

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 430
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepArea:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v8, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleSepWidth:I

    add-int/2addr v6, v8

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 433
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v9, v1

    const/4 v10, 0x2

    div-int/2addr v9, v10

    add-int/2addr v12, v9

    .line 434
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v14, v2

    sub-int/2addr v14, v2

    sub-int v2, v14, v7

    sub-int v2, v2, p5

    .line 435
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v14, v1

    .line 436
    div-int/2addr v14, v10

    add-int v7, v7, p5

    .line 437
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v5

    .line 438
    iget-object v5, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleArea:Landroid/graphics/Rect;

    add-int/2addr v1, v2

    iget-object v6, v0, Lcom/metamoji/ui/CustomMenuView;->m_titleRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v12

    invoke-virtual {v5, v2, v12, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    :cond_d
    move/from16 p2, v1

    move/from16 v16, v6

    .line 444
    iget-object v1, v0, Lcom/metamoji/ui/CustomMenuView;->_menuPoint:Landroid/graphics/Point;

    .line 445
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v2}, Lcom/metamoji/ui/menu/MenuUtils;->get_contextSubMenuGroupSize()Lcom/metamoji/cm/Size;

    move-result-object v2

    .line 446
    iget v5, v2, Lcom/metamoji/cm/Size;->width:I

    if-le v5, v3, :cond_e

    .line 447
    iput v3, v2, Lcom/metamoji/cm/Size;->width:I

    .line 449
    :cond_e
    iget v5, v1, Landroid/graphics/Point;->y:I

    iget v6, v2, Lcom/metamoji/cm/Size;->height:I

    add-int/2addr v5, v6

    if-le v5, v4, :cond_f

    move v5, v4

    .line 453
    :cond_f
    iget v6, v1, Landroid/graphics/Point;->x:I

    .line 454
    iget v8, v2, Lcom/metamoji/cm/Size;->width:I

    add-int/2addr v8, v6

    if-le v8, v3, :cond_10

    .line 455
    iget v6, v2, Lcom/metamoji/cm/Size;->width:I

    sub-int v6, v3, v6

    :cond_10
    if-gez v6, :cond_11

    const/4 v6, 0x0

    .line 460
    :cond_11
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    add-int/2addr v2, v6

    invoke-virtual {v7, v6, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_12
    move/from16 p2, v1

    move/from16 v16, v6

    .line 462
    instance-of v1, v7, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;

    if-eqz v1, :cond_14

    .line 463
    move-object v1, v7

    check-cast v1, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;

    .line 464
    invoke-virtual {v1}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->GetPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 465
    invoke-virtual {v1}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->GetPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v2

    add-int/2addr v8, v1

    .line 466
    invoke-virtual {v7, v2, v1, v9, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_13
    move/from16 p2, v1

    move/from16 v16, v6

    :cond_14
    :goto_7
    add-int/lit8 v6, v16, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_0

    .line 470
    :cond_15
    iget v1, v0, Lcom/metamoji/ui/CustomMenuView;->_visibleItemIndex:I

    if-ltz v1, :cond_16

    .line 471
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 472
    iget-object v2, v0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/ui/menu/UiMenuScrollView;->scrollTo(II)V

    const/4 v1, -0x1

    .line 473
    iput v1, v0, Lcom/metamoji/ui/CustomMenuView;->_visibleItemIndex:I

    :cond_16
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 317
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/CustomMenuView;->setMeasuredDimension(II)V

    .line 318
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 320
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/CustomMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 990
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_viewState:Lcom/metamoji/ui/CustomMenuView$ViewState;

    sget-object v0, Lcom/metamoji/ui/CustomMenuView$ViewState;->CONTEXTOPEN:Lcom/metamoji/ui/CustomMenuView$ViewState;

    if-ne p3, v0, :cond_5

    .line 991
    check-cast p2, Lcom/metamoji/ui/UiMenuItem;

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 993
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_beforSubMenu:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    if-eqz p1, :cond_1

    .line 994
    invoke-static {p1, p3}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->-$$Nest$fput_ispush_inside(Lcom/metamoji/ui/CustomMenuView$MenuItemView;Z)V

    .line 995
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 996
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/menu/UiMenuScrollView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 998
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_beforSubMenu:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->showMore()V

    return-void

    .line 1001
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/ui/UiMenuItem;->is_haveSubMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1002
    check-cast p1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 1003
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_beforSubMenu:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_3

    .line 1005
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/CustomMenuView;->setBackgroundColor(I)V

    .line 1006
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_beforSubMenu:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    invoke-static {v0, p3}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->-$$Nest$fput_ispush_inside(Lcom/metamoji/ui/CustomMenuView$MenuItemView;Z)V

    .line 1007
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView;->_beforSubMenu:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    invoke-virtual {p3}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->invalidate()V

    .line 1009
    :cond_3
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_beforSubMenu:Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 1010
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/CustomMenuView;->showSubMenus(Lcom/metamoji/ui/CustomMenuView$MenuItemView;Lcom/metamoji/ui/UiMenuItem;)V

    return-void

    .line 1013
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    if-eqz p1, :cond_5

    .line 1014
    invoke-virtual {p2}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object p3

    .line 1015
    invoke-virtual {p2}, Lcom/metamoji/ui/UiMenuItem;->get_options()Ljava/lang/Object;

    move-result-object p2

    .line 1014
    invoke-interface {p1, p0, p3, p2}, Lcom/metamoji/ui/MenuEventListener;->onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1016
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    :cond_5
    return-void
.end method

.method repositionFrame()V
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuDir:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->ordinal()I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPoint:Landroid/graphics/Point;

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 649
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 650
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v3, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_ANCHOR_SPACE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v3, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_ANCHOR_SPACE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 646
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_anchor:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 653
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->set_displayArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPush(Z)V
    .locals 0

    .line 1624
    iput-boolean p1, p0, Lcom/metamoji/ui/CustomMenuView;->_menuPush:Z

    return-void
.end method

.method public showMore()V
    .locals 3

    .line 1023
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->m_contexts:Ljava/util/ArrayList;

    iget v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;

    .line 1025
    iget v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_currentIndex:I

    iget v2, p0, Lcom/metamoji/ui/CustomMenuView;->m_contextcount:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/metamoji/ui/CustomMenuView;->m_currentIndex:I

    .line 1026
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->m_contexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;

    const/4 v2, 0x0

    .line 1028
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->setVisibility(I)V

    const/16 v1, 0x8

    .line 1029
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->setVisibility(I)V

    return-void
.end method

.method showSubMenus(Lcom/metamoji/ui/CustomMenuView$MenuItemView;Lcom/metamoji/ui/UiMenuItem;)V
    .locals 11

    .line 1039
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    if-nez v0, :cond_0

    .line 1040
    new-instance v0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;-><init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->removeAllViews()V

    .line 1044
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v1, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_SUB_M_L:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v0

    .line 1045
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v2, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_ITEM_MARGIN:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v1

    .line 1047
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    float-to-int v3, v1

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->setItemMargin(I)V

    .line 1048
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->setMenuTypeAction(Z)V

    .line 1050
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView;->_displayArea:Landroid/graphics/Rect;

    .line 1057
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->get_realrect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1058
    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;

    .line 1059
    invoke-virtual {p1}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->GetBodyPoint()Landroid/graphics/Point;

    move-result-object p1

    .line 1060
    iget v5, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1062
    invoke-virtual {p2}, Lcom/metamoji/ui/UiMenuItem;->get_menus()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    move v10, v3

    .line 1064
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_2

    .line 1065
    new-instance v5, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/metamoji/ui/UiMenuItem;

    sget-object v9, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;-><init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;I)V

    .line 1066
    iget-object v7, v6, Lcom/metamoji/ui/CustomMenuView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    invoke-virtual {v5, v7}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setMenuEventListener(Lcom/metamoji/ui/MenuEventListener;)V

    .line 1067
    iget-object v7, v6, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v7, v5}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->addView(Landroid/view/View;)V

    .line 1068
    iget-object v7, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-static {v5}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->-$$Nest$fget_item(Lcom/metamoji/ui/CustomMenuView$MenuItemView;)Lcom/metamoji/ui/UiMenuItem;

    move-result-object v8

    invoke-static {v5}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->-$$Nest$fget_style(Lcom/metamoji/ui/CustomMenuView$MenuItemView;)Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lcom/metamoji/ui/menu/MenuUtils;->getItemW(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v7, p2, v5

    if-gez v7, :cond_1

    move p2, v5

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move-object v6, p0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v0

    add-float/2addr p2, v5

    .line 1076
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-float p1, p1

    iget-object v7, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v7, v7, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SUB_HIGHT:F

    add-float/2addr v7, v1

    mul-float/2addr p1, v7

    add-float/2addr p1, v5

    sub-float/2addr p1, v1

    .line 1077
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, p2

    .line 1078
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 1077
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1080
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v7, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v7, v7, Lcom/metamoji/ui/menu/MenuUtils;->CTX_HIGHT:F

    add-float/2addr v5, v7

    iget-object v7, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v7, v7, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SUB_SPACE:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1084
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    add-float v5, v0, p1

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    .line 1085
    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-object v4, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v4, v4, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SUB_SPACE:F

    sub-float/2addr v0, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1088
    :cond_3
    iget-object v4, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    new-instance v5, Lcom/metamoji/cm/Size;

    float-to-int p2, p2

    iget-object v7, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v7, v7, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SUB_HIGHT:F

    float-to-int v7, v7

    invoke-direct {v5, p2, v7}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/menu/MenuUtils;->set_contextSubMenuItemSize(Lcom/metamoji/cm/Size;)V

    .line 1089
    iget-object v4, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    float-to-int p1, p1

    invoke-virtual {v4, p2, p1}, Lcom/metamoji/ui/menu/MenuUtils;->set_contextSubMenuGroupSize(II)V

    .line 1091
    iget-object p1, v6, Lcom/metamoji/ui/CustomMenuView;->_menuPoint:Landroid/graphics/Point;

    float-to-int p2, v1

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->set(II)V

    .line 1092
    iget-object p1, v6, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->set_displayArea(Landroid/graphics/Rect;)V

    .line 1094
    iget-object p1, v6, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    if-nez p1, :cond_4

    .line 1095
    new-instance p1, Lcom/metamoji/ui/menu/UiMenuScrollView;

    iget-object p2, v6, Lcom/metamoji/ui/CustomMenuView;->_context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/metamoji/ui/menu/UiMenuScrollView;-><init>(Landroid/content/Context;)V

    iput-object p1, v6, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    .line 1096
    iget-object p2, v6, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/CustomMenuView;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1098
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/ui/menu/UiMenuScrollView;->removeAllViews()V

    .line 1101
    :goto_2
    iget-object p1, v6, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    iget-object p2, v6, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/menu/UiMenuScrollView;->addView(Landroid/view/View;)V

    .line 1102
    iget-object p1, v6, Lcom/metamoji/ui/CustomMenuView;->_scrollView:Lcom/metamoji/ui/menu/UiMenuScrollView;

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/menu/UiMenuScrollView;->setVisibility(I)V

    return-void

    :cond_5
    move-object v6, p0

    return-void
.end method
