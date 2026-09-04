.class public Lcom/metamoji/ui/HistoryBarDriver;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;
.implements Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;
.implements Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;
    }
.end annotation


# static fields
.field private static final BAR_LEFT_MARGIN_DP:F = 0.0f

.field private static final BAR_RIGHT_MARGIN_DP:F = 45.0f

.field private static final COLOR_BG_DARK:I = -0x9a9792

.field private static final COLOR_BG_LITE:I = -0x131314

.field private static final COLOR_BG_PRESS_NA:I = -0x69554c

.field private static final COLOR_BG_PRESS_SA:I = -0x55696a

.field private static final COLOR_FG_DARK:I = -0x1

.field private static final COLOR_FG_LITE:I = -0xc5c5c6

.field private static final COLOR_FG_PRESS:I = -0xdfdfe0

.field private static final COLOR_MB_NOR:I = -0x50506

.field private static final COLOR_MB_PRESS:I = -0x1a1a1b

.field private static final COLOR_MB_SEL:I = -0x9a9792

.field private static final COLOR_MF_NOR:I = -0xc5c5c6

.field private static final COLOR_MF_PRESS:I = -0xc5c5c6

.field private static final COLOR_MF_SEL:I = -0x1

.field private static final TAB_MARGIN_DP:F = 5.0f

.field private static final TAB_PADDING_DP:F = 3.0f

.field private static final TAB_WIDTH_DP:F = 140.0f

.field private static sColorMbNor:Landroid/graphics/drawable/Drawable;

.field private static sColorMbPress:Landroid/graphics/drawable/Drawable;

.field private static sColorMbSel:Landroid/graphics/drawable/Drawable;

.field private static final sColorTextDark:Landroid/content/res/ColorStateList;

.field private static final sColorTextLite:Landroid/content/res/ColorStateList;

.field private static sColorTextMenu:Landroid/content/res/ColorStateList;

.field private static final sStateNormal:[I

.field private static final sStatePressed:[I

.field private static final sStateSelected:[I

.field private static final states:[[I


# instance fields
.field private BAR_LEFT_MARGIN:I

.field private BAR_RIGHT_MARGIN:I

.field private TAB_MARGIN:I

.field private TAB_PADDING:I

.field private TAB_WIDTH:I

.field private mDensity:F

.field private mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

.field private mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

.field private mHistoryBarPane:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuEventListener:Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;

.field private mMoreButton:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mMulti:Z

.field private mOnClickMoreButtonListener:Landroid/view/View$OnClickListener;

.field private mOnHeightChangedListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnUserDefaultsChangedListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtUserDefaults;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBarHeight:I

.field private mPrevBarWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDocInfo(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/nt/NtMRUDocList$DocInfo;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckConsistency(Lcom/metamoji/ui/HistoryBarDriver;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->checkConsistency()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateTab(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtMRUDocList$Item;Z)Lcom/metamoji/ui/HistoryTab;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/HistoryBarDriver;->createTab(Lcom/metamoji/nt/NtMRUDocList$Item;Z)Lcom/metamoji/ui/HistoryTab;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcurrentIndex(Lcom/metamoji/ui/HistoryBarDriver;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->currentIndex()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mensureTabVisible(Lcom/metamoji/ui/HistoryBarDriver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->ensureTabVisible(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindTab(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->findTab(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentDocumentInfo(Lcom/metamoji/ui/HistoryBarDriver;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->getCurrentDocumentInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitTabs(Lcom/metamoji/ui/HistoryBarDriver;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->initTabs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCollaboMode(Lcom/metamoji/ui/HistoryBarDriver;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->isCollaboMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monMoreButtonClicked(Lcom/metamoji/ui/HistoryBarDriver;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->onMoreButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVisibilitySettingChanged(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtUserDefaults;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/HistoryBarDriver;->onVisibilitySettingChanged(Lcom/metamoji/nt/NtUserDefaults;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectItem(Lcom/metamoji/ui/HistoryBarDriver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->selectItem(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectMeInner(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/HistoryBarDriver;->selectMeInner(Ljava/lang/Object;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtabAt(Lcom/metamoji/ui/HistoryBarDriver;I)Lcom/metamoji/ui/HistoryTab;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->tabAt(I)Lcom/metamoji/ui/HistoryTab;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateMoreButtonState(Lcom/metamoji/ui/HistoryBarDriver;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->updateMoreButtonState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTabs(Lcom/metamoji/ui/HistoryBarDriver;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->updateTabs()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const v0, 0x10100a7

    .line 114
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/HistoryBarDriver;->sStatePressed:[I

    const v1, 0x10100a1

    .line 115
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/metamoji/ui/HistoryBarDriver;->sStateSelected:[I

    const/4 v2, 0x0

    .line 116
    filled-new-array {v2}, [I

    move-result-object v2

    sput-object v2, Lcom/metamoji/ui/HistoryBarDriver;->sStateNormal:[I

    .line 117
    filled-new-array {v1, v0, v2}, [[I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/HistoryBarDriver;->states:[[I

    .line 119
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, -0x1

    const v3, -0xdfdfe0

    const v4, -0xc5c5c6

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sput-object v1, Lcom/metamoji/ui/HistoryBarDriver;->sColorTextLite:Landroid/content/res/ColorStateList;

    .line 128
    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {v4, v3, v2}, [I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sput-object v1, Lcom/metamoji/ui/HistoryBarDriver;->sColorTextDark:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .line 140
    sput-object v0, Lcom/metamoji/ui/HistoryBarDriver;->sColorTextMenu:Landroid/content/res/ColorStateList;

    .line 141
    sput-object v0, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbSel:Landroid/graphics/drawable/Drawable;

    .line 142
    sput-object v0, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbPress:Landroid/graphics/drawable/Drawable;

    .line 143
    sput-object v0, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbNor:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;)V
    .locals 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    .line 47
    iput-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMoreButton:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBarPane:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance v1, Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-direct {v1}, Lcom/metamoji/nt/NtMRUDocList$DocInfo;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mPrevBarWidth:I

    .line 51
    iput v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mPrevBarHeight:I

    .line 52
    iput-boolean v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMulti:Z

    .line 55
    iput-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnClickMoreButtonListener:Landroid/view/View$OnClickListener;

    .line 56
    iput-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnUserDefaultsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 62
    iput-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnHeightChangedListener:Ljava/lang/ref/WeakReference;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 71
    iput v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDensity:F

    .line 72
    iput v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->BAR_LEFT_MARGIN:I

    const/16 v1, 0x2d

    .line 73
    iput v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->BAR_RIGHT_MARGIN:I

    const/16 v1, 0x8c

    .line 74
    iput v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_WIDTH:I

    const/4 v1, 0x5

    .line 75
    iput v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_MARGIN:I

    const/4 v1, 0x3

    .line 76
    iput v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_PADDING:I

    .line 868
    iput-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMenuEventListener:Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;

    .line 153
    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->init(Landroidx/fragment/app/FragmentActivity;)V

    .line 154
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/HistoryBarDriver;->setOnHeightChangedListener(Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;)V

    return-void
.end method

.method private calcTabCount(F)I
    .locals 2

    .line 592
    iget v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->BAR_LEFT_MARGIN:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->BAR_RIGHT_MARGIN:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_WIDTH:I

    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_MARGIN:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private checkConsistency()Z
    .locals 6

    .line 446
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 449
    const-string v0, "HistoryBarDriver:Inconsistency: tab count."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return v3

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    .line 454
    iget-object v4, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v4, v2}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/HistoryTab;

    .line 455
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v5

    invoke-virtual {v4}, Lcom/metamoji/ui/HistoryTab;->getClientData()Ljava/lang/Object;

    move-result-object v4

    if-eq v5, v4, :cond_1

    .line 456
    const-string v0, "HistoryBarDriver:Inconsistency: tab order."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private createMenuItems(Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;"
        }
    .end annotation

    .line 961
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result p1

    .line 963
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    return-object v2

    .line 968
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v2

    .line 972
    :cond_2
    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v3

    .line 974
    iget-object v4, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMenuEventListener:Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;

    if-nez v4, :cond_3

    .line 975
    new-instance v4, Lcom/metamoji/ui/HistoryBarDriver$3;

    invoke-direct {v4, p0, v3}, Lcom/metamoji/ui/HistoryBarDriver$3;-><init>(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/ui/CustomMenuView;)V

    iput-object v4, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMenuEventListener:Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;

    .line 1006
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    add-int v6, p1, v5

    .line 1008
    invoke-virtual {v0, v6}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v6

    .line 1009
    iget-object v7, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-virtual {v0, v6, v7}, Lcom/metamoji/nt/NtMRUDocList;->getDocInfo(Lcom/metamoji/nt/NtMRUDocList$Item;Lcom/metamoji/nt/NtMRUDocList$DocInfo;)Z

    .line 1010
    new-instance v7, Lcom/metamoji/ui/HistoryMenuItemView;

    invoke-virtual {v3}, Lcom/metamoji/ui/CustomMenuView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/metamoji/ui/HistoryMenuItemView;-><init>(Landroid/content/Context;)V

    .line 1011
    iget-object v8, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-boolean v8, v8, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfShare:Z

    iget-object v9, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-boolean v9, v9, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfTemplate:Z

    invoke-virtual {p0, v7, v8, v9}, Lcom/metamoji/ui/HistoryBarDriver;->setMenuItemDrawables(Lcom/metamoji/ui/HistoryMenuItemView;ZZ)V

    .line 1012
    iget-object v8, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-object v8, v8, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/metamoji/ui/HistoryMenuItemView;->setText(Ljava/lang/String;)V

    .line 1013
    iget-object v8, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMenuEventListener:Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;

    invoke-virtual {v7, v6, v8}, Lcom/metamoji/ui/HistoryMenuItemView;->setMenuItemInfo(Lcom/metamoji/nt/NtMRUDocList$Item;Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;)V

    .line 1014
    new-instance v8, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v8, v6, v2, v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method private createTab(Lcom/metamoji/nt/NtMRUDocList$Item;Z)Lcom/metamoji/ui/HistoryTab;
    .locals 5

    .line 328
    new-instance v0, Lcom/metamoji/ui/HistoryTab;

    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v1}, Lcom/metamoji/ui/DraggableStackPanel;->asView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/ui/HistoryTab;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HistoryTab;->setClientData(Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/HistoryBarDriver;->isCurrentDoc(Ljava/lang/String;)Z

    move-result v1

    .line 334
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_WIDTH:I

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 335
    iget v3, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_MARGIN:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 336
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/HistoryTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/HistoryTab;->setHistoryTabEventListener(Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;)V

    const/4 v2, 0x0

    .line 338
    iget v3, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_PADDING:I

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/metamoji/ui/HistoryTab;->setPadding(IIII)V

    if-eqz v1, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->getCurrentDocumentInfo()V

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-virtual {v2, p1, v3}, Lcom/metamoji/nt/NtMRUDocList;->getDocInfo(Lcom/metamoji/nt/NtMRUDocList$Item;Lcom/metamoji/nt/NtMRUDocList$DocInfo;)Z

    .line 345
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-object p1, p1, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HistoryTab;->setText(Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-boolean p1, p1, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfShare:Z

    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-boolean v2, v2, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfTemplate:Z

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/metamoji/ui/HistoryBarDriver;->setTabColor(Lcom/metamoji/ui/HistoryTab;ZZZ)V

    .line 347
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HistoryTab;->setSelected(Z)V

    return-object v0
.end method

.method private currentDocumentId()Ljava/lang/String;
    .locals 1

    .line 496
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->getCurrentSelection()Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private currentIndex()I
    .locals 1

    .line 504
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->getCurrentSelectionIndex()I

    move-result v0

    return v0
.end method

.method private ensureTabVisible(I)V
    .locals 2

    .line 400
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 401
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 408
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtMRUDocList;->moveMru(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private findTab(Ljava/lang/String;)I
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 573
    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/HistoryTab;

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {v2}, Lcom/metamoji/ui/HistoryTab;->getClientData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getCurrentDocumentInfo()V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->clear()V

    .line 473
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 476
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->currentDocumentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfShare:Z

    .line 480
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    return-void

    .line 488
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->currentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v0

    .line 489
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtMRUDocList;->getDocInfo(Lcom/metamoji/nt/NtMRUDocList$Item;Lcom/metamoji/nt/NtMRUDocList$DocInfo;)Z

    return-void
.end method

.method private getOnHeightChangedListener()Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnHeightChangedListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 161
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDensity:F

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    .line 163
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->BAR_LEFT_MARGIN:I

    const/high16 v0, 0x42340000    # 45.0f

    .line 164
    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDensity:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->BAR_RIGHT_MARGIN:I

    const/high16 v0, 0x430c0000    # 140.0f

    .line 165
    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDensity:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_WIDTH:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 166
    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDensity:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_MARGIN:I

    const/high16 v0, 0x40400000    # 3.0f

    .line 167
    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDensity:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_PADDING:I

    .line 169
    sget v0, Lcom/metamoji/noteanytime/R$id;->historyBar:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBarPane:Ljava/lang/ref/WeakReference;

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 174
    sget v1, Lcom/metamoji/noteanytime/R$id;->historyTabBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 175
    new-instance v2, Lcom/metamoji/ui/DraggableStackPanel;

    invoke-direct {v2, v1}, Lcom/metamoji/ui/DraggableStackPanel;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    .line 176
    invoke-virtual {v2, p0}, Lcom/metamoji/ui/DraggableStackPanel;->setOnItemDropListener(Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;)V

    .line 178
    sget v1, Lcom/metamoji/noteanytime/R$id;->historyMoreButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 179
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMoreButton:Ljava/lang/ref/WeakReference;

    .line 181
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v1

    .line 182
    invoke-virtual {v1, p0}, Lcom/metamoji/nt/NtMRUDocList;->addEventListener(Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;)V

    .line 184
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnClickMoreButtonListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/metamoji/ui/HistoryBarDriver$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/HistoryBarDriver$1;-><init>(Lcom/metamoji/ui/HistoryBarDriver;)V

    iput-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnClickMoreButtonListener:Landroid/view/View$OnClickListener;

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnUserDefaultsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    if-nez v1, :cond_1

    .line 194
    new-instance v1, Lcom/metamoji/ui/HistoryBarDriver$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/HistoryBarDriver$2;-><init>(Lcom/metamoji/ui/HistoryBarDriver;Landroidx/fragment/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnUserDefaultsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnClickMoreButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 205
    const-string v1, "MMJNtHistoryBarShow"

    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnUserDefaultsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 208
    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->onVisibilitySettingChanged(Lcom/metamoji/nt/NtUserDefaults;Landroidx/fragment/app/FragmentActivity;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->updateViewSize(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private initTabs()V
    .locals 6

    .line 382
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/DraggableStackPanel;->removeChild(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->isCollaboMode()Z

    move-result v0

    .line 388
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v2

    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 390
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/metamoji/ui/HistoryBarDriver;->createTab(Lcom/metamoji/nt/NtMRUDocList$Item;Z)Lcom/metamoji/ui/HistoryTab;

    move-result-object v4

    .line 391
    iget-object v5, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v5, v4}, Lcom/metamoji/ui/DraggableStackPanel;->addChild(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->updateMoreButtonState()V

    return-void
.end method

.method private isCollaboMode()Z
    .locals 2

    .line 774
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCurrentDoc(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->currentDocumentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private onMoreButtonClicked(Landroid/view/View;)V
    .locals 5

    .line 875
    const-string v0, "more button pressed"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 934
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HistoryBarDriver;->createMenuItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    .line 939
    invoke-static {v1, p1, v2}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 941
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 942
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 943
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 944
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, p1

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 946
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object p1

    .line 951
    invoke-virtual {p1, v0, v2, v1}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method private onVisibilitySettingChanged(Lcom/metamoji/nt/NtUserDefaults;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 674
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableHistoryTab:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 676
    const-string p2, "MMJNtHistoryBarShow"

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p2

    .line 678
    :cond_1
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/HistoryBarDriver;->setVisibility(Z)V

    return-void
.end method

.method private selectItem(I)V
    .locals 5

    .line 523
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 524
    iget-object v3, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/HistoryTab;

    if-eqz v3, :cond_1

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 526
    :goto_1
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/HistoryTab;->setSelected(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private selectMeInner(Ljava/lang/Object;Z)V
    .locals 2

    .line 1210
    instance-of v0, p1, Lcom/metamoji/ui/HistoryTab;

    if-eqz v0, :cond_0

    .line 1211
    check-cast p1, Lcom/metamoji/ui/HistoryTab;

    invoke-virtual {p1}, Lcom/metamoji/ui/HistoryTab;->getClientData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    goto :goto_0

    .line 1212
    :cond_0
    instance-of v0, p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    if-eqz v0, :cond_5

    .line 1213
    check-cast p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    .line 1218
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_1

    .line 1224
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->currentIndex()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 1228
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    return-void

    .line 1233
    :cond_3
    new-instance v1, Lcom/metamoji/ui/HistoryBarDriver$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/metamoji/ui/HistoryBarDriver$9;-><init>(Lcom/metamoji/ui/HistoryBarDriver;ILcom/metamoji/nt/NtMRUDocList$Item;)V

    if-eqz p2, :cond_4

    .line 1247
    sget-object p1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object p2

    if-ne p1, p2, :cond_4

    .line 1248
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_StopRecording:I

    new-instance p2, Lcom/metamoji/ui/HistoryBarDriver$10;

    invoke-direct {p2, p0, v1}, Lcom/metamoji/ui/HistoryBarDriver$10;-><init>(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 1266
    :cond_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1215
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HistoryBarDriver.selectMe: unknown data type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setTabColor(Lcom/metamoji/ui/HistoryTab;ZZZ)V
    .locals 9

    .line 271
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 273
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, -0x55696a

    const v4, -0x69554c

    const v5, -0x9a9792

    const v6, -0x131314

    if-eqz p4, :cond_3

    .line 276
    sget-object p4, Lcom/metamoji/ui/HistoryBarDriver;->sColorTextLite:Landroid/content/res/ColorStateList;

    .line 277
    sget-object v7, Lcom/metamoji/ui/HistoryBarDriver;->sStateSelected:[I

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 278
    sget-object v5, Lcom/metamoji/ui/HistoryBarDriver;->sStatePressed:[I

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-direct {v8, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 279
    sget-object v3, Lcom/metamoji/ui/HistoryBarDriver;->sStateNormal:[I

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    .line 282
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_tmpl_icon_dark:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 283
    invoke-virtual {v1, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {v1, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 285
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_tmpl_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 287
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_share_icon_dark:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 288
    invoke-virtual {v1, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 289
    invoke-virtual {v1, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 290
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_share_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 292
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_note_icon_dark:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 293
    invoke-virtual {v1, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {v1, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 295
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_note_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 299
    :cond_3
    sget-object p4, Lcom/metamoji/ui/HistoryBarDriver;->sColorTextDark:Landroid/content/res/ColorStateList;

    .line 300
    sget-object v7, Lcom/metamoji/ui/HistoryBarDriver;->sStateSelected:[I

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 301
    sget-object v6, Lcom/metamoji/ui/HistoryBarDriver;->sStatePressed:[I

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-direct {v8, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 302
    sget-object v3, Lcom/metamoji/ui/HistoryBarDriver;->sStateNormal:[I

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_5

    .line 305
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_tmpl_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 306
    invoke-virtual {v1, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 307
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 308
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_tmpl_icon_dark:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 310
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_share_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 311
    invoke-virtual {v1, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 313
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_share_icon_dark:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 315
    :cond_6
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_note_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 316
    invoke-virtual {v1, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 318
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_note_icon_dark:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 321
    :goto_2
    invoke-virtual {p1, p4, v0, v1}, Lcom/metamoji/ui/HistoryTab;->setDrawables(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/StateListDrawable;)V

    return-void
.end method

.method private tabAt(I)Lcom/metamoji/ui/HistoryTab;
    .locals 1

    if-ltz p1, :cond_1

    .line 562
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/HistoryTab;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private tabBarWidth()F
    .locals 3

    .line 601
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v0

    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_WIDTH:I

    iget v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->TAB_MARGIN:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->BAR_LEFT_MARGIN:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private updateMoreButtonState()V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMoreButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v1

    .line 759
    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v2

    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v1

    if-le v2, v1, :cond_1

    const/4 v1, 0x0

    .line 760
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v1, 0x8

    .line 762
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private updateTabs()V
    .locals 6

    .line 416
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v2}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 418
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v2}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->isCollaboMode()Z

    move-result v1

    .line 424
    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v2}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v2

    .line 425
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 428
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/metamoji/ui/HistoryBarDriver;->createTab(Lcom/metamoji/nt/NtMRUDocList$Item;Z)Lcom/metamoji/ui/HistoryTab;

    move-result-object v4

    .line 429
    iget-object v5, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v5, v4}, Lcom/metamoji/ui/DraggableStackPanel;->addChild(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v0

    :goto_1
    if-le v2, v0, :cond_2

    .line 435
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/DraggableStackPanel;->removeChild(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 439
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->updateMoreButtonState()V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateViewSize(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBarPane:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 617
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 618
    iget v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mPrevBarWidth:I

    if-ne v1, v2, :cond_1

    .line 621
    iget p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mPrevBarHeight:I

    if-eq v0, p1, :cond_2

    .line 622
    iput v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mPrevBarHeight:I

    .line 623
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->getOnHeightChangedListener()Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 625
    invoke-interface {p1}, Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;->onHistoryBarHeightChanged()V

    return-void

    .line 630
    :cond_1
    iput v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mPrevBarWidth:I

    .line 631
    iput v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mPrevBarHeight:I

    .line 632
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 636
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 638
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v2

    .line 639
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    int-to-float p1, v1

    .line 640
    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->calcTabCount(F)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtMRUDocList;->setTabCount(I)V

    .line 641
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->calcTabCount(F)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtMRUDocList;->setMaxTabCount(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 643
    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtMRUDocList;->setTabCount(I)V

    .line 644
    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtMRUDocList;->setMaxTabCount(I)V

    .line 646
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->updateTabs()V

    .line 647
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->currentIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->ensureTabVisible(I)V

    .line 650
    iget-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {p1}, Lcom/metamoji/ui/DraggableStackPanel;->asView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 651
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->tabBarWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 652
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->asView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->getOnHeightChangedListener()Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 657
    invoke-interface {p1}, Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;->onHistoryBarHeightChanged()V

    .line 660
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->updateMoreButtonState()V

    .line 662
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->checkConsistency()Z

    return-void
.end method


# virtual methods
.method public currentSelectedTab()Lcom/metamoji/nt/NtMRUDocList$Item;
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 550
    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/HistoryTab;

    if-eqz v2, :cond_0

    .line 551
    invoke-virtual {v2}, Lcom/metamoji/ui/HistoryTab;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    invoke-virtual {v2}, Lcom/metamoji/ui/HistoryTab;->getClientData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtMRUDocList$Item;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteMe(Ljava/lang/Object;)V
    .locals 7

    .line 1278
    instance-of v0, p1, Lcom/metamoji/ui/HistoryTab;

    if-eqz v0, :cond_0

    .line 1279
    check-cast p1, Lcom/metamoji/ui/HistoryTab;

    invoke-virtual {p1}, Lcom/metamoji/ui/HistoryTab;->getClientData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    :goto_0
    move-object v3, p1

    goto :goto_1

    .line 1280
    :cond_0
    instance-of v0, p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    if-eqz v0, :cond_3

    .line 1281
    check-cast p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    goto :goto_0

    .line 1286
    :goto_1
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v2

    .line 1287
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->currentIndex()I

    move-result v5

    .line 1288
    invoke-virtual {v3}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result v4

    .line 1289
    iget-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {p1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v6

    if-eq v5, v4, :cond_1

    .line 1295
    invoke-virtual {v3}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtMRUDocList;->removeUsedDoc(Ljava/lang/String;)V

    return-void

    .line 1300
    :cond_1
    new-instance v0, Lcom/metamoji/ui/HistoryBarDriver$11;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/HistoryBarDriver$11;-><init>(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;III)V

    .line 1331
    sget-object p1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 1332
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_StopRecording:I

    new-instance v2, Lcom/metamoji/ui/HistoryBarDriver$12;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/HistoryBarDriver$12;-><init>(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 1350
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    move-object v1, p0

    .line 1283
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HistoryBarDriver.deleteMe: unknown data type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DraggableStackPanel;->setOnItemDropListener(Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;)V

    .line 221
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtMRUDocList;->removeEventListener(Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;)V

    .line 223
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->resetCurrentSelection()V

    .line 225
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 226
    const-string v2, "MMJNtHistoryBarShow"

    iget-object v3, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnUserDefaultsChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 228
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMoreButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBarPane:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 238
    :cond_1
    iput-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    return-void
.end method

.method public getMenuItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1020
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HistoryBarDriver;->createMenuItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isHistoryBarVisible()Z
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBarPane:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 721
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public notifyTitleChanged()V
    .locals 2

    .line 809
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->currentIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/HistoryBarDriver;->tabAt(I)Lcom/metamoji/ui/HistoryTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 814
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->getCurrentDocumentInfo()V

    .line 815
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-object v1, v1, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HistoryTab;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onCollaboModeChanged(Z)V
    .locals 6

    .line 787
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 788
    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/HistoryTab;

    if-eqz v2, :cond_0

    .line 790
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/ui/HistoryTab;->getClientData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtMRUDocList$Item;

    iget-object v5, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtMRUDocList;->getDocInfo(Lcom/metamoji/nt/NtMRUDocList$Item;Lcom/metamoji/nt/NtMRUDocList$DocInfo;)Z

    .line 791
    iget-object v3, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-boolean v3, v3, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfShare:Z

    iget-object v4, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-boolean v4, v4, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfTemplate:Z

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/metamoji/ui/HistoryBarDriver;->setTabColor(Lcom/metamoji/ui/HistoryTab;ZZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 796
    sget p1, Lcom/metamoji/noteanytime/R$color;->historytabbar_background_lite:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 797
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$color;->historytabbar_background_dark:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 799
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBarPane:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 800
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 1357
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/HistoryBarDriver;->updateViewSize(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public onItemMoved(Landroid/view/View;II)V
    .locals 0

    .line 1032
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtMRUDocList;->moveMru(II)V

    return-void
.end method

.method public onMruItemAppended(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 2

    .line 1066
    iget-boolean v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMulti:Z

    if-eqz v0, :cond_0

    return-void

    .line 1071
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/HistoryBarDriver$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/HistoryBarDriver$5;-><init>(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMruItemDeleted(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;)V
    .locals 1

    .line 1101
    iget-boolean p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMulti:Z

    if-eqz p1, :cond_0

    return-void

    .line 1105
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/HistoryBarDriver$6;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/ui/HistoryBarDriver$6;-><init>(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMruItemMoved(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;II)V
    .locals 1

    .line 1132
    iget-boolean p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMulti:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {p1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1138
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {p1, p4}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/HistoryTab;

    invoke-virtual {p1}, Lcom/metamoji/ui/HistoryTab;->getClientData()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_2

    :goto_0
    return-void

    .line 1143
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/HistoryBarDriver$7;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/metamoji/ui/HistoryBarDriver$7;-><init>(Lcom/metamoji/ui/HistoryBarDriver;IILcom/metamoji/nt/NtMRUDocList$Item;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMruItemOpened(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 1

    .line 1040
    invoke-virtual {p2}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 1045
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/ui/HistoryBarDriver$4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/HistoryBarDriver$4;-><init>(Lcom/metamoji/ui/HistoryBarDriver;I)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMruItemStatusChanged(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;Z)V
    .locals 0

    .line 1173
    iget-boolean p3, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMulti:Z

    if-eqz p3, :cond_0

    return-void

    .line 1177
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result p1

    .line 1178
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/ui/HistoryBarDriver$8;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ui/HistoryBarDriver$8;-><init>(Lcom/metamoji/ui/HistoryBarDriver;I)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1192
    iput-boolean p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMulti:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1194
    iput-boolean p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mMulti:Z

    .line 1195
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->initTabs()V

    return-void
.end method

.method public selectItem()V
    .locals 5

    .line 535
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 537
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v3

    .line 538
    iget-object v4, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v4, v2}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/HistoryTab;

    if-eqz v4, :cond_0

    .line 540
    invoke-virtual {v3}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/metamoji/ui/HistoryBarDriver;->isCurrentDoc(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/HistoryTab;->setSelected(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public selectMe(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1206
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/HistoryBarDriver;->selectMeInner(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setMenuItemDrawables(Lcom/metamoji/ui/HistoryMenuItemView;ZZ)V
    .locals 8

    .line 822
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 824
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 826
    sget-object v3, Lcom/metamoji/ui/HistoryBarDriver;->sColorTextMenu:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_0

    .line 827
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/metamoji/ui/HistoryBarDriver;->states:[[I

    const/4 v5, -0x1

    const v6, -0xc5c5c6

    filled-new-array {v5, v6, v6}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sput-object v3, Lcom/metamoji/ui/HistoryBarDriver;->sColorTextMenu:Landroid/content/res/ColorStateList;

    .line 835
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x9a9792

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v3, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbSel:Landroid/graphics/drawable/Drawable;

    .line 836
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x1a1a1b

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v3, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbPress:Landroid/graphics/drawable/Drawable;

    .line 837
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x50506

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v3, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbNor:Landroid/graphics/drawable/Drawable;

    .line 840
    :cond_0
    sget-object v3, Lcom/metamoji/ui/HistoryBarDriver;->sColorTextMenu:Landroid/content/res/ColorStateList;

    .line 841
    sget-object v4, Lcom/metamoji/ui/HistoryBarDriver;->sStateSelected:[I

    sget-object v5, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbSel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 842
    sget-object v5, Lcom/metamoji/ui/HistoryBarDriver;->sStatePressed:[I

    sget-object v6, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 843
    sget-object v6, Lcom/metamoji/ui/HistoryBarDriver;->sStateNormal:[I

    sget-object v7, Lcom/metamoji/ui/HistoryBarDriver;->sColorMbNor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    .line 846
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_tmpl_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 847
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->htab_tmpl_icon_dark:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, v4, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 848
    invoke-virtual {v1, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 849
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 851
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_share_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 852
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->htab_share_icon_dark:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, v4, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 853
    invoke-virtual {v1, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 854
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 856
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->htab_note_icon_lite:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 857
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->htab_note_icon_dark:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, v4, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {v1, v5, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 859
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 861
    :goto_0
    invoke-virtual {p1, v3, v0, v1}, Lcom/metamoji/ui/HistoryMenuItemView;->setDrawables(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/StateListDrawable;)V

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnHeightChangedListener:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 250
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mOnHeightChangedListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBarPane:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/HistoryBarDriver;->isHistoryBarVisible()Z

    move-result v1

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 698
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 701
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->getOnHeightChangedListener()Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 703
    invoke-interface {p1}, Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;->onHistoryBarHeightChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method public toggleVisibility()V
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/metamoji/ui/HistoryBarDriver;->isHistoryBarVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HistoryBarDriver;->setVisibility(Z)V

    return-void
.end method

.method public updateTabContent(I)V
    .locals 3

    if-ltz p1, :cond_3

    .line 356
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    .line 361
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mHistoryBar:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v2, p1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/HistoryTab;

    if-nez p1, :cond_1

    goto :goto_1

    .line 367
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/ui/HistoryBarDriver;->isCurrentDoc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->getCurrentDocumentInfo()V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtMRUDocList;->getDocInfo(Lcom/metamoji/nt/NtMRUDocList$Item;Lcom/metamoji/nt/NtMRUDocList$DocInfo;)Z

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-object v0, v0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/HistoryTab;->setText(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-boolean v0, v0, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfShare:Z

    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver;->mDocInfo:Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    iget-boolean v1, v1, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfTemplate:Z

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryBarDriver;->isCollaboMode()Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/metamoji/ui/HistoryBarDriver;->setTabColor(Lcom/metamoji/ui/HistoryTab;ZZZ)V

    :cond_3
    :goto_1
    return-void
.end method
