.class public Lcom/metamoji/nt/NtAutoScroller;
.super Ljava/lang/Object;
.source "NtAutoScroller.java"

# interfaces
.implements Lcom/metamoji/nt/IAutoScrollSupporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtAutoScroller$Listener;
    }
.end annotation


# static fields
.field private static final AUTOSCROLL_INSET:F = 50.0f

.field private static final AUTOSCROLL_TIMER_INTERVAL:J = 0x12cL

.field private static final AUTOSCROLL_VELOCITY:F = 50.0f


# instance fields
.field _canScroll:Z

.field _dx:F

.field _dy:F

.field _inset:F

.field private _listener:Lcom/metamoji/nt/NtAutoScroller$Listener;

.field _noteController:Lcom/metamoji/nt/NtNoteController;

.field _scrollTimer:Lcom/metamoji/cm/UiTimer;

.field _step:F

.field _topMargin:F


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_canScroll:Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_scrollTimer:Lcom/metamoji/cm/UiTimer;

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_dx:F

    .line 29
    iput p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_dy:F

    .line 30
    iput p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    .line 31
    iput p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_step:F

    .line 32
    iput p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_topMargin:F

    return-void
.end method

.method private didAutoScroll(FF)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_listener:Lcom/metamoji/nt/NtAutoScroller$Listener;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/NtAutoScroller$Listener;->didAutoScroll(FF)V

    :cond_0
    return-void
.end method

.method private willAutoScroll(FF)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_listener:Lcom/metamoji/nt/NtAutoScroller$Listener;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/NtAutoScroller$Listener;->willAutoScroll(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public autoScrollingBegan(Landroid/graphics/PointF;Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x42480000    # 50.0f

    .line 42
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    .line 43
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_step:F

    .line 47
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getTopAppBarHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_topMargin:F

    .line 50
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 51
    invoke-static {p1, p2, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 54
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    cmpg-float p2, p2, v1

    if-ltz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->x:F

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    sub-float/2addr v1, v2

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    iget v2, p0, Lcom/metamoji/nt/NtAutoScroller;->_topMargin:F

    add-float/2addr v1, v2

    cmpg-float p2, p2, v1

    if-ltz p2, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    sub-float/2addr p2, v0

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_canScroll:Z

    return-void
.end method

.method public autoScrollingEnded()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_scrollTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_scrollTimer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method public autoScrollingMoved(Landroid/graphics/PointF;Landroid/view/View;)V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 63
    invoke-static {p1, p2, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 67
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    cmpg-float p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_0

    .line 69
    iget p2, p0, Lcom/metamoji/nt/NtAutoScroller;->_step:F

    neg-float p2, p2

    iput p2, p0, Lcom/metamoji/nt/NtAutoScroller;->_dx:F

    :goto_0
    move p2, v2

    goto :goto_1

    .line 70
    :cond_0
    iget p2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    sub-float/2addr v3, v4

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    .line 72
    iget p2, p0, Lcom/metamoji/nt/NtAutoScroller;->_step:F

    iput p2, p0, Lcom/metamoji/nt/NtAutoScroller;->_dx:F

    goto :goto_0

    .line 74
    :cond_1
    iput v1, p0, Lcom/metamoji/nt/NtAutoScroller;->_dx:F

    const/4 p2, 0x0

    .line 77
    :goto_1
    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    iget v5, p0, Lcom/metamoji/nt/NtAutoScroller;->_topMargin:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 79
    iget p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_step:F

    neg-float p1, p1

    iput p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_dy:F

    :goto_2
    move p2, v2

    goto :goto_3

    .line 80
    :cond_2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/metamoji/nt/NtAutoScroller;->_inset:F

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 82
    iget p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_step:F

    iput p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_dy:F

    goto :goto_2

    .line 84
    :cond_3
    iput v1, p0, Lcom/metamoji/nt/NtAutoScroller;->_dy:F

    .line 87
    :goto_3
    iget-boolean p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_canScroll:Z

    if-nez p1, :cond_4

    if-nez p2, :cond_6

    .line 90
    iput-boolean v2, p0, Lcom/metamoji/nt/NtAutoScroller;->_canScroll:Z

    return-void

    .line 109
    :cond_4
    iget-object p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_scrollTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz p2, :cond_5

    if-nez p1, :cond_6

    .line 99
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_scrollTimer:Lcom/metamoji/cm/UiTimer;

    .line 100
    new-instance v1, Lcom/metamoji/nt/NtAutoScroller$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtAutoScroller$1;-><init>(Lcom/metamoji/nt/NtAutoScroller;)V

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 111
    invoke-virtual {p1}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_scrollTimer:Lcom/metamoji/cm/UiTimer;

    :cond_6
    return-void
.end method

.method scrollTimerFired()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_VIEW_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/metamoji/nt/NtAutoScroller;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    .line 131
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 132
    iget v3, p0, Lcom/metamoji/nt/NtAutoScroller;->_dx:F

    div-float/2addr v3, v1

    .line 133
    iget v4, p0, Lcom/metamoji/nt/NtAutoScroller;->_dy:F

    div-float/2addr v4, v1

    .line 134
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v1

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->x:F

    .line 135
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v1

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 136
    invoke-direct {p0, v3, v4}, Lcom/metamoji/nt/NtAutoScroller;->willAutoScroll(FF)V

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    .line 138
    invoke-direct {p0, v3, v4}, Lcom/metamoji/nt/NtAutoScroller;->didAutoScroll(FF)V

    return-void
.end method

.method public setListener(Lcom/metamoji/nt/NtAutoScroller$Listener;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/metamoji/nt/NtAutoScroller;->_listener:Lcom/metamoji/nt/NtAutoScroller$Listener;

    return-void
.end method
