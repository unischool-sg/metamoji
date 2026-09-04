.class public Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;
.super Ljava/lang/Object;
.source "DmIntentServiceEventParams.java"


# static fields
.field public static final EVENT_KEY:Ljava/lang/String; = "dm.event.key"

.field public static final EVENT_PARMA_KEY:Ljava/lang/String; = "dm.event.param.key"

.field public static final KIND_AFTERPROCESS:Ljava/lang/String; = "AfterProcess"

.field public static final KIND_BEFOREPROCESS:Ljava/lang/String; = "BeforeProcess"

.field public static final KIND_DESTOROY:Ljava/lang/String; = "Destoroy"

.field public static final KIND_PROCESSONE:Ljava/lang/String; = "ProcessOne"

.field public static final START:Ljava/lang/String; = "dm.start"

.field public static final SYSTEM:Ljava/lang/String; = "dm.system"


# instance fields
.field private _action:Ljava/lang/String;

.field private _exParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private _eyentKey:Ljava/lang/String;

.field private _kindKey:Ljava/lang/String;

.field private _message:Ljava/lang/String;

.field private _serviceListKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_action:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_serviceListKey:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_eyentKey:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_message:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_action:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_serviceListKey:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_kindKey:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_eyentKey:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_message:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_exParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static newDmBackgroundContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;
    .locals 7

    .line 61
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public static newDmBackgroundContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method


# virtual methods
.method public debug()Ljava/lang/String;
    .locals 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nDmBackgroundContext Debug ---------- \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " ServiceListKey="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_serviceListKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " KindKey="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_kindKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " EyentKey="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_eyentKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " Message="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_message:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_action:Ljava/lang/String;

    return-object v0
.end method

.method public getEventKey()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_eyentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExParams()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_exParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getKindKey()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_kindKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_message:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceListKey()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->_serviceListKey:Ljava/lang/String;

    return-object v0
.end method
