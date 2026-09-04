.class Lcom/metamoji/un/text/UnTextUnit$HandleView;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field private static final FADE_OUT_DURATION:I = 0x15e

.field private static final FADE_OUT_START_DELAY:I = 0xbb8

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2


# instance fields
.field private controller:Lcom/metamoji/un/text/UnTextUnit$CursorController;

.field private cursorView:Landroid/view/View;

.field private handleKind:I

.field private isShowing:Z

.field private position:Landroid/graphics/Point;

.field private pressedOffset:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$CursorController;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 8832
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8833
    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->controller:Lcom/metamoji/un/text/UnTextUnit$CursorController;

    .line 8835
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->retainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 8839
    :cond_0
    const-string/jumbo v0, "textCursors"

    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtRetainData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/TextCursors;

    if-nez p2, :cond_1

    goto :goto_0

    .line 8844
    :cond_1
    iput p3, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->handleKind:I

    .line 8845
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result p1

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 8858
    iget-object p1, p2, Lcom/metamoji/un/text/TextCursors;->_selL:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    return-void

    .line 8860
    :cond_3
    iget-object p1, p2, Lcom/metamoji/un/text/TextCursors;->_selR:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    return-void

    .line 8848
    :cond_4
    iget-object p1, p2, Lcom/metamoji/un/text/TextCursors;->_ins:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 8852
    iget-object p1, p2, Lcom/metamoji/un/text/TextCursors;->_selR:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    return-void

    .line 8854
    :cond_6
    iget-object p1, p2, Lcom/metamoji/un/text/TextCursors;->_selL:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    return-void
.end method

.method private convertPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 3

    .line 9009
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9010
    invoke-virtual {p0, p2, v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 9011
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 9012
    invoke-virtual {p0, p3, p2}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 9014
    iget p3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p1, v1, p3

    .line 9015
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 9016
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 9018
    new-instance p1, Landroid/graphics/PointF;

    aget p2, v1, v2

    aget p3, v1, p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private moveTo(Landroid/graphics/PointF;)V
    .locals 3

    .line 9153
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->position:Landroid/graphics/Point;

    .line 9154
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 9155
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->position:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 9156
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 4

    .line 9023
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 9024
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9025
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-direct {p0, v1, p1, v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->convertPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 9026
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9027
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-direct {p0, v1, v2, v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->convertPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 9029
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->pressedOffset:Landroid/graphics/PointF;

    .line 9031
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->show()V

    .line 9034
    sget-object p1, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->ReNone:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object v0, v0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    if-eq p1, v0, :cond_0

    .line 9035
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object v0, p1, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$smswitchReeditPendingMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    .line 9037
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->clearContextMenu()V

    return-void
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 4

    .line 9044
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->pressedOffset:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    return-void

    .line 9058
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->convertPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 9059
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->controller:Lcom/metamoji/un/text/UnTextUnit$CursorController;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->pressedOffset:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->pressedOffset:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v3

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/un/text/UnTextUnit$CursorController;->updatePosition(Lcom/metamoji/un/text/UnTextUnit$HandleView;Landroid/graphics/PointF;)V

    return-void
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 1

    .line 9065
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->controller:Lcom/metamoji/un/text/UnTextUnit$CursorController;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit$CursorController;->forSelection()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9066
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object p1, p1, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$smreeditModeIsPending(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Z

    move-result p1

    .line 9071
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_0

    .line 9068
    iget-object p1, v0, Lcom/metamoji/un/text/UnTextUnit;->_reeditMode:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$smswitchReeditPendingMode(Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$menterStrokeReeditMode(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$ReeditMode;)V

    return-void

    .line 9071
    :cond_0
    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mappearContextMenu(Lcom/metamoji/un/text/UnTextUnit;)V

    return-void

    .line 9074
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->hideDelayed()V

    return-void
.end method


# virtual methods
.method public hideDelayed()V
    .locals 3

    .line 9093
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 9094
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x15e

    .line 9095
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    .line 9096
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public hideImmediately()V
    .locals 2

    .line 9109
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 9110
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 9111
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->isShowing:Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 9115
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->isShowing:Z

    return v0
.end method

.method public killFocus()V
    .locals 2

    .line 8909
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8911
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8912
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 8913
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 8914
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->isShowing:Z

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8923
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 8924
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->isShowing:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 8937
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 8942
    :cond_0
    invoke-direct {p0, p2}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 8946
    :cond_1
    invoke-direct {p0, p2}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 8939
    :cond_2
    invoke-direct {p0, p2}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->onActionDown(Landroid/view/MotionEvent;)V

    :goto_0
    return v0
.end method

.method public positionAtCursor(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 4

    .line 9122
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 9123
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    .line 9124
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->controller:Lcom/metamoji/un/text/UnTextUnit$CursorController;

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit$CursorController;->forSelection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9125
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 9127
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9128
    iget v2, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v0

    add-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 9131
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9132
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v0

    add-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 9136
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v2

    .line 9137
    invoke-virtual {v2, p1, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v0

    .line 9138
    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 9140
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v2, p1

    iget p1, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 9142
    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v2, p1

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9145
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1, v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mtextSpriteToViewport(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 9146
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->moveTo(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setFocus()V
    .locals 1

    .line 8901
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8902
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 8866
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 9080
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 9082
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 9083
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->position:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 9084
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9086
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 9087
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 9088
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->isShowing:Z

    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 8959
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8960
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 8961
    check-cast v0, Landroid/view/View;

    .line 8962
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 8963
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8971
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8975
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 8986
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8987
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 8988
    check-cast v0, Landroid/view/View;

    .line 8989
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 8990
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 8998
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9002
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9003
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 9004
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public verticalWritingChanged()V
    .locals 4

    .line 8870
    iget v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->handleKind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 8871
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->retainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8875
    :cond_0
    const-string/jumbo v1, "textCursors"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtRetainData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/TextCursors;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8879
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    .line 8880
    iget v2, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->handleKind:I

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 8889
    iget-object v0, v0, Lcom/metamoji/un/text/TextCursors;->_selL:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    return-void

    .line 8891
    :cond_3
    iget-object v0, v0, Lcom/metamoji/un/text/TextCursors;->_selR:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    return-void

    :cond_4
    if-eqz v1, :cond_5

    .line 8883
    iget-object v0, v0, Lcom/metamoji/un/text/TextCursors;->_selR:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    return-void

    .line 8885
    :cond_5
    iget-object v0, v0, Lcom/metamoji/un/text/TextCursors;->_selL:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$HandleView;->cursorView:Landroid/view/View;

    :cond_6
    :goto_0
    return-void
.end method
