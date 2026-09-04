.class public interface abstract Lcom/metamoji/ctold/CtDocTagManager;
.super Ljava/lang/Object;
.source "CtDocTagManager.java"

# interfaces
.implements Lcom/metamoji/ctold/CtTagManager;
.implements Lcom/metamoji/ctold/CtObjectListenerWithPage;
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;


# static fields
.field public static final MMJCT_EVENT_REMOVE_TAG_INSTANCES:Ljava/lang/String; = "REMOVE_TAG_INSTANCES"


# virtual methods
.method public abstract addTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract addTagRemovedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract attachTags(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            "Lcom/metamoji/nt/NtPageController;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation
.end method

.method public abstract geometricPropsChanged(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract getObjectIdsInTaggableObject(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/ctold/tag/CtTagInstance;
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

.method public abstract getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagInstances(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract hasSystemTagInstanceInUnit(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/lang/String;)Z
.end method

.method public abstract makeDirectable(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V
.end method

.method public abstract performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
.end method

.method public abstract removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeObjectsInPage(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract removeObjectsInUnit(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract removeTagRemovedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract resetSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract setSystemTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract unmakeDirectable()V
.end method
