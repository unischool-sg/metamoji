.class public Lcom/metamoji/un/form/UnFormPositionData;
.super Ljava/lang/Object;
.source "UnFormPositionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;
    }
.end annotation


# instance fields
.field private m_hLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_scheduleRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/RectEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInfoY(Lcom/metamoji/cm/RectEx;Ljava/util/ArrayList;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/RectEx;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;-><init>(Lcom/metamoji/un/form/UnFormPositionData;Ljava/util/ArrayList;FF)V

    .line 89
    iget-object p2, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 90
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cleanUp()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_scheduleRectMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public hLinesInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public inRectHLines(Lcom/metamoji/cm/RectEx;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/RectEx;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cm/RectEx;

    .line 121
    invoke-static {p1, v2}, Lcom/metamoji/cm/RectEx;->Intersection(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v4, Landroid/graphics/PointF;

    iget v5, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v6, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 127
    iget v5, v4, Landroid/graphics/PointF;->x:F

    neg-float v5, v5

    iget v6, v4, Landroid/graphics/PointF;->y:F

    neg-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    .line 131
    iget-object v5, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_hLines:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;

    .line 132
    new-instance v5, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;

    invoke-virtual {v2}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->hLines()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->startX()F

    move-result v7

    iget v8, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->endX()F

    move-result v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    invoke-direct {v5, p0, v6, v7, v2}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;-><init>(Lcom/metamoji/un/form/UnFormPositionData;Ljava/util/ArrayList;FF)V

    .line 134
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public scheduleInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/RectEx;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_scheduleRectMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public setScheduleInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/RectEx;",
            ">;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/metamoji/un/form/UnFormPositionData;->m_scheduleRectMap:Ljava/util/HashMap;

    return-void
.end method
