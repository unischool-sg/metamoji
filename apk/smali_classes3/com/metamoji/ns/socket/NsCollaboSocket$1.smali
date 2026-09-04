.class Lcom/metamoji/ns/socket/NsCollaboSocket$1;
.super Ljava/util/TimerTask;
.source "NsCollaboSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/socket/NsCollaboSocket;->resetConnectingCheckTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/socket/NsCollaboSocket;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/socket/NsCollaboSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/metamoji/ns/socket/NsCollaboSocket$1;->this$0:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 126
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket$1;->this$0:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-static {v2}, Lcom/metamoji/ns/socket/NsCollaboSocket;->-$$Nest$fgetmConnectingCheckTick(Lcom/metamoji/ns/socket/NsCollaboSocket;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket$1;->this$0:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-virtual {v2}, Lcom/metamoji/ns/socket/NsCollaboSocket;->onConnectingCheckTimer()V

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ns/socket/NsCollaboSocket$1;->this$0:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-static {v2, v0, v1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->-$$Nest$fputmConnectingCheckTick(Lcom/metamoji/ns/socket/NsCollaboSocket;J)V

    return-void
.end method
