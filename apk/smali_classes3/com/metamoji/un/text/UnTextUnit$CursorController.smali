.class abstract Lcom/metamoji/un/text/UnTextUnit$CursorController;
.super Ljava/lang/Object;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CursorController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method private constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 9160
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$CursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$CursorController;-><init>(Lcom/metamoji/un/text/UnTextUnit;)V

    return-void
.end method


# virtual methods
.method abstract forSelection()Z
.end method

.method getHysteresisPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 7

    .line 9170
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$CursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    .line 9171
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    .line 9172
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 9173
    iget v3, p1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/graphics/PointF;->y:F

    :goto_0
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndexForVertical(F)I

    move-result v3

    .line 9175
    invoke-virtual {v2, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p2

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v1, :cond_3

    .line 9178
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v1

    add-int/lit8 v6, p2, -0x1

    if-ne v3, v6, :cond_1

    .line 9181
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 9182
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget-object v6, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v1, v5

    add-float/2addr v6, v1

    cmpg-float v1, v4, v6

    if-gez v1, :cond_2

    move v3, p2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, p2, 0x1

    if-ge v5, v1, :cond_2

    .line 9189
    invoke-virtual {v2, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p2

    .line 9190
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v6, p2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object p2, p2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p2, v4

    add-float/2addr v6, p2

    cmpg-float p2, v1, v6

    if-gez p2, :cond_2

    move v3, v5

    .line 9193
    :cond_2
    :goto_1
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, p1, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getPositionForHorizontal(IFLcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v1, p2, 0x1

    if-ne v3, v1, :cond_4

    .line 9198
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 9199
    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v1, v5

    add-float/2addr v6, v1

    cmpg-float v1, v4, v6

    if-gez v1, :cond_5

    move v3, p2

    goto :goto_2

    :cond_4
    if-lez p2, :cond_5

    .line 9206
    invoke-virtual {v2, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 9207
    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v1, v4

    add-float/2addr v6, v1

    cmpg-float v1, v5, v6

    if-gez v1, :cond_5

    add-int/lit8 v3, p2, -0x1

    .line 9210
    :cond_5
    :goto_2
    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3, p1, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getPositionForHorizontal(IFLcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method abstract updatePosition(Lcom/metamoji/un/text/UnTextUnit$HandleView;Landroid/graphics/PointF;)V
.end method

.method abstract updateRotate()V
.end method
