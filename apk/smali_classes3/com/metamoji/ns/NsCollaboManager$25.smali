.class Lcom/metamoji/ns/NsCollaboManager$25;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->changeProperty(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2312
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$25;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$25;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager$25;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 4

    .line 2315
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2316
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$25;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v1, :cond_0

    .line 2317
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$25;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$25;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager$25;->val$value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandChangeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2319
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
