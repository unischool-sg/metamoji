.class public interface abstract Lcom/metamoji/ns/direction/INsDirectionHandler;
.super Ljava/lang/Object;
.source "INsDirectionHandler.java"


# virtual methods
.method public abstract getDirectionHandlerID()Ljava/lang/String;
.end method

.method public abstract handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation
.end method
