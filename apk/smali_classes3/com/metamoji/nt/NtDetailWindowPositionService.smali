.class public Lcom/metamoji/nt/NtDetailWindowPositionService;
.super Ljava/lang/Object;
.source "NtDetailWindowPositionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;
    }
.end annotation


# instance fields
.field private m_dic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/metamoji/nt/NtDetailWindowPositionService;->m_dic:Ljava/util/HashMap;

    return-void
.end method

.method private downFrameInner(Ljava/util/ArrayList;Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;)Landroid/graphics/PointF;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;",
            ")",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 170
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->dwRect()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->isLargeMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->feedStep()F

    move-result v4

    float-to-int v4, v4

    goto :goto_0

    :cond_0
    move v4, v3

    .line 174
    :goto_0
    iget v5, v1, Lcom/metamoji/cm/RectEx;->y:F

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v11, v7

    move v10, v8

    move v12, v9

    :goto_1
    if-ge v8, v6, :cond_6

    .line 181
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpg-float v14, v13, v5

    if-gez v14, :cond_1

    goto :goto_2

    :cond_1
    cmpl-float v14, v11, v7

    if-nez v14, :cond_2

    sub-float v11, v13, v5

    move v12, v13

    :cond_2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v4, 0x1

    if-ne v10, v14, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    sub-float/2addr v13, v12

    .line 195
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->feedStep()F

    move-result v0

    mul-float/2addr v13, v0

    add-float/2addr v13, v12

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v6, -0x1

    .line 200
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    if-nez v2, :cond_5

    .line 201
    iget v14, v1, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v14, v5

    cmpg-float v14, v14, v13

    if-gez v14, :cond_5

    add-int/lit8 v6, v6, -0x2

    .line 203
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v13, v0

    .line 204
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->feedStep()F

    move-result v0

    mul-float/2addr v13, v0

    add-float/2addr v5, v13

    .line 205
    new-instance v0, Landroid/graphics/PointF;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-direct {v0, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    move v13, v9

    :goto_3
    cmpl-float v0, v13, v9

    if-eqz v0, :cond_7

    sub-float/2addr v13, v11

    goto :goto_4

    .line 215
    :cond_7
    iget v0, v1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->windowStepRate()F

    move-result v2

    mul-float/2addr v0, v2

    add-float v13, v5, v0

    .line 217
    :goto_4
    new-instance v0, Landroid/graphics/PointF;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-direct {v0, v1, v13}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public downFrame(Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;)Landroid/graphics/PointF;
    .locals 5

    .line 143
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->dwRect()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDetailWindowPositionService;->hLines(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->forceWindowStep()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->hLines()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 149
    :goto_0
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget v4, v0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 152
    invoke-direct {p0, v1, p1}, Lcom/metamoji/nt/NtDetailWindowPositionService;->downFrameInner(Ljava/util/ArrayList;Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 155
    :cond_1
    iget v1, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->windowStepRate()F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public hLines(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/metamoji/nt/NtDetailWindowPositionService;->m_dic:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 231
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    iget p1, p1, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr p1, v3

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 232
    iget-object p1, p0, Lcom/metamoji/nt/NtDetailWindowPositionService;->m_dic:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cm/RectEx;

    .line 234
    invoke-virtual {v2, v0}, Lcom/metamoji/cm/RectEx;->contains(Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    iget-object p1, p0, Lcom/metamoji/nt/NtDetailWindowPositionService;->m_dic:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public nextFrame(Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;)Landroid/graphics/PointF;
    .locals 6

    .line 103
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDetailWindowPositionService;->downFrame(Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 105
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->useMarginLine()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->marginLine()Ljava/util/ArrayList;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->dwRect()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/cm/RectEx;->x:F

    float-to-double v2, p1

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v4, v1

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    .line 111
    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public upFrame(Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;)Landroid/graphics/PointF;
    .locals 3

    .line 127
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDetailWindowPositionService;->downFrame(Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;)Landroid/graphics/PointF;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;->dwRect()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 129
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v0, v1

    .line 130
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method
