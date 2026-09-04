.class Lcom/metamoji/ns/NsCollaboManager$8;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->openSocket()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$encodeNickName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1206
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$8;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$8;->val$encodeNickName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 6

    .line 1209
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$8;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v1, :cond_0

    .line 1211
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v1

    .line 1212
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$8;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager$8;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v3, v3, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboManager$8;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v4, v4, Lcom/metamoji/ns/NsCollaboManager;->m_sessionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ns/NsCollaboManager$8;->val$encodeNickName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandLoginWithRoomId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
