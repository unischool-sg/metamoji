.class public interface abstract Lcom/metamoji/ctold/CtTagManager;
.super Ljava/lang/Object;
.source "CtTagManager.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAllUsedTagClasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagClass;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllUsedTagNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchTaggedObjects(Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;
.end method
