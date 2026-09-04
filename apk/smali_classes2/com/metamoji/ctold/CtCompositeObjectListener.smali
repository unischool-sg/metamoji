.class public Lcom/metamoji/ctold/CtCompositeObjectListener;
.super Ljava/lang/Object;
.source "CtCompositeObjectListener.java"

# interfaces
.implements Lcom/metamoji/ctold/CtObjectListener;


# instance fields
.field private objectListeners:[Lcom/metamoji/ctold/CtObjectListener;

.field private page:Lcom/metamoji/nt/NtPageController;


# direct methods
.method public varargs constructor <init>(Lcom/metamoji/nt/NtPageController;[Lcom/metamoji/ctold/CtObjectListener;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->page:Lcom/metamoji/nt/NtPageController;

    .line 31
    iput-object p2, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->objectListeners:[Lcom/metamoji/ctold/CtObjectListener;

    return-void
.end method


# virtual methods
.method public notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->objectListeners:[Lcom/metamoji/ctold/CtObjectListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 81
    instance-of v4, v3, Lcom/metamoji/ctold/CtObjectListenerWithPage;

    if-eqz v4, :cond_0

    .line 82
    check-cast v3, Lcom/metamoji/ctold/CtObjectListenerWithPage;

    iget-object v4, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->page:Lcom/metamoji/nt/NtPageController;

    invoke-interface {v3, p1, p2, v4}, Lcom/metamoji/ctold/CtObjectListenerWithPage;->notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;Lcom/metamoji/nt/NtPageController;)V

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 84
    invoke-interface {v3, p1, p2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyObjectGeometricChanged(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    .line 39
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtCompositeObjectListener;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    return-void
.end method

.method public notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    .line 59
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtCompositeObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    return-void
.end method

.method public notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->objectListeners:[Lcom/metamoji/ctold/CtObjectListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 111
    instance-of v4, v3, Lcom/metamoji/ctold/CtObjectListenerWithPage;

    if-eqz v4, :cond_0

    .line 112
    check-cast v3, Lcom/metamoji/ctold/CtObjectListenerWithPage;

    iget-object v4, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->page:Lcom/metamoji/nt/NtPageController;

    invoke-interface {v3, p1, p2, v4}, Lcom/metamoji/ctold/CtObjectListenerWithPage;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;)V

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 114
    invoke-interface {v3, p1, p2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 5
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

    .line 95
    iget-object v0, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->objectListeners:[Lcom/metamoji/ctold/CtObjectListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 96
    instance-of v4, v3, Lcom/metamoji/ctold/CtObjectListenerWithPage;

    if-eqz v4, :cond_0

    .line 97
    check-cast v3, Lcom/metamoji/ctold/CtObjectListenerWithPage;

    iget-object v4, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->page:Lcom/metamoji/nt/NtPageController;

    invoke-interface {v3, p1, p2, v4}, Lcom/metamoji/ctold/CtObjectListenerWithPage;->notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;)V

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 99
    invoke-interface {v3, p1, p2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyObjectsGeometricChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->objectListeners:[Lcom/metamoji/ctold/CtObjectListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 49
    invoke-interface {v3, p1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyObjectsRemoving(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/metamoji/ctold/CtCompositeObjectListener;->objectListeners:[Lcom/metamoji/ctold/CtObjectListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 69
    invoke-interface {v3, p1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
