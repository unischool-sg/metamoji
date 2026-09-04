.class Lcom/metamoji/ns/NsCollaboManager$50;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->executeConnectRoomAfterAction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Z)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4636
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$50;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboManager$50;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4639
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$50;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_connectRoomAfterAction:Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;

    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager$50;->val$isConnected:Z

    invoke-interface {v0, v1}, Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;->action(Z)V

    .line 4640
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$50;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/ns/NsCollaboManager;->m_connectRoomAfterAction:Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;

    return-void
.end method
