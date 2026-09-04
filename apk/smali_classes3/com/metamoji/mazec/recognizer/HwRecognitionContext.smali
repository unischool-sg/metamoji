.class public Lcom/metamoji/mazec/recognizer/HwRecognitionContext;
.super Ljava/lang/Object;
.source "HwRecognitionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;
    }
.end annotation


# instance fields
.field private hContext:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    return-void
.end method


# virtual methods
.method public clearHwSelection()V
    .locals 2

    .line 256
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/MazecRACLibJNI;->clearHwSelection(J)V

    return-void
.end method

.method public clearStrokes()V
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/MazecRACLibJNI;->clearStrokes(J)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public getNativeContext()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 260
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/MazecRACLibJNI;->getVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recognize(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Lcom/metamoji/mazec/recognizer/HwRecognitionResult;
    .locals 21

    .line 129
    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmStrokes(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 133
    new-array v6, v9, [I

    .line 134
    new-array v7, v9, [J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v9, :cond_0

    .line 136
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 137
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v5

    .line 138
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 139
    aput v5, v6, v2

    .line 140
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v10

    aput-wide v10, v7, v2

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-array v4, v3, [F

    .line 145
    new-array v5, v3, [F

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v9, :cond_2

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 148
    invoke-virtual {v8}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v8

    .line 149
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move v11, v1

    :goto_2
    if-ge v11, v10, :cond_1

    .line 151
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    .line 152
    iget v13, v12, Landroid/graphics/PointF;->x:F

    aput v13, v4, v3

    .line 153
    iget v12, v12, Landroid/graphics/PointF;->y:F

    aput v12, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmSplitPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;

    move-result-object v0

    const/16 v20, 0x0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmSplitPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 160
    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmSplitPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmSplitPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-int/lit8 v10, v3, 0x1

    .line 163
    aput v8, v0, v3

    move v3, v10

    goto :goto_3

    :cond_3
    move-object/from16 v16, v0

    goto :goto_4

    :cond_4
    move-object/from16 v16, v20

    .line 166
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmJoinPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmJoinPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 167
    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmJoinPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmJoinPositions(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-int/lit8 v10, v3, 0x1

    .line 170
    aput v8, v0, v3

    move v3, v10

    goto :goto_5

    :cond_5
    move-object/from16 v17, v0

    goto :goto_6

    :cond_6
    move-object/from16 v17, v20

    :goto_6
    move-object/from16 v0, p0

    .line 173
    iget-wide v2, v0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmGuidelines(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)[F

    move-result-object v8

    aget v10, v8, v1

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmGuidelines(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)[F

    move-result-object v1

    const/4 v8, 0x1

    aget v11, v1, v8

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmGuidelines(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)[F

    move-result-object v1

    const/4 v8, 0x2

    aget v12, v1, v8

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmGuidelines(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)[F

    move-result-object v1

    const/4 v8, 0x3

    aget v13, v1, v8

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmWordspacingCoef(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)F

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmFilter(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->-$$Nest$fgetmRACExecContext(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Lcom/metamoji/mazec/RACExecContext;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcom/metamoji/mazec/RACExecContext;->getHandle()J

    move-result-wide v18

    const/4 v8, 0x0

    .line 173
    invoke-static/range {v2 .. v19}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognize(J[F[F[I[J[FIFFFFFI[F[FJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_7

    return-object v20

    .line 193
    :cond_7
    new-instance v3, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-direct {v3, v1, v2}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;-><init>(J)V

    return-object v3
.end method

.method public setFilter(I)V
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/MazecRACLibJNI;->setFilter(JI)V

    return-void
.end method

.method public setGuidelines(FFFF)V
    .locals 6

    .line 39
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/mazec/MazecRACLibJNI;->setGuidelines(JFFFF)V

    return-void
.end method

.method public setHwBlockSelection(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;)V"
        }
    .end annotation

    .line 229
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 230
    new-array v1, v0, [I

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 234
    invoke-virtual {v6}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getStrokeOrders()[J

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v7, v5, 0x1

    .line 235
    aput v6, v1, v5

    add-int/2addr v4, v6

    move v5, v7

    goto :goto_0

    .line 239
    :cond_0
    new-array v2, v4, [J

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 242
    invoke-virtual {v5}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getStrokeOrders()[J

    move-result-object v5

    .line 243
    array-length v6, v5

    .line 244
    invoke-static {v5, v3, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    goto :goto_1

    .line 248
    :cond_1
    iget-wide v3, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    invoke-static {v3, v4, v2, v1, v0}, Lcom/metamoji/mazec/MazecRACLibJNI;->setHwBlockSelection(J[J[II)V

    return-void
.end method

.method public setHwCandidateSelection(Lcom/metamoji/mazec/recognizer/HwCandidates;Ljava/lang/String;)V
    .locals 6

    .line 219
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getStrokeOrders()[J

    move-result-object v2

    .line 221
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    array-length v3, v2

    const/4 v5, -0x1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/metamoji/mazec/MazecRACLibJNI;->setHwCandidateSelection(J[JILjava/lang/String;I)V

    return-void
.end method

.method public setWordspacingCoef(F)V
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->hContext:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/MazecRACLibJNI;->setWordspacingCoef(JF)V

    return-void
.end method
