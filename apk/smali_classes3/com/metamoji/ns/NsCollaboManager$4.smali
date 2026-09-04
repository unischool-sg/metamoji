.class Lcom/metamoji/ns/NsCollaboManager$4;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->didChangeConnectionMode(Z)V
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

    .line 581
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$4;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$4;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$4;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocketWithContinueCollaboMode(Z)V

    :cond_0
    return-void
.end method
