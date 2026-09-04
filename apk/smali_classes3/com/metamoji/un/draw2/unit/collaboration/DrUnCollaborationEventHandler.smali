.class public Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;
.super Ljava/lang/Object;
.source "DrUnCollaborationEventHandler.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private m_closed:Z

.field private m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

.field private m_enabled:Z


# direct methods
.method public static synthetic $r8$lambda$Yj6hUT-dNiORenws0lfd1oUFsw8(Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->lambda$invoke$0(J)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_enabled:Z

    .line 27
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_closed:Z

    return-void
.end method

.method private synthetic lambda$invoke$0(J)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->resetIdPrefix(J)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_enabled:Z

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->disable()V

    :cond_1
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_closed:Z

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    return-void
.end method

.method public disable()V
    .locals 3

    .line 55
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_enabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 60
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->removeDeviceIdInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 66
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_enabled:Z

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 68
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public enable()V
    .locals 3

    .line 37
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 38
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_enabled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 42
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->addDeviceIdInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 48
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_enabled:Z

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 50
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public invoke(Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;)V
    .locals 5

    .line 95
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 99
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 108
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 110
    new-instance p1, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1, v2}, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;J)V

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 112
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/16 v1, 0x64

    .line 115
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_3
    const/4 p1, 0x2

    .line 118
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/unit/collaboration/DrUnCollaborationEventHandler;->invoke(Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;)V

    return-void
.end method
