.class public Lcom/metamoji/un/draw2/library/segment/DrSgSegment;
.super Ljava/lang/Object;
.source "DrSgSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_IS_BOUNDABLE:Ljava/lang/String; = "B"

.field private static final MODEL_PROPERTY_IS_VISIBLE:Ljava/lang/String; = "V"

.field private static final MODEL_PROPERTY_POINTS:Ljava/lang/String; = "P"

.field private static final MODEL_PROPERTY_TYPE:Ljava/lang/String; = "T"

.field private static final MODEL_TYPE:Ljava/lang/String; = "S"


# instance fields
.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private m_delayingSettings:Z

.field private final m_endPoint:Landroid/graphics/PointF;

.field private m_hasEndPoint:Z

.field private m_hasStartPoint:Z

.field private m_isBoundable:Z

.field private m_isVisible:Z

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_points:Lcom/metamoji/cm/PointArray;

.field private m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

.field private final m_startPoint:Landroid/graphics/PointF;

.field private m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    .line 53
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 56
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 76
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    .line 77
    sget-object p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->NONE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 78
    invoke-virtual {v0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 79
    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 v3, 0x0

    .line 80
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 81
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 82
    sget-object v4, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v2, v4}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    const/4 v2, 0x1

    .line 83
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    .line 84
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    .line 85
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    .line 88
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_0

    .line 89
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 90
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->getPointsFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/PointArray;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 91
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->getIsVisibleFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    .line 92
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->getIsBoundableFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    if-nez v4, :cond_1

    .line 97
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v4, v2, :cond_7

    const/4 v7, 0x3

    if-eq v4, v6, :cond_4

    if-eq v4, v7, :cond_2

    goto/16 :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    rem-int/2addr p1, v6

    if-ne p1, v2, :cond_3

    .line 144
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 145
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 146
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 147
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    goto/16 :goto_0

    .line 149
    :cond_3
    invoke-static {v6, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->resetProperties()V

    goto/16 :goto_0

    .line 123
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v4

    if-eq v4, v6, :cond_6

    if-eq v4, v7, :cond_5

    .line 137
    invoke-static {v2, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->resetProperties()V

    goto :goto_0

    .line 131
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 132
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 133
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 134
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {v0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 126
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 127
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 128
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    goto :goto_0

    .line 103
    :cond_7
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v4

    if-eq v4, v2, :cond_9

    if-eq v4, v6, :cond_8

    .line 117
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->resetProperties()V

    goto :goto_0

    .line 111
    :cond_8
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 112
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 113
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 114
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    goto :goto_0

    .line 105
    :cond_9
    invoke-virtual {v0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 106
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 107
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 108
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 158
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    return-void
.end method

.method private static checkNearestStartPointFromSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;Landroid/graphics/PointF;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 1338
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasStartPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p0, 0x1

    return p0

    .line 1343
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->prevSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static checkSegmentModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 1171
    const-string v0, "S"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->type(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static createSegmentsFromBezierPoints(Lcom/metamoji/cm/PointArray;Lcom/metamoji/df/model/IModel;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/PointArray;",
            "Lcom/metamoji/df/model/IModel;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1205
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1208
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1209
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1212
    :cond_1
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ge v2, v4, :cond_2

    .line 1214
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_2
    add-int/lit8 v6, v2, -0x1

    .line 1217
    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_3

    .line 1218
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1221
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    div-int/2addr v6, v5

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1222
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1223
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1224
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 1225
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v6

    const/4 v7, 0x5

    .line 1226
    invoke-static {v3, v5, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1227
    invoke-virtual {v6, v0, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 1229
    :cond_4
    invoke-virtual {v6, v0, v3, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1231
    :goto_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v2, :cond_7

    add-int/lit8 v0, v4, 0x1

    .line 1234
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    add-int/lit8 v4, v4, 0x2

    .line 1235
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1236
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v5

    .line 1237
    invoke-static {v3, v0, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1238
    invoke-virtual {v5, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    goto :goto_2

    .line 1240
    :cond_5
    invoke-virtual {v5, v3, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :goto_2
    if-eqz p2, :cond_6

    .line 1243
    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setPrevSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1245
    :cond_6
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method private static getIsBoundableFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x1

    .line 1291
    const-string v1, "B"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method private static getIsVisibleFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x1

    .line 1285
    const-string v1, "V"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method private static getPointsFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 1280
    const-string v0, "P"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->pointArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;
    .locals 2

    .line 1276
    const-string v0, "T"

    sget-object v1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->NONE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    return-object p0
.end method

.method public static newEmptySegmentModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1180
    const-string v0, "S"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1182
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;
    .locals 1

    if-eqz p0, :cond_0

    .line 1191
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newEmptySegmentModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1192
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-direct {v0, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method

.method private resetProperties()V
    .locals 2

    .line 1261
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->NONE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 1262
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 1263
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1264
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 v0, 0x0

    .line 1265
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 1266
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 1267
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method private static saveIsBoundableToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    .line 1327
    const-string v0, "B"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1328
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1330
    :cond_0
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveIsVisibleToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    .line 1319
    const-string v0, "V"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1320
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1322
    :cond_0
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V
    .locals 2

    .line 1311
    const-string v0, "P"

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1312
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPointArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/cm/PointArray;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1314
    :cond_0
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V
    .locals 3

    .line 1298
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "T"

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1305
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1302
    :cond_0
    invoke-static {v2, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updateBounds()V
    .locals 2

    .line 1256
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->getBoundsWithTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;)V
    .locals 7

    .line 662
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 666
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 669
    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v1

    .line 670
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_f

    const/4 v5, 0x2

    if-eq v2, v5, :cond_8

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    goto/16 :goto_1

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    if-nez v1, :cond_3

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 719
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p3, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 720
    :cond_4
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 723
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-ge v4, v2, :cond_7

    add-int/lit8 v0, v4, 0x1

    .line 724
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    add-int/lit8 v4, v4, 0x2

    .line 725
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v1, :cond_6

    .line 727
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    .line 728
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 730
    :cond_6
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v2, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    .line 732
    :cond_7
    invoke-virtual {p3, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    .line 691
    :cond_8
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 706
    iget-boolean v5, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v2, :cond_d

    if-eqz v5, :cond_16

    .line 693
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    if-nez v1, :cond_9

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 694
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget v2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v2

    if-nez v2, :cond_b

    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {p3, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 695
    :cond_a
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 697
    :cond_b
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    if-nez v1, :cond_c

    .line 699
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 700
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    .line 702
    :cond_c
    iget p2, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 703
    invoke-virtual {p3, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    :cond_d
    if-eqz v5, :cond_16

    .line 707
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v1, :cond_e

    .line 709
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    .line 710
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 712
    :cond_e
    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 713
    invoke-virtual {p3, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    .line 672
    :cond_f
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 683
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v0, :cond_14

    if-eqz v2, :cond_16

    .line 674
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    if-nez v1, :cond_10

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 675
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    iget v2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v2

    if-nez v2, :cond_12

    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {p3, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 676
    :cond_11
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 678
    :cond_12
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    if-nez v1, :cond_13

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 679
    :cond_13
    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 680
    invoke-virtual {p3, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    :cond_14
    if-eqz v2, :cond_16

    .line 684
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    if-nez v1, :cond_15

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 685
    :cond_15
    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 686
    invoke-virtual {p3, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_16
    :goto_1
    return-void
.end method

.method public addToPath(Landroid/graphics/Path;Landroid/graphics/PointF;)V
    .locals 1

    .line 657
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->addToPath(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    return-void
.end method

.method public applyTransform(Landroid/graphics/Matrix;)V
    .locals 2

    .line 752
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->applyTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/PointArray;)V

    .line 762
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    if-eqz v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 765
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v0, :cond_3

    .line 766
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 770
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 773
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_4

    .line 774
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public copyToSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 786
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 791
    :cond_0
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 792
    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->resetProperties()V

    .line 793
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ordinal()I

    move-result v1

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 802
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCurveToLatestStartPointWithControlPoint(Landroid/graphics/PointF;)V

    return-void

    .line 795
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLineToLatestStartPoint()V

    return-void

    .line 810
    :cond_3
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    if-eq v0, v2, :cond_4

    .line 811
    iput-object v2, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v1

    .line 817
    :goto_0
    iget-object v2, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 818
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object v2

    iput-object v2, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    .line 823
    :goto_1
    iget-object v4, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 824
    iget-object v4, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 825
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    iput-boolean v4, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 826
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    iput-boolean v4, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 830
    iget-boolean v4, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    iget-boolean v5, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    if-eq v4, v5, :cond_6

    .line 831
    iput-boolean v5, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    move v4, v3

    goto :goto_2

    :cond_6
    move v4, v1

    .line 837
    :goto_2
    iget-boolean v5, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    iget-boolean v6, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    if-eq v5, v6, :cond_7

    .line 838
    iput-boolean v6, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    move v1, v3

    .line 843
    :cond_7
    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 846
    iget-object v3, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v3, :cond_b

    if-eqz v0, :cond_8

    .line 848
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    :cond_8
    if-eqz v2, :cond_9

    .line 851
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v2, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    :cond_9
    if-eqz v4, :cond_a

    .line 854
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-boolean v2, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveIsVisibleToModel(Lcom/metamoji/df/model/IModel;Z)V

    :cond_a
    if-eqz v1, :cond_b

    .line 857
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-boolean p1, p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveIsBoundableToModel(Lcom/metamoji/df/model/IModel;Z)V

    :cond_b
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1160
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    .line 1161
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    return-void
.end method

.method public distanceToPoint(Landroid/graphics/PointF;F)F
    .locals 7

    .line 885
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    return v1

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto/16 :goto_1

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    .line 924
    :goto_0
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v4

    if-ge v3, v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 925
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    .line 926
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    .line 927
    invoke-static {v0, v5, v4, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    cmpl-float v5, v1, v0

    if-lez v5, :cond_2

    move v1, v0

    :cond_2
    cmpg-float v0, v1, p2

    if-gtz v0, :cond_3

    return v2

    :cond_3
    move-object v0, v4

    goto :goto_0

    .line 906
    :cond_4
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 914
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v0, :cond_5

    if-eqz v4, :cond_8

    .line 908
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 909
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 908
    invoke-static {v0, v1, v3, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_8

    .line 914
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasEndPoint()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 915
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 916
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 915
    invoke-static {v0, v1, v3, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    goto :goto_1

    .line 891
    :cond_6
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 898
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v0, :cond_7

    if-eqz v3, :cond_8

    .line 893
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 898
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasEndPoint()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 899
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    :cond_8
    :goto_1
    cmpg-float p1, v1, p2

    if-gtz p1, :cond_9

    return v2

    :cond_9
    sub-float/2addr v1, p2

    return v1
.end method

.method public distanceToSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F
    .locals 7

    .line 948
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    return v1

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto/16 :goto_1

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    .line 991
    :goto_0
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v4

    if-ge v3, v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 992
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    .line 993
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    .line 994
    invoke-static {v0, v5, v4, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    cmpl-float v5, v1, v0

    if-lez v5, :cond_2

    move v1, v0

    :cond_2
    cmpg-float v0, v1, p3

    if-gtz v0, :cond_3

    return v2

    :cond_3
    move-object v0, v4

    goto :goto_0

    .line 971
    :cond_4
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 980
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v0, :cond_5

    if-eqz v4, :cond_8

    .line 973
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 974
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 973
    invoke-static {v0, v1, v3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_8

    .line 980
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasEndPoint()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 981
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 982
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 981
    invoke-static {v0, v1, v3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    goto :goto_1

    .line 954
    :cond_6
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 962
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v0, :cond_7

    if-eqz v3, :cond_8

    .line 956
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 962
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasEndPoint()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 963
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    :cond_8
    :goto_1
    cmpg-float p1, v1, p3

    if-gtz p1, :cond_9

    return v2

    :cond_9
    sub-float/2addr v1, p3

    return v1
.end method

.method public endPoint()Landroid/graphics/PointF;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getBoundsWithTransform(Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 1019
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->getBoundsWithTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method public getBoundsWithTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 8

    .line 1022
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1023
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    .line 1024
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    .line 1088
    :cond_0
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 1089
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    .line 1090
    :goto_0
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v5

    if-ge v2, v5, :cond_a

    add-int/lit8 v5, v2, 0x1

    .line 1091
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    add-int/lit8 v2, v2, 0x2

    .line 1092
    iget-object v7, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    if-nez v0, :cond_1

    .line 1095
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1096
    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v6

    .line 1097
    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v7

    .line 1095
    invoke-static {v3, v6, v7, v4, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v3

    .line 1094
    invoke-static {p2, v3, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_1

    .line 1103
    :cond_1
    invoke-static {v3, v6, v5, v4, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v3

    .line 1102
    invoke-static {p2, v3, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    :goto_1
    move-object v3, v5

    goto :goto_0

    .line 1053
    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 1070
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v1, :cond_4

    if-eqz v3, :cond_a

    .line 1062
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    .line 1056
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 1057
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 1058
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1056
    invoke-static {v0, v1, p1, v4, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-object p2

    .line 1062
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 1063
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 1062
    invoke-static {v1, p1, v0, v4, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-object p2

    :cond_4
    if-eqz v3, :cond_a

    .line 1070
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasEndPoint()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1078
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 1072
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 1073
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 1074
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1072
    invoke-static {v0, v1, p1, v4, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-object p2

    .line 1078
    :cond_5
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 1079
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 1078
    invoke-static {p1, v0, v1, v4, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-object p2

    .line 1026
    :cond_6
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 1039
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v1, :cond_8

    if-eqz v2, :cond_a

    .line 1033
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    .line 1029
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 1030
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1029
    invoke-static {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-object p2

    .line 1033
    :cond_7
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-static {v1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-object p2

    :cond_8
    if-eqz v2, :cond_a

    .line 1039
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasEndPoint()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1045
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-nez v0, :cond_9

    .line 1041
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    .line 1042
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1041
    invoke-static {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    return-object p2

    .line 1045
    :cond_9
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-static {p1, v0, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    :cond_a
    :goto_2
    return-object p2
.end method

.method public hasEndPoint()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    return v0
.end method

.method public hasStartPoint()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    return v0
.end method

.method public isBoundable()Z
    .locals 1

    .line 1144
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1125
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    return v0
.end method

.method public model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public prevSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    return-object v0
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 871
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->checkSegmentModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 876
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 877
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveIsVisibleToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 878
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveIsBoundableToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 872
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setCircle(Landroid/graphics/PointF;F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 404
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 409
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ELLIPSE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 412
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCirclePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;F)V

    .line 416
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    .line 417
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->resetProperties()V

    return-void

    .line 423
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 424
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 425
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 426
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 429
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 432
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_3

    .line 433
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 434
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 438
    :cond_3
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    return-void
.end method

.method public setCircleArcInDegrees(Landroid/graphics/PointF;FFFZ)V
    .locals 11

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 452
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 457
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ELLIPSE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 460
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 466
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p3

    float-to-double v6, p3

    .line 467
    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p3

    float-to-double v8, p3

    move-object v4, p1

    move v5, p2

    move/from16 v10, p5

    .line 463
    invoke-static/range {v3 .. v10}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    .line 469
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    .line 470
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->resetProperties()V

    return-void

    .line 476
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 477
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 478
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 479
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 482
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 485
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_3

    .line 486
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 487
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 491
    :cond_3
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    return-void
.end method

.method public setCircleArcInRadians(Landroid/graphics/PointF;FFFZ)V
    .locals 6

    .line 501
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result v3

    .line 502
    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p5

    .line 499
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCircleArcInDegrees(Landroid/graphics/PointF;FFFZ)V

    return-void
.end method

.method public setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 347
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->CURVE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 350
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 354
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 357
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 358
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 359
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    const/4 p2, 0x1

    .line 360
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 363
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 366
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p2, :cond_1

    .line 367
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 368
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 372
    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    return-void
.end method

.method public setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 316
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->CURVE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 319
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 323
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 324
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 327
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 328
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    .line 329
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 330
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 333
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 336
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_1

    .line 337
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 338
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    :cond_1
    const/4 p1, 0x0

    .line 342
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    return-void
.end method

.method public setCurveToLatestStartPointWithControlPoint(Landroid/graphics/PointF;)V
    .locals 2

    .line 382
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->checkNearestStartPointFromSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    .line 390
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->CURVE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 393
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setEllipse(Landroid/graphics/PointF;FF)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, p3

    if-nez v0, :cond_1

    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCircle(Landroid/graphics/PointF;F)V

    return-void

    .line 524
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ELLIPSE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 527
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipsePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FF)V

    .line 531
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    .line 532
    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->resetProperties()V

    return-void

    .line 538
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 539
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 540
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 541
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 544
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 547
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_4

    .line 548
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 549
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 553
    :cond_4
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    return-void

    .line 513
    :cond_5
    :goto_0
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V
    .locals 17

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    cmpl-float v0, p2, p3

    if-nez v0, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 574
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCircleArcInDegrees(Landroid/graphics/PointF;FFFZ)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    .line 583
    sget-object v1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ELLIPSE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 586
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-lez v1, :cond_2

    .line 587
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 589
    :cond_2
    iget-object v8, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    .line 593
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v1

    float-to-double v12, v1

    .line 594
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v1

    float-to-double v14, v1

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v16, p6

    .line 589
    invoke-static/range {v8 .. v16}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipseArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V

    .line 596
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 597
    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 598
    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->resetProperties()V

    return-void

    .line 603
    :cond_3
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v7, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 604
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 605
    iput-boolean v2, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 606
    iput-boolean v2, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 609
    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 612
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_4

    .line 613
    iget-object v2, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 614
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v2, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 618
    :cond_4
    iput-boolean v7, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    return-void

    :cond_5
    :goto_0
    move-object/from16 v0, p0

    .line 568
    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setEllipseArcInRadians(Landroid/graphics/PointF;FFFFZ)V
    .locals 7

    .line 630
    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result v4

    .line 631
    invoke-static {p5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p6

    .line 627
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    return-void
.end method

.method public setIsBoundable(Z)V
    .locals 1

    .line 1147
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1150
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    .line 1151
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 1152
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveIsBoundableToModel(Lcom/metamoji/df/model/IModel;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 1128
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1131
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    .line 1132
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 1133
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveIsVisibleToModel(Lcom/metamoji/df/model/IModel;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLine(Landroid/graphics/PointF;)V
    .locals 2

    .line 263
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->LINE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 266
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 272
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 273
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 274
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 278
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 281
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 283
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    .line 287
    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    return-void
.end method

.method public setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 233
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->LINE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 236
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 240
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 243
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 244
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    .line 246
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    .line 249
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    .line 252
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_1

    .line 253
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;)V

    .line 254
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->savePointsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/PointArray;)V

    :cond_1
    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    return-void
.end method

.method public setLineToLatestStartPoint()V
    .locals 2

    .line 297
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->checkNearestStartPointFromSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    .line 305
    sget-object v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->LINE:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    return-void
.end method

.method public setPrevSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V
    .locals 5

    .line 191
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 194
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    if-eqz p1, :cond_3

    .line 196
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_prevSegment:Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->checkNearestStartPointFromSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 198
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->ordinal()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 212
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 217
    :goto_0
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_delayingSettings:Z

    .line 221
    :cond_3
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    if-nez p1, :cond_4

    .line 222
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->updateBounds()V

    :cond_4
    return-void
.end method

.method public startPoint()Landroid/graphics/PointF;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1353
    iget-object v2, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v2}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1355
    iget-object v3, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v3

    const/16 v4, 0x28

    .line 1356
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1358
    iget-object v4, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v4, v3}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v4

    .line 1359
    const-string v6, ", ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1362
    :cond_0
    iget-object v3, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "NULL"

    goto :goto_1

    .line 1363
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v4, v4, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v5, v5, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v6, v6, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v7, v7, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "((%g, %g), (%g, %g))"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v16, v3

    .line 1364
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1372
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    .line 1373
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isVisible:Z

    const-string v7, "NO"

    const-string v8, "YES"

    if-eqz v6, :cond_2

    move-object v6, v8

    goto :goto_2

    :cond_2
    move-object v6, v7

    :goto_2
    iget-boolean v9, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_isBoundable:Z

    if-eqz v9, :cond_3

    move-object v7, v8

    .line 1374
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1375
    iget-boolean v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasStartPoint:Z

    const-string v10, "NO "

    if-eqz v1, :cond_4

    move-object v1, v10

    move-object v10, v8

    goto :goto_3

    :cond_4
    move-object v1, v10

    :goto_3
    iget-object v11, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-object v12, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_startPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 1376
    iget-boolean v13, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_hasEndPoint:Z

    if-eqz v13, :cond_5

    move-object v13, v8

    goto :goto_4

    :cond_5
    move-object v13, v1

    :goto_4
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v1, v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_endPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object v8, v2

    filled-new-array/range {v4 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 1364
    const-string v2, "<DrSgSegment: 0x%s\n  type: %s, visible: %s, boundable: %s\n  points(%d): [%s]\n  start: %s (%g, %g)\n    end: %s (%g, %g)\n  bounds: %s\n>"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->m_type:Lcom/metamoji/un/draw2/library/segment/DrSgSegment$DrSgSegmentType;

    return-object v0
.end method
