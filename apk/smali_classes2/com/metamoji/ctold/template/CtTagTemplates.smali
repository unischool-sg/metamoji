.class public interface abstract Lcom/metamoji/ctold/template/CtTagTemplates;
.super Ljava/lang/Object;
.source "CtTagTemplates.java"


# virtual methods
.method public abstract createTagClass(Lcom/metamoji/ctold/tag/CtTagClass;)V
.end method

.method public abstract deleteTagClass(Ljava/lang/String;)V
.end method

.method public abstract getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;
.end method

.method public abstract getTagClasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagClass;",
            ">;"
        }
    .end annotation
.end method

.method public abstract renameTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateTagClass(Lcom/metamoji/ctold/tag/CtTagClass;)V
.end method
