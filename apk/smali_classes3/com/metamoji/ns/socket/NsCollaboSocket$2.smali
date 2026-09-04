.class Lcom/metamoji/ns/socket/NsCollaboSocket$2;
.super Ljava/lang/Thread;
.source "NsCollaboSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/socket/NsCollaboSocket;->connect(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/socket/NsCollaboSocket;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/socket/NsCollaboSocket;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket$2;->this$0:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/metamoji/ns/socket/NsCollaboSocket$2;->this$0:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-static {v0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->-$$Nest$mReceiveDataAsync(Lcom/metamoji/ns/socket/NsCollaboSocket;)V

    return-void
.end method
