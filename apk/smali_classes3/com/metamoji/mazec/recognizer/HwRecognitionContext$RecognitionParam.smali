.class public Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;
.super Ljava/lang/Object;
.source "HwRecognitionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/recognizer/HwRecognitionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionParam"
.end annotation


# instance fields
.field private mFilter:I

.field private mGuidelines:[F

.field private mJoinPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRACExecContext:Lcom/metamoji/mazec/RACExecContext;

.field private mSplitPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

.field private mWordspacingCoef:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmFilter(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mFilter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuidelines(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)[F
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mGuidelines:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJoinPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mJoinPositions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRACExecContext(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Lcom/metamoji/mazec/RACExecContext;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mRACExecContext:Lcom/metamoji/mazec/RACExecContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSplitPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mSplitPositions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrokes(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWordspacingCoef(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mWordspacingCoef:F

    return p0
.end method

.method public constructor <init>(Lcom/metamoji/mazec/stroke/HwStrokes;I[FFLjava/util/List;Ljava/util/List;Lcom/metamoji/mazec/RACExecContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            "I[FF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/mazec/RACExecContext;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 68
    iput p2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mFilter:I

    .line 69
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mGuidelines:[F

    .line 70
    iput p4, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mWordspacingCoef:F

    .line 71
    iput-object p7, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mRACExecContext:Lcom/metamoji/mazec/RACExecContext;

    const/4 p1, 0x0

    if-nez p5, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 72
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mSplitPositions:Ljava/util/List;

    if-nez p6, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mJoinPositions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execContext()Lcom/metamoji/mazec/RACExecContext;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mRACExecContext:Lcom/metamoji/mazec/RACExecContext;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Strokes:count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 85
    iget-object v5, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mStrokes:Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {v5, v4}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v5

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-pc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->countOfPoints()I

    move-result v6

    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v6, :cond_0

    .line 90
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v7

    .line 91
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    add-int/lit8 v6, v6, -0x1

    .line 92
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 93
    iget v7, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v9, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v7, v8, v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, " sp:[%.02f, %.02f] ep:[%.02f, %.02f]"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v5

    .line 95
    const-string v6, " bounds:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v7, v8, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "[%.02f, %.02f, %.02f, %.02f]"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 99
    :cond_1
    const-string v1, "filter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mFilter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mGuidelines:[F

    const-string v4, " "

    if-eqz v1, :cond_3

    .line 101
    const-string v1, "guidelines:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mGuidelines:[F

    array-length v5, v1

    :goto_1
    if-ge v3, v5, :cond_2

    aget v6, v1, v3

    .line 103
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mSplitPositions:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 108
    const-string/jumbo v1, "splitpos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mSplitPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_5
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mJoinPositions:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 115
    const-string v1, "joinpos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->mJoinPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
