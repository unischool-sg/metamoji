.class public interface abstract Lcom/metamoji/ns/socket/INsCollaboSocketHandler;
.super Ljava/lang/Object;
.source "INsCollaboSocketHandler.java"


# virtual methods
.method public abstract collaboSocketClose()V
.end method

.method public abstract collaboSocketConnectServerFailed(ZLjava/lang/String;)V
.end method

.method public abstract collaboSocketReceivedData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract collaboSocketReceivingData(Z)V
.end method

.method public abstract collaboSocketSendingData(Z)V
.end method
