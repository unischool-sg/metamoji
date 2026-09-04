.class Lcom/metamoji/ns/NsCollaboManager$9;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->closeSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$closeRoomId:Ljava/lang/String;

.field final synthetic val$closeSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/ns/socket/NsCollaboSocket;Ljava/lang/String;)V
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

    .line 1235
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$9;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$9;->val$closeSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager$9;->val$closeRoomId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 2

    .line 1238
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$9;->val$closeSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$9;->val$closeRoomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandLogoutWithRoomId(Ljava/lang/String;)Ljava/lang/String;

    .line 1239
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$9;->val$closeSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-virtual {v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->disconnect()V

    return-void
.end method
