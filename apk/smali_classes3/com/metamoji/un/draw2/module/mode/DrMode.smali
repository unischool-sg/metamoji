.class public Lcom/metamoji/un/draw2/module/mode/DrMode;
.super Ljava/lang/Object;
.source "DrMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/mode/DrMode$Process;
    }
.end annotation


# instance fields
.field private m_closed:Z

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_interactionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/EnumMap<",
            "Lcom/metamoji/un/draw2/module/mode/DrMode$Process;",
            "Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 86
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    return-void
.end method

.method private beginInteractionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;ILjava/util/EnumMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            "I",
            "Ljava/util/EnumMap<",
            "Lcom/metamoji/un/draw2/module/mode/DrMode$Process;",
            "Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;",
            ">;)V"
        }
    .end annotation

    .line 307
    sget-object p2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 309
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->longPressed()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 314
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 321
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 322
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 323
    sget-object p2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_3

    .line 327
    sget-object p2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    :cond_3
    if-nez p2, :cond_4

    const/4 p1, 0x2

    .line 332
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 337
    :cond_4
    invoke-interface {p2, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 338
    invoke-interface {p2, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->setIsActive(Z)V

    .line 341
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private endInteractionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;ILjava/util/EnumMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            "I",
            "Ljava/util/EnumMap<",
            "Lcom/metamoji/un/draw2/module/mode/DrMode$Process;",
            "Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;",
            ">;)V"
        }
    .end annotation

    .line 445
    sget-object p2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 447
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 452
    :cond_0
    invoke-interface {p2, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 453
    invoke-interface {p2, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->setIsActive(Z)V

    .line 456
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private moveInteractionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;ILjava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            "I",
            "Ljava/util/EnumMap<",
            "Lcom/metamoji/un/draw2/module/mode/DrMode$Process;",
            "Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;",
            ">;)V"
        }
    .end annotation

    .line 346
    sget-object p2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 348
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 353
    :cond_0
    invoke-interface {p2, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 7

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_closed:Z

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 283
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 284
    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 288
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/EnumMap;

    .line 289
    sget-object v5, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    sget-object v6, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-static {v5, v6}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    .line 290
    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    if-eqz v6, :cond_0

    .line 292
    invoke-interface {v6}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->destroy()V

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {v4}, Ljava/util/EnumMap;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 299
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    return-void

    :catchall_0
    move-exception v0

    .line 297
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_closed:Z

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/DrMode;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 100
    throw v0
.end method

.method public getCurrentInteractionForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
    .locals 3

    .line 247
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 248
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 252
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EnumMap;

    .line 261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    return-object v1

    .line 268
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    if-nez p1, :cond_3

    const/4 p1, 0x2

    .line 270
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 261
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getInteractionForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/module/mode/DrMode$Process;)Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 163
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 167
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 170
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NONE:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    if-ne p2, v0, :cond_2

    const/4 p1, 0x2

    .line 171
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EnumMap;

    if-eqz p1, :cond_3

    .line 180
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    monitor-exit v0

    return-object p1

    .line 182
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 5

    .line 201
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 202
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 206
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/EnumMap;

    .line 214
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-nez v3, :cond_2

    .line 216
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 221
    :cond_2
    sget-object v1, Lcom/metamoji/un/draw2/module/mode/DrMode$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->type()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v0, :cond_6

    if-eq v1, v2, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    return-void

    .line 233
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/metamoji/un/draw2/module/mode/DrMode;->endInteractionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;ILjava/util/EnumMap;)V

    return-void

    .line 229
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/metamoji/un/draw2/module/mode/DrMode;->longPressInteractionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;ILjava/util/EnumMap;)V

    return-void

    .line 226
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/metamoji/un/draw2/module/mode/DrMode;->moveInteractionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;ILjava/util/EnumMap;)V

    return-void

    .line 223
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/metamoji/un/draw2/module/mode/DrMode;->beginInteractionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;ILjava/util/EnumMap;)V

    return-void

    :catchall_0
    move-exception p1

    .line 214
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method longPressInteractionWithTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;ILjava/util/EnumMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            "I",
            "Ljava/util/EnumMap<",
            "Lcom/metamoji/un/draw2/module/mode/DrMode$Process;",
            "Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;",
            ">;)V"
        }
    .end annotation

    .line 358
    sget-object p2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 360
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 365
    :cond_0
    sget-object v1, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    if-eqz v1, :cond_1

    .line 368
    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 369
    invoke-interface {p2, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 370
    invoke-interface {p2, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->setIsActive(Z)V

    .line 373
    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->LONG_PRESSED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 374
    invoke-interface {v1, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-interface {p2, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 384
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 385
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    if-nez v2, :cond_2

    .line 389
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    :cond_2
    if-nez v2, :cond_4

    .line 394
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    goto :goto_1

    .line 397
    :cond_3
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    if-nez v2, :cond_4

    .line 401
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;

    :cond_4
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 408
    sget-object p2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 409
    invoke-interface {v2, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 410
    invoke-interface {v2, v3}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->setIsActive(Z)V

    .line 413
    sget-object p2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->LONG_PRESSED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 418
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    if-eq p2, v2, :cond_6

    .line 423
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 424
    invoke-interface {p2, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 425
    invoke-interface {p2, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->setIsActive(Z)V

    .line 428
    sget-object p2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 429
    invoke-interface {v2, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 430
    invoke-interface {v2, v3}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->setIsActive(Z)V

    .line 433
    sget-object p2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->LONG_PRESSED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 438
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p3, p1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public setInteractionForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;Lcom/metamoji/un/draw2/module/mode/DrMode$Process;)V
    .locals 4

    .line 113
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 114
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 118
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 121
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NONE:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    if-ne p3, v0, :cond_2

    const/4 p1, 0x2

    .line 122
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 127
    invoke-interface {p2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 128
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    .line 136
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    if-nez v2, :cond_4

    .line 138
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 139
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/DrMode;->m_interactionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    :cond_4
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {v2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    .line 150
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 151
    monitor-exit v0

    return-void

    .line 157
    :cond_5
    invoke-virtual {v2, p3, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
