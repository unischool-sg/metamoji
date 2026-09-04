.class Lcom/metamoji/nt/NtInteractiveEventManager$2;
.super Ljava/lang/Object;
.source "NtInteractiveEventManager.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchListener;


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

    .line 48
    iput-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 101
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 105
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/TouchListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/TouchListener;->touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.TouchListener.touchCancel : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 85
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 89
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/TouchListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/TouchListener;->touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.TouchListener.touchEnd : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 69
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 73
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/TouchListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/TouchListener;->touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.TouchListener.touchMove : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 53
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$2;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 57
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/TouchListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/TouchListener;->touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.TouchListener.touchStart : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
