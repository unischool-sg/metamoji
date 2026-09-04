.class Lcom/metamoji/nt/NtInteractiveEventManager$5;
.super Ljava/lang/Object;
.source "NtInteractiveEventManager.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtInteractiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtInteractiveEventManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtInteractiveEventManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollChanged()V
    .locals 6

    .line 429
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 431
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 435
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3}, Lcom/metamoji/df/sprite/ViewportListener;->scrollChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 437
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.scrollChanged : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollChanging()V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 234
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 238
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3}, Lcom/metamoji/df/sprite/ViewportListener;->scrollChanging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 240
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.scrollChanging : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollEnd(Z)V
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 254
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 258
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/ViewportListener;->scrollEnd(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 260
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.scrollEnd : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 293
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 297
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/ViewportListener;->scrollInertiaEnd(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 299
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.scrollInertiaEnd : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollInertiaStart()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 273
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 277
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3}, Lcom/metamoji/df/sprite/ViewportListener;->scrollInertiaStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.scrollInertiaStart : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollStart()V
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 215
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 219
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3}, Lcom/metamoji/df/sprite/ViewportListener;->scrollStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 221
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.scrollStart : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sizeChanged(II)V
    .locals 6

    .line 410
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 412
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 416
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3, p1, p2}, Lcom/metamoji/df/sprite/ViewportListener;->sizeChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 418
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.sizeChanged : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zoomChanged()V
    .locals 6

    .line 448
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 450
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 454
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3}, Lcom/metamoji/df/sprite/ViewportListener;->zoomChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 456
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.zoomChanged : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zoomChanging()V
    .locals 6

    .line 329
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 331
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 335
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3}, Lcom/metamoji/df/sprite/ViewportListener;->zoomChanging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 337
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.zoomChanging : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zoomEnd(Z)V
    .locals 6

    .line 349
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 351
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 355
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/ViewportListener;->zoomEnd(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 357
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.zoomEnd : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 390
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 394
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/ViewportListener;->zoomReboundEnd(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 396
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.zoomReboundEnd : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zoomReboundStart()V
    .locals 6

    .line 368
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 370
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 374
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3}, Lcom/metamoji/df/sprite/ViewportListener;->zoomReboundStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 376
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.zoomReboundStart : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zoomStart()V
    .locals 6

    .line 310
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 312
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$5;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 316
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {v3}, Lcom/metamoji/df/sprite/ViewportListener;->zoomStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 318
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.ViewportListener.zoomStart : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
