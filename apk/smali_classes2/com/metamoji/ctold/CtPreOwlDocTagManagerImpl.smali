.class public Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;
.super Ljava/lang/Object;
.source "CtPreOwlDocTagManagerImpl.java"

# interfaces
.implements Lcom/metamoji/ctold/CtDocTagManager;


# instance fields
.field private directionHandlerId:Ljava/lang/String;

.field private directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

.field private tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;"
        }
    .end annotation
.end field

.field private tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v0}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 46
    new-instance v0, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v0}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method


# virtual methods
.method public addTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;)V"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public addTagRemovedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;)V"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public attachTags(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .locals 0
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

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public geometricPropsChanged(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public getAllUsedTagClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagClass;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsedTagNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->directionHandlerId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectIdsInTaggableObject(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/util/List;
    .locals 0
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

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/ctold/tag/CtTagInstance;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/util/List;
    .locals 0
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

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Z)Ljava/util/List;
    .locals 0
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

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;ZZ)Ljava/util/List;
    .locals 0
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

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagInstances(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/util/List;
    .locals 0
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

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;
    .locals 0
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

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public hasSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasSystemTagInstanceInUnit(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public makeDirectable(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->unmakeDirectable()V

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 233
    iput-object p2, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->directionHandlerId:Ljava/lang/String;

    .line 234
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    return-void
.end method

.method public notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;Lcom/metamoji/nt/NtPageController;)V
    .locals 0
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

    return-void
.end method

.method public notifyObjectGeometricChanged(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    return-void
.end method

.method public notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    return-void
.end method

.method public notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    return-void
.end method

.method public notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;)V
    .locals 0

    return-void
.end method

.method public notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0
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

    return-void
.end method

.method public notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;)V
    .locals 0
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

    return-void
.end method

.method public notifyObjectsGeometricChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyObjectsRemoving(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .locals 0
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

    return-void
.end method

.method public removeObjectsInPage(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public removeObjectsInUnit(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;)V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public removeTagRemovedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;)V"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public resetSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public searchTaggedObjects(Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSystemTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public unmakeDirectable()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    :cond_0
    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 246
    iput-object v0, p0, Lcom/metamoji/ctold/CtPreOwlDocTagManagerImpl;->directionHandlerId:Ljava/lang/String;

    return-void
.end method
