.class public Lcom/metamoji/nt/NtInteractiveEventManager;
.super Ljava/lang/Object;
.source "NtInteractiveEventManager.java"


# instance fields
.field private final _contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

.field _contextClickListenerList:Lcom/metamoji/ui/UiEventListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/UiEventListeners<",
            "Lcom/metamoji/df/sprite/ContextClickListener2;",
            ">;"
        }
    .end annotation
.end field

.field private final _longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

.field _longPressListenerList:Lcom/metamoji/ui/UiEventListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/UiEventListeners<",
            "Lcom/metamoji/df/sprite/LongPressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _tapListener:Lcom/metamoji/df/sprite/TapListener;

.field _tapListenerList:Lcom/metamoji/ui/UiEventListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/UiEventListeners<",
            "Lcom/metamoji/df/sprite/TapListener;",
            ">;"
        }
    .end annotation
.end field

.field _taskManager:Lcom/metamoji/cm/CmTaskManager;

.field private final _touchListener:Lcom/metamoji/df/sprite/TouchListener;

.field _touchListenerList:Lcom/metamoji/ui/UiEventListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/UiEventListeners<",
            "Lcom/metamoji/df/sprite/TouchListener;",
            ">;"
        }
    .end annotation
.end field

.field _viewport:Lcom/metamoji/df/sprite/Viewport;

.field private final _viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

.field _viewportListenerList:Lcom/metamoji/ui/UiEventListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/UiEventListeners<",
            "Lcom/metamoji/df/sprite/ViewportListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 5

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/metamoji/ui/UiEventListeners;

    invoke-direct {v0}, Lcom/metamoji/ui/UiEventListeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_tapListenerList:Lcom/metamoji/ui/UiEventListeners;

    .line 19
    new-instance v0, Lcom/metamoji/ui/UiEventListeners;

    invoke-direct {v0}, Lcom/metamoji/ui/UiEventListeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListenerList:Lcom/metamoji/ui/UiEventListeners;

    .line 20
    new-instance v0, Lcom/metamoji/ui/UiEventListeners;

    invoke-direct {v0}, Lcom/metamoji/ui/UiEventListeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListenerList:Lcom/metamoji/ui/UiEventListeners;

    .line 21
    new-instance v0, Lcom/metamoji/ui/UiEventListeners;

    invoke-direct {v0}, Lcom/metamoji/ui/UiEventListeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    .line 22
    new-instance v0, Lcom/metamoji/ui/UiEventListeners;

    invoke-direct {v0}, Lcom/metamoji/ui/UiEventListeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_contextClickListenerList:Lcom/metamoji/ui/UiEventListeners;

    .line 27
    new-instance v0, Lcom/metamoji/nt/NtInteractiveEventManager$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager$1;-><init>(Lcom/metamoji/nt/NtInteractiveEventManager;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 48
    new-instance v1, Lcom/metamoji/nt/NtInteractiveEventManager$2;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtInteractiveEventManager$2;-><init>(Lcom/metamoji/nt/NtInteractiveEventManager;)V

    iput-object v1, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 117
    new-instance v2, Lcom/metamoji/nt/NtInteractiveEventManager$3;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtInteractiveEventManager$3;-><init>(Lcom/metamoji/nt/NtInteractiveEventManager;)V

    iput-object v2, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

    .line 138
    new-instance v3, Lcom/metamoji/nt/NtInteractiveEventManager$4;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/NtInteractiveEventManager$4;-><init>(Lcom/metamoji/nt/NtInteractiveEventManager;)V

    iput-object v3, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    .line 207
    new-instance v4, Lcom/metamoji/nt/NtInteractiveEventManager$5;

    invoke-direct {v4, p0}, Lcom/metamoji/nt/NtInteractiveEventManager$5;-><init>(Lcom/metamoji/nt/NtInteractiveEventManager;)V

    iput-object v4, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 467
    iput-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    .line 468
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_taskManager:Lcom/metamoji/cm/CmTaskManager;

    .line 470
    iget-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->setTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    .line 471
    iget-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Viewport;->setTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 472
    iget-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p1, v3}, Lcom/metamoji/df/sprite/Viewport;->setLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 473
    iget-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p1, v4}, Lcom/metamoji/df/sprite/Viewport;->setViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 474
    iget-object p1, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Viewport;->setContextClickListener(Lcom/metamoji/df/sprite/ContextClickListener2;)V

    return-void
.end method


# virtual methods
.method public addContextClickListener(Lcom/metamoji/df/sprite/ContextClickListener2;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_contextClickListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addTapListener(Lcom/metamoji/df/sprite/TapListener;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_tapListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 481
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeAllTapListeners()V

    .line 482
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeAllTouchListeners()V

    .line 483
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeAllLongPressListeners()V

    .line 484
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeAllViewportListeners()V

    .line 485
    invoke-virtual {p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeAllContextClickListeners()V

    .line 487
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    .line 488
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 489
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V

    .line 490
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 491
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setContextClickListener(Lcom/metamoji/df/sprite/ContextClickListener2;)V

    return-void
.end method

.method public removeAllContextClickListeners()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_contextClickListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->removeAll()V

    return-void
.end method

.method public removeAllLongPressListeners()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->removeAll()V

    return-void
.end method

.method public removeAllTapListeners()V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_tapListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->removeAll()V

    return-void
.end method

.method public removeAllTouchListeners()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->removeAll()V

    return-void
.end method

.method public removeAllViewportListeners()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->removeAll()V

    return-void
.end method

.method public removeContextClickListener(Lcom/metamoji/df/sprite/ContextClickListener2;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_contextClickListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_longPressListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeTapListener(Lcom/metamoji/df/sprite/TapListener;)V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_tapListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_touchListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/metamoji/nt/NtInteractiveEventManager;->_viewportListenerList:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->remove(Ljava/lang/Object;)V

    return-void
.end method
