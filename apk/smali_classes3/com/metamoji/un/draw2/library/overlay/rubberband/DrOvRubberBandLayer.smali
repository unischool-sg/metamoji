.class public Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;
.super Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;
.source "DrOvRubberBandLayer.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private m_enableNonOwnerRubberBands:Z

.field private m_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;",
            ">;"
        }
    .end annotation
.end field

.field private m_movementThreshold:F

.field private m_rubberbands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_map:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_enableNonOwnerRubberBands:Z

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_movementThreshold:F

    return-void
.end method

.method private hitTest(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 239
    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->hitTestByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    monitor-exit v0

    return-object v2

    .line 243
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)Z
    .locals 3

    .line 61
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->layer()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 68
    invoke-super {p0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setLayer(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;)V

    .line 75
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->density()F

    move-result v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setScale(F)V

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 64
    :try_start_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public beginMoveActionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)Z
    .locals 2

    .line 200
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 208
    :cond_1
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->beginMoveByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->touchBegan()V

    const/4 p1, 0x1

    return p1
.end method

.method public cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->touchCancelled()V

    .line 187
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public checkRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)Z
    .locals 1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->removeAllRubberBands()Z

    .line 33
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->clear()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->removeAllRubberBands()Z

    .line 39
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->destroy()V

    return-void
.end method

.method public enableNonOwnerRubberBands()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_enableNonOwnerRubberBands:Z

    return v0
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 130
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->type()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->touchEnded()V

    .line 158
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->longPressed()V

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->touchMoved()V

    :cond_4
    :goto_0
    return-object v0

    .line 133
    :cond_5
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->hitTest(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 135
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->touchBegan()V

    :cond_6
    return-object v0
.end method

.method public internalUpdate()V
    .locals 4

    .line 249
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_ignoreCoordinates:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->density()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v1

    div-float/2addr v0, v1

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 253
    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setScale(F)V

    goto :goto_1

    .line 255
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->internalUpdate()V

    return-void

    :catchall_0
    move-exception v0

    .line 255
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public movementThreshold()F
    .locals 1

    .line 226
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_movementThreshold:F

    return v0
.end method

.method public removeAllRubberBands()Z
    .locals 3

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setLayer(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 106
    invoke-super {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    .line 107
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)Z
    .locals 3

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->layer()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    move-result-object v2

    if-eq v2, p0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_rubberbands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-super {p0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    .line 90
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setLayer(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;)V

    const/4 p1, 0x1

    return p1

    .line 83
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEnableNonOwnerRubberBands(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_enableNonOwnerRubberBands:Z

    return-void
.end method

.method public setMovementThreshold(F)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->m_movementThreshold:F

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->RUBBER_BAND:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    return-object v0
.end method
