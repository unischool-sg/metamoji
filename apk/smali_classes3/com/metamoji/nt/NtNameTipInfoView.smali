.class public Lcom/metamoji/nt/NtNameTipInfoView;
.super Landroid/widget/FrameLayout;
.source "NtNameTipInfoView.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;,
        Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;
    }
.end annotation


# static fields
.field private static final FADEOUT_CHECK_INTERVAL:I = 0x28

.field private static final HIDE_INTERVAL:I = 0x3e8

.field private static final NAME_TIP_OFFSET_X:I = 0xf

.field private static final NAME_TIP_OFFSET_Y:I = 0x23

.field private static final m_lockObject:Ljava/lang/Object;


# instance fields
.field private final _fadeoutTask:Ljava/lang/Runnable;

.field private _hideTemp:Z

.field private _popupInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtNameTipLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final _timer:Lcom/metamoji/cm/UiTimer;


# direct methods
.method static bridge synthetic -$$Nest$fget_hideTemp(Lcom/metamoji/nt/NtNameTipInfoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_hideTemp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_hideTemp(Lcom/metamoji/nt/NtNameTipInfoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_hideTemp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLayoutLabelRect(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipLabelInfo;Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNameTipInfoView;->getLayoutLabelRect(Lcom/metamoji/nt/NtNameTipLabelInfo;Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPopupViewInfo(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;)Lcom/metamoji/nt/NtNameTipLabelInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->getPopupViewInfo(Ljava/lang/String;)Lcom/metamoji/nt/NtNameTipLabelInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlayoutLabel(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNameTipInfoView;->layoutLabel(Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlayoutLabelWithTextViewLayout(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->layoutLabelWithTextViewLayout(Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLabel(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipLabelInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->updateLabel(Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetm_lockObject()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/metamoji/nt/NtNameTipInfoView;->m_lockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtNameTipInfoView;->m_lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    .line 49
    new-instance p1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {p1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_timer:Lcom/metamoji/cm/UiTimer;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_hideTemp:Z

    .line 92
    new-instance p1, Lcom/metamoji/nt/NtNameTipInfoView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$1;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_fadeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    .line 49
    new-instance p1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {p1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_timer:Lcom/metamoji/cm/UiTimer;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_hideTemp:Z

    .line 92
    new-instance p1, Lcom/metamoji/nt/NtNameTipInfoView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$1;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_fadeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    .line 49
    new-instance p1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {p1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_timer:Lcom/metamoji/cm/UiTimer;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_hideTemp:Z

    .line 92
    new-instance p1, Lcom/metamoji/nt/NtNameTipInfoView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$1;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_fadeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method private addEditAreaEventListener()V
    .locals 1

    .line 269
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    return-void
.end method

.method private getLayoutLabelRect(Lcom/metamoji/nt/NtNameTipLabelInfo;Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;)Landroid/graphics/RectF;
    .locals 5

    .line 364
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getLaserPointerCanvas()Lcom/metamoji/ui/LaserPointerCanvas;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getPt()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->transformViewportPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 371
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 372
    iget v0, p1, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x420c0000    # 35.0f

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 374
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, v2, v3, v4, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 376
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 377
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    add-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 380
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_1

    .line 381
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p1, p2, p2, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 382
    invoke-static {p1, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getNameTipInfoView()Lcom/metamoji/nt/NtNameTipInfoView;
    .locals 2

    .line 120
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 130
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getNameTipInfoView()Lcom/metamoji/nt/NtNameTipInfoView;

    move-result-object v0

    return-object v0
.end method

.method private getPopupViewInfo(Ljava/lang/String;)Lcom/metamoji/nt/NtNameTipLabelInfo;
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 471
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtNameTipLabelInfo;

    return-object p1
.end method

.method private layoutLabel(Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/metamoji/nt/NtNameTipInfoView$4;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipLabelInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private layoutLabelWithTextViewLayout(Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 399
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtNameTipLabelInfo;

    .line 401
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 402
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->layoutLabel(Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    :cond_2
    return-void
.end method

.method private removeEditAreaEventListener()V
    .locals 1

    .line 287
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 301
    :cond_2
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    return-void
.end method

.method private temporarilyHide()V
    .locals 2

    .line 675
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$11;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$11;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private temporarilyRestore()V
    .locals 2

    .line 693
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$12;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$12;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLabel(Lcom/metamoji/nt/NtNameTipLabelInfo;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;Landroid/content/Context;)V

    .line 316
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v4, 0x800033

    .line 317
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v4, 0x0

    .line 318
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 319
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getColor()I

    move-result v2

    .line 323
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 324
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v6, 0x41000000    # 8.0f

    .line 325
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 326
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 327
    invoke-virtual {v5, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 328
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 330
    invoke-static {v2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtNameTipInfoView;->getContrastColor(Landroid/graphics/Color;)I

    move-result v2

    .line 332
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x8

    const/4 v6, 0x5

    .line 333
    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 334
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 335
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 338
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    .line 339
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 341
    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtNameTipInfoView$TextViewLayout;->addView(Landroid/view/View;)V

    .line 343
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->addView(Landroid/view/View;)V

    .line 344
    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setPopupLabel(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addLabel(Ljava/lang/String;Lcom/metamoji/ui/LaserPointerCanvas;I)V
    .locals 2

    .line 485
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/nt/NtNameTipInfoView$6;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;Lcom/metamoji/ui/LaserPointerCanvas;I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearPopupInfos()V
    .locals 2

    .line 233
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$3;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$3;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_hideTemp:Z

    .line 262
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->removeEditAreaEventListener()V

    return-void
.end method

.method public getContrastColor(Landroid/graphics/Color;)I
    .locals 6

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v2

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    float-to-double v2, p1

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const p1, 0x3f25a5a6

    const/4 v0, 0x0

    .line 354
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public hideAllLabels()V
    .locals 2

    .line 627
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$9;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$9;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideLabel(Ljava/lang/String;)V
    .locals 2

    .line 555
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$8;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtNameTipInfoView$8;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public layoutLabels()V
    .locals 2

    .line 444
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$5;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$5;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method nameTipPhase(Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;)Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;
    .locals 1

    .line 159
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->laserPointerData()Ljava/util/HashMap;

    move-result-object p1

    .line 160
    const-string v0, "PH"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 165
    sget-object p1, Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;->NameTipPhase_NONE:Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;

    return-object p1

    .line 164
    :cond_0
    sget-object p1, Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;->NameTipPhase_END:Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;

    return-object p1

    .line 163
    :cond_1
    sget-object p1, Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;->NameTipPhase_POINT:Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;

    return-object p1

    .line 162
    :cond_2
    sget-object p1, Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;->NameTipPhase_BEGIN:Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;

    return-object p1
.end method

.method nameTipTopLeft(Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;)Landroid/graphics/PointF;
    .locals 3

    .line 170
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->laserPointerData()Ljava/util/HashMap;

    move-result-object p1

    .line 171
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 172
    const-string v1, "EX"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 173
    const-string v1, "EY"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public performPointerDirection(Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;Lcom/metamoji/ui/LaserPointerCanvas;)V
    .locals 2

    .line 140
    iget-object p2, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->uid:Ljava/lang/String;

    .line 141
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->nameTipPhase(Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;)Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNameTipInfoView$NameTipPhase;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p3, 0x2

    if-eq v0, p3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNameTipInfoView;->hideLabel(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->nameTipTopLeft(Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->showLabel(Ljava/lang/String;Landroid/graphics/PointF;)V

    return-void

    .line 151
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->laserPointerData()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->getLaserPointerColor(Ljava/util/HashMap;)I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->addLabel(Ljava/lang/String;Lcom/metamoji/ui/LaserPointerCanvas;I)V

    return-void
.end method

.method removePopupLabel(Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V
    .locals 2

    .line 597
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 601
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNameTipInfoView;->removeView(Landroid/view/View;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    .line 610
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 611
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setUserId(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->setLaserPointerCanvas(Lcom/metamoji/ui/LaserPointerCanvas;)V

    .line 613
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNameTipLabelInfo;->clearTimer()V

    .line 616
    iget-object p2, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 617
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    .line 618
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->removeAllViews()V

    const/4 p1, 0x0

    .line 619
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->showInfoView(Z)V

    :cond_2
    return-void
.end method

.method public scrollChanged()V
    .locals 1

    .line 758
    new-instance v0, Lcom/metamoji/nt/NtNameTipInfoView$13;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNameTipInfoView$13;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtNameTipInfoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    .line 742
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyHide()V

    return-void
.end method

.method public scrollStart()V
    .locals 0

    .line 719
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyHide()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->layoutLabels()V

    :cond_0
    return-void
.end method

.method public showInfoView(Z)V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_timer:Lcom/metamoji/cm/UiTimer;

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_fadeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x28

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->addEditAreaEventListener()V

    .line 200
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/metamoji/nt/INtEditor;->setNameTipInfoViewVisibility(I)V

    .line 205
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtNameTipInfoView$2;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtNameTipInfoView$2;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->clearPopupInfos()V

    .line 219
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 221
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/metamoji/nt/INtEditor;->setUnitEditUserInfoViewVisibility(I)V

    .line 226
    :cond_4
    :goto_1
    iput-boolean v6, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_hideTemp:Z

    return-void
.end method

.method public showLabel(Ljava/lang/String;Landroid/graphics/PointF;)V
    .locals 2

    .line 526
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtNameTipInfoView$7;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    .line 816
    new-instance p1, Lcom/metamoji/nt/NtNameTipInfoView$14;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$14;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLabels()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView;->_popupInfos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 658
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$10;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$10;-><init>(Lcom/metamoji/nt/NtNameTipInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zoomChanged()V
    .locals 0

    return-void
.end method

.method public zoomChanging()V
    .locals 0

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 785
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyHide()V

    return-void
.end method

.method public zoomStart()V
    .locals 0

    .line 771
    invoke-direct {p0}, Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyHide()V

    return-void
.end method
