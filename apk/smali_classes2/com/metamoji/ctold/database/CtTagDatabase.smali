.class public interface abstract Lcom/metamoji/ctold/database/CtTagDatabase;
.super Ljava/lang/Object;
.source "CtTagDatabase.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagIds(Ljava/lang/String;)Ljava/util/Set;
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

.method public abstract getTagInstances(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsedTagIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSystemTag(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract hasSystemTag(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/lang/String;)Z
.end method

.method public abstract isContainsTagIn(Ljava/lang/String;)Z
.end method

.method public abstract removeTag(Lcom/metamoji/ctold/tag/CtTagInstance;)V
.end method

.method public abstract searchTaggedObjects(Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;
.end method

.method public abstract setTags(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation
.end method
