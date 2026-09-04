.class public interface abstract Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;
.super Ljava/lang/Object;
.source "CloudServiceCallSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPostCall(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onPostCallInBackgroundThread(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
