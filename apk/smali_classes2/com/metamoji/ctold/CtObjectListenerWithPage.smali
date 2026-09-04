.class public interface abstract Lcom/metamoji/ctold/CtObjectListenerWithPage;
.super Ljava/lang/Object;
.source "CtObjectListenerWithPage.java"

# interfaces
.implements Lcom/metamoji/ctold/CtObjectListener;


# virtual methods
.method public abstract notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;Lcom/metamoji/nt/NtPageController;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/nt/NtPageController;",
            ")V"
        }
    .end annotation
.end method

.method public abstract notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;)V
.end method

.method public abstract notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            "Lcom/metamoji/nt/NtPageController;",
            ")V"
        }
    .end annotation
.end method
