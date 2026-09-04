.class public interface abstract Lcom/metamoji/ctold/database/CtObjectDatabase;
.super Ljava/lang/Object;
.source "CtObjectDatabase.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAllObjectKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentId()Ljava/lang/String;
.end method

.method public abstract getObjectKeysInPage(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getObjectKeysInUnit(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getObjectReference(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;
.end method

.method public abstract isRegisteredObject(Ljava/lang/String;)Z
.end method

.method public abstract removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeObjectsInPage(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract removeObjectsInUnit(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract setObject(Lcom/metamoji/ctold/object/CtObjectReference;)V
.end method

.method public abstract updateObject(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V
.end method

.method public abstract updateObject(Ljava/lang/String;Lcom/metamoji/cm/RectEx;)V
.end method

.method public abstract updateObject(Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;)V
.end method
