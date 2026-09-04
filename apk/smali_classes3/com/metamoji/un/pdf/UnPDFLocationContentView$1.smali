.class Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "UnPDFLocationContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/pdf/UnPDFLocationContentView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _drag:I

.field _movingMask:Z

.field final synthetic this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;


# direct methods
.method constructor <init>(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 202
    iput p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_drag:I

    .line 203
    iput-boolean p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_movingMask:Z

    return-void
.end method

.method private moveHandle(FF)V
    .locals 8

    .line 282
    iget p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_drag:I

    and-int/lit8 p2, p1, 0x2

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-ne p2, v4, :cond_e

    and-int/lit8 p2, p1, 0x8

    if-ne p2, v3, :cond_5

    .line 416
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 417
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 418
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 419
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 421
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 422
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 423
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 424
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 427
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v6, v6, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v5, v6, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 431
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 432
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 434
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 435
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 438
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    div-float/2addr p1, p2

    .line 439
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result v0

    div-float/2addr p2, v0

    .line 440
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, p1, v0

    .line 443
    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    if-lez v0, :cond_4

    .line 441
    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 443
    :cond_4
    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 445
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 446
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    :cond_5
    and-int/2addr p1, v2

    .line 327
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    if-ne p1, v2, :cond_b

    .line 381
    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 382
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 383
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 384
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 386
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 387
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 388
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 389
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_7

    .line 392
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 395
    :cond_7
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v6, v6, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v5, p2, p1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 396
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_8

    .line 397
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 399
    :cond_8
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    .line 400
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 403
    :cond_9
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    div-float/2addr p1, p2

    .line 404
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result v0

    div-float/2addr p2, v0

    .line 405
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, p1, v0

    .line 408
    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    if-lez v0, :cond_a

    .line 406
    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 408
    :cond_a
    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 410
    :goto_1
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 411
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    .line 327
    :cond_b
    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 328
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 329
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 330
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 331
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 332
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_c

    .line 333
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 335
    :cond_c
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v6, v6, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v7, v7, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v5, v6, p1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 336
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_d

    .line 337
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr p2, v5

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 339
    :cond_d
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    div-float/2addr p1, p2

    .line 340
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v0, p1, v0

    sub-float/2addr v5, v0

    iput v5, p2, Landroid/graphics/RectF;->top:F

    .line 341
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 342
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 343
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    :cond_e
    and-int/lit8 p2, p1, 0x1

    if-ne p2, v1, :cond_1d

    and-int/lit8 p2, p1, 0x8

    if-ne p2, v3, :cond_14

    .line 451
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 452
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 453
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 454
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 456
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 457
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 458
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_f

    .line 459
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 461
    :cond_f
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_10

    .line 462
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 465
    :cond_10
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v6, v6, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, p1, v5, v6, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 466
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_11

    .line 467
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 469
    :cond_11
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_12

    .line 470
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 473
    :cond_12
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    div-float/2addr p1, p2

    .line 474
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result v0

    div-float/2addr p2, v0

    .line 475
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, p1, v0

    .line 478
    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    if-lez v0, :cond_13

    .line 476
    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 478
    :cond_13
    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 480
    :goto_2
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 481
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    :cond_14
    and-int/2addr p1, v2

    .line 306
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    if-ne p1, v2, :cond_1a

    .line 348
    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 349
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 350
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 351
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 352
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 353
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 354
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_15

    .line 355
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 357
    :cond_15
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_16

    .line 358
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 360
    :cond_16
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v6, v6, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p1, p2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_17

    .line 362
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 364
    :cond_17
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_18

    .line 365
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 368
    :cond_18
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    div-float/2addr p1, p2

    .line 369
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result v0

    div-float/2addr p2, v0

    .line 370
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, p1, v0

    .line 373
    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    if-lez v0, :cond_19

    .line 371
    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 373
    :cond_19
    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 375
    :goto_3
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 376
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    .line 306
    :cond_1a
    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 307
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 308
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 309
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 310
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 311
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p2, p2, p1

    if-gez p2, :cond_1b

    .line 312
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 314
    :cond_1b
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v6, v6, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v7, v7, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p1, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 315
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1c

    .line 316
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr p2, v5

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 318
    :cond_1c
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    div-float/2addr p1, p2

    .line 319
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v0, p1, v0

    sub-float/2addr v5, v0

    iput v5, p2, Landroid/graphics/RectF;->top:F

    .line 320
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 321
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 322
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    :cond_1d
    and-int/lit8 p2, p1, 0x8

    if-ne p2, v3, :cond_20

    .line 510
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 511
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 512
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 513
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 515
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 516
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1e

    .line 517
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 520
    :cond_1e
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v6, v6, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v7, v7, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2, v5, v6, v7, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1f

    .line 522
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr p2, v5

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 524
    :cond_1f
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    div-float/2addr p1, p2

    .line 525
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v0, p1, v0

    sub-float/2addr v5, v0

    iput v5, p2, Landroid/graphics/RectF;->left:F

    .line 526
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 527
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 528
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    :cond_20
    and-int/2addr p1, v2

    if-ne p1, v2, :cond_23

    .line 486
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 487
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 488
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 489
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 492
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 493
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, p2, p1

    if-gez p2, :cond_21

    .line 494
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 497
    :cond_21
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v6, v6, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v7, v7, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v5, p1, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 498
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_22

    .line 499
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr p2, v5

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 501
    :cond_22
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F

    move-result p2

    div-float/2addr p1, p2

    .line 502
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v0, p1, v0

    sub-float/2addr v5, v0

    iput v5, p2, Landroid/graphics/RectF;->left:F

    .line 503
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 504
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 505
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_4

    :cond_23
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_24

    .line 533
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_24

    .line 534
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    .line 538
    :cond_24
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->calcHandleRects()V

    .line 540
    iget p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_drag:I

    and-int/lit8 p2, p1, 0x2

    if-ne p2, v4, :cond_25

    .line 541
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    goto :goto_5

    :cond_25
    and-int/2addr p1, v1

    if-ne p1, v1, :cond_26

    .line 543
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    .line 545
    :cond_26
    :goto_5
    iget p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_drag:I

    and-int/lit8 p2, p1, 0x8

    if-ne p2, v3, :cond_27

    .line 546
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    return-void

    :cond_27
    and-int/2addr p1, v2

    if-ne p1, v2, :cond_28

    .line 548
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles([I)V

    :cond_28
    return-void
.end method

.method private moveMask(FF)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles()V

    .line 562
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v1, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    neg-float p1, p1

    neg-float p2, p2

    .line 579
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 580
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "\u6a2a\u3078=%f:%f"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 582
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 583
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v1, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    .line 585
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    if-gez v0, :cond_0

    .line 584
    iget-object p1, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v1, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 586
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p1, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr p1, v0

    .line 588
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v1, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    .line 590
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    if-gez v0, :cond_2

    .line 589
    iget-object p2, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 590
    :cond_2
    iget-object v0, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v1, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 591
    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr p2, v0

    .line 593
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v1, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "\u6307\u5b9a=%f:%f"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 595
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->calcHandleRects()V

    .line 596
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object p2, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    .line 597
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidateHandles()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_drag:I

    .line 215
    iput-boolean v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_movingMask:Z

    .line 216
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 217
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 218
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->handleHitTest(FF)I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    const/4 v3, 0x0

    iput v3, v2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offX:F

    .line 220
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iput v3, v2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offY:F

    const/4 v2, 0x1

    if-ltz v1, :cond_8

    const/4 p1, 0x5

    const/4 v0, 0x4

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, p1, :cond_2

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v4, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offX:F

    goto :goto_2

    .line 225
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v4, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offX:F

    goto :goto_2

    .line 223
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v4, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget v5, v5, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offX:F

    :goto_2
    if-eqz v1, :cond_7

    if-eq v1, p1, :cond_7

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x6

    if-eq v1, p1, :cond_6

    if-ne v1, v0, :cond_5

    goto :goto_3

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget v3, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    sub-float/2addr v0, v3

    iput v0, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offY:F

    goto :goto_5

    .line 232
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget v3, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    sub-float/2addr v0, v3

    iput v0, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offY:F

    goto :goto_5

    .line 230
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v0, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget v3, v3, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    sub-float/2addr v0, v3

    iput v0, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offY:F

    .line 236
    :goto_5
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-static {p1, v1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->-$$Nest$mindexToBits(Lcom/metamoji/un/pdf/UnPDFLocationContentView;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_drag:I

    return v2

    .line 238
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget-object v1, v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 239
    iput-boolean v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_movingMask:Z

    return v2

    :cond_9
    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 258
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 259
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 260
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p2, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offX:F

    add-float/2addr p2, v0

    iput p2, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventX:F

    .line 261
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget p2, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->this$0:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iget v0, v0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_offY:F

    add-float/2addr p2, v0

    iput p2, p1, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_eventY:F

    .line 262
    iget p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_drag:I

    if-eqz p1, :cond_0

    .line 263
    invoke-direct {p0, p3, p4}, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->moveHandle(FF)V

    const/4 p1, 0x1

    return p1

    .line 265
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->_movingMask:Z

    if-eqz p1, :cond_1

    .line 266
    invoke-direct {p0, p3, p4}, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;->moveMask(FF)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
