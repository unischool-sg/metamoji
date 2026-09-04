.class public Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;
.super Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;
.source "DrOvDrawerLayer.java"


# instance fields
.field private final m_drawers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 25
    invoke-super {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setAutoVisible(Z)V

    const/4 v0, 0x1

    .line 26
    invoke-super {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    return-void
.end method

.method static synthetic lambda$removeAllDrawers$1(Ljava/util/ArrayList;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;

    const/4 v1, 0x0

    .line 96
    invoke-interface {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->setLayer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$removeDrawer$0(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-interface {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->setLayer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;)V

    return-void
.end method


# virtual methods
.method public addDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-interface {p1, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->setLayer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 46
    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public checkDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeAllDrawers()Z

    .line 134
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->clear()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeAllDrawers()Z

    return-void
.end method

.method invokeLater(Ljava/lang/Runnable;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 149
    const-string v0, "could not post action"

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeAllDrawers()Z
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;

    .line 81
    invoke-interface {v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->ending()Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x0

    .line 83
    invoke-interface {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->setLayer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    new-instance v3, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Viewport;->postRepaintCallback(Ljava/lang/Runnable;)V

    .line 101
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->repaint()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 101
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 58
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v2

    if-eq v2, p0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_drawers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->ending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->postRepaintCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 70
    invoke-interface {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->setLayer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 59
    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setAutoVisible(Z)V
    .locals 0

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
    .locals 1

    .line 118
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->DRAWER:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    return-object v0
.end method
