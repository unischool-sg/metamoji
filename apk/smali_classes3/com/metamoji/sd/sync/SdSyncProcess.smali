.class public abstract Lcom/metamoji/sd/sync/SdSyncProcess;
.super Ljava/lang/Object;
.source "SdSyncProcess.java"


# static fields
.field public static final PROCESS_FAIL_SKIP_TO_NEXT:I = 0x2

.field public static final PROCESS_FATAL_ERROR:I = 0x3

.field public static final PROCESS_SUCCESS:I = 0x1


# instance fields
.field protected m_intentService:Lcom/metamoji/sd/sync/SdSyncIntentService;


# direct methods
.method public constructor <init>(Lcom/metamoji/sd/sync/SdSyncIntentService;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdSyncProcess;->m_intentService:Lcom/metamoji/sd/sync/SdSyncIntentService;

    return-void
.end method


# virtual methods
.method public abstract afterProcesses()V
.end method

.method public abstract beforeProcesses()V
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdSyncProcess;->m_intentService:Lcom/metamoji/sd/sync/SdSyncIntentService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/sd/sync/SdSyncIntentService;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdSyncProcess;->m_intentService:Lcom/metamoji/sd/sync/SdSyncIntentService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/metamoji/sd/sync/SdSyncIntentService;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract hasMoreNext()Z
.end method

.method public notifyMessage(Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdSyncProcess;->m_intentService:Lcom/metamoji/sd/sync/SdSyncIntentService;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/sync/SdSyncIntentService;->notifyMessage(Ljava/lang/String;)V

    return-void
.end method

.method public abstract processOne()I
.end method
