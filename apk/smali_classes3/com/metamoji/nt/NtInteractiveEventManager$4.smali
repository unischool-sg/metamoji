.class Lcom/metamoji/nt/NtInteractiveEventManager$4;
.super Ljava/lang/Object;
.source "NtInteractiveEventManager.java"

# interfaces
.implements Lcom/metamoji/df/sprite/LongPressListener;


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

    .line 138
    iput-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public longPressCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 191
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 195
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/LongPressListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/LongPressListener;->longPressCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/LongPressListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.LongPressListener.longPressCancel : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public longPressEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 175
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 179
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/LongPressListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/LongPressListener;->longPressEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/LongPressListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.LongPressListener.longPressEnd : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public longPressMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 159
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 163
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/LongPressListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/LongPressListener;->longPressMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/LongPressListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.LongPressListener.longPressMove : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public longPressStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 143
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager$4;->this$0:Lcom/metamoji/nt/NtInteractiveEventManager;

    iget-object v0, v0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 147
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/LongPressListener;

    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/LongPressListener;->longPressStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/LongPressListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NtInteractiveEventManager.LongPressListener.longPressStart : %s"

    invoke-static {v3, v5, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
