.class abstract Lcom/metamoji/ui/TextUnitEdit$CursorController;
.super Ljava/lang/Object;
.source "TextUnitEdit.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/TextUnitEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CursorController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/TextUnitEdit;


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/TextUnitEdit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1569
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$CursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/TextUnitEdit$CursorController;-><init>(Lcom/metamoji/ui/TextUnitEdit;)V

    return-void
.end method


# virtual methods
.method getHysteresisPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 6

    .line 1586
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$CursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    .line 1587
    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndexForVertical(F)I

    move-result v1

    .line 1589
    invoke-virtual {v0, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p2

    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_0

    .line 1593
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    .line 1594
    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget-object v4, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    cmpg-float v2, v3, v4

    if-gez v2, :cond_1

    move v1, p2

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    .line 1601
    invoke-virtual {v0, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    .line 1602
    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget-object v4, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    cmpg-float v2, v3, v4

    if-gez v2, :cond_1

    add-int/lit8 v1, p2, -0x1

    .line 1606
    :cond_1
    :goto_0
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit$CursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p2}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getPositionForHorizontal(IFLcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method abstract hide()V
.end method

.method abstract isShowing()Z
.end method

.method abstract show()V
.end method

.method abstract updatePosition()V
.end method

.method abstract updatePosition(Lcom/metamoji/ui/TextUnitEdit$HandleView;Landroid/graphics/PointF;)V
.end method
