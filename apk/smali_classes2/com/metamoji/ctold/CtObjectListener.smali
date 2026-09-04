.class public interface abstract Lcom/metamoji/ctold/CtObjectListener;
.super Ljava/lang/Object;
.source "CtObjectListener.java"


# virtual methods
.method public abstract notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyObjectGeometricChanged(Lcom/metamoji/ctold/CtTaggableObject;)V
.end method

.method public abstract notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V
.end method

.method public abstract notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V
.end method

.method public abstract notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ")V"
        }
    .end annotation
.end method

.method public abstract notifyObjectsGeometricChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyObjectsRemoving(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation
.end method
