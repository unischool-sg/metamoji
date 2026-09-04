.class public interface abstract Lcom/metamoji/df/controller/IModelCompatibilityChecker;
.super Ljava/lang/Object;
.source "IModelCompatibilityChecker.java"


# virtual methods
.method public abstract checkCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
.end method

.method public abstract checkDetailCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
.end method

.method public abstract convertModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
.end method

.method public abstract preCheckCompatibilityOfType(Ljava/lang/String;Ljava/util/Set;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method
