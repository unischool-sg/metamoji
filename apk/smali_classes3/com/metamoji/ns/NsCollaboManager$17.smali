.class Lcom/metamoji/ns/NsCollaboManager$17;
.super Ljava/util/TimerTask;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->collaboSocketClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1694
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$17;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1697
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$17;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_retryLoginTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1698
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$17;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/ns/NsCollaboManager;->m_retryLoginTimer:Ljava/util/Timer;

    return-void
.end method
