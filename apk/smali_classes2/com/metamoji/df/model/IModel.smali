.class public interface abstract Lcom/metamoji/df/model/IModel;
.super Ljava/lang/Object;
.source "IModel.java"


# virtual methods
.method public abstract add(Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract add(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteProperty(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract equalsToModel(Lcom/metamoji/df/model/IModel;)Z
.end method

.method public abstract getAllPropertyNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChildModels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstChild()Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getLastChild()Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getModelID()I
.end method

.method public abstract getModelManager()Lcom/metamoji/df/model/IModelManager;
.end method

.method public abstract getModelType()Ljava/lang/String;
.end method

.method public abstract getNextSibling()Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getParent()Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getPrevSibling()Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;
.end method

.method public abstract getPropertyAsBool(Ljava/lang/String;Z)Z
.end method

.method public abstract getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;
.end method

.method public abstract getPropertyAsDouble(Ljava/lang/String;D)D
.end method

.method public abstract getPropertyAsInt(Ljava/lang/String;I)I
.end method

.method public abstract getPropertyAsList(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getPropertyAsNumber(Ljava/lang/String;)Ljava/lang/Number;
.end method

.method public abstract getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;
.end method

.method public abstract getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasProperty(Ljava/lang/String;)Z
.end method

.method public abstract insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract isOnMemory()Z
.end method

.method public abstract purgeMemory(Z)V
.end method

.method public abstract remove(Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract setProperty(Ljava/lang/String;D)V
.end method

.method public abstract setProperty(Ljava/lang/String;I)V
.end method

.method public abstract setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Number;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/util/List;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Z)V
.end method

.method public abstract setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setVersion(I)V
.end method
