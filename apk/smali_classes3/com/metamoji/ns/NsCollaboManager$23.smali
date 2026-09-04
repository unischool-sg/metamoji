.class Lcom/metamoji/ns/NsCollaboManager$23;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->changePresenter(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$enable:Z

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Z)V
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

    .line 2266
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$23;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$23;->val$userId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/metamoji/ns/NsCollaboManager$23;->val$enable:Z

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 5

    .line 2269
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$sfgetm_lockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2270
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$23;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v1, :cond_1

    .line 2271
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$23;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$23;->val$userId:Ljava/lang/String;

    const-string v3, "presenter"

    .line 2272
    iget-boolean v4, p0, Lcom/metamoji/ns/NsCollaboManager$23;->val$enable:Z

    if-eqz v4, :cond_0

    const-string v4, "enable"

    goto :goto_0

    :cond_0
    const-string v4, "disable"

    .line 2271
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandChangeMembersMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2274
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
