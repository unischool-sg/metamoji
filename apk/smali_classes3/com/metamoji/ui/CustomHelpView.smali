.class public Lcom/metamoji/ui/CustomHelpView;
.super Landroid/widget/FrameLayout;
.source "CustomHelpView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field _helpcontroller:Lcom/metamoji/ui/help/HelpController;

.field _paint:Landroid/graphics/Paint;

.field _viewheight:F

.field _viewwidth:F

.field private mOnCustomTouchListener:Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;


# direct methods
.method static bridge synthetic -$$Nest$mCloseHelp(Lcom/metamoji/ui/CustomHelpView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/CustomHelpView;->CloseHelp()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/metamoji/ui/CustomHelpView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomHelpView;->_paint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomHelpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/metamoji/ui/CustomHelpView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;

    .line 83
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/CustomHelpView;->_paint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomHelpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/metamoji/ui/CustomHelpView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;

    .line 83
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/CustomHelpView;->_paint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomHelpView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private CloseHelp()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/metamoji/ui/CustomHelpView;->_helpcontroller:Lcom/metamoji/ui/help/HelpController;

    invoke-virtual {v0}, Lcom/metamoji/ui/help/HelpController;->hideHelp()V

    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/CustomHelpView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/CustomHelpView;->setWillNotDraw(Z)V

    .line 65
    new-instance v0, Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;-><init>(Lcom/metamoji/ui/CustomHelpView;)V

    iput-object v0, p0, Lcom/metamoji/ui/CustomHelpView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;

    .line 66
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/CustomHelpView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iput-object p1, p0, Lcom/metamoji/ui/CustomHelpView;->_context:Landroid/content/Context;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 76
    iget-object v0, p0, Lcom/metamoji/ui/CustomHelpView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/CustomHelpView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    iget-object v1, p0, Lcom/metamoji/ui/CustomHelpView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;->dispose()V

    .line 79
    iput-object v0, p0, Lcom/metamoji/ui/CustomHelpView;->mOnCustomTouchListener:Lcom/metamoji/ui/CustomHelpView$OnCustomTouchListener;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomHelpView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomHelpView;->_helpcontroller:Lcom/metamoji/ui/help/HelpController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/help/HelpController;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 124
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    int-to-float p2, p4

    .line 125
    iput p2, p1, Lcom/metamoji/ui/CustomHelpView;->_viewwidth:F

    int-to-float p2, p5

    .line 126
    iput p2, p1, Lcom/metamoji/ui/CustomHelpView;->_viewheight:F

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomHelpView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/CustomHelpView$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/CustomHelpView$1;-><init>(Lcom/metamoji/ui/CustomHelpView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method

.method public setHelpController(Lcom/metamoji/ui/help/HelpController;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/metamoji/ui/CustomHelpView;->_helpcontroller:Lcom/metamoji/ui/help/HelpController;

    return-void
.end method
