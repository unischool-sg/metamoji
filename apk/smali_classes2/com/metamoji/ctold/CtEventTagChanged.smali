.class public Lcom/metamoji/ctold/CtEventTagChanged;
.super Ljava/lang/Object;
.source "CtEventTagChanged.java"


# static fields
.field public static final CT_EVENT_TAG_CHANGED:Ljava/lang/String; = "CT_EVENT_TAG_CHANGED"


# instance fields
.field private after:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end field

.field private before:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end field

.field private containsTagInstance:Z

.field private objectId:Ljava/lang/String;

.field private objectType:Lcom/metamoji/ctold/object/CtObjectType;

.field private ownerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/object/CtObjectType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/metamoji/ctold/CtEventTagChanged;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    .line 44
    iput-object p2, p0, Lcom/metamoji/ctold/CtEventTagChanged;->objectId:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/metamoji/ctold/CtEventTagChanged;->ownerId:Ljava/lang/String;

    .line 46
    iput-boolean p4, p0, Lcom/metamoji/ctold/CtEventTagChanged;->containsTagInstance:Z

    .line 47
    iput-object p5, p0, Lcom/metamoji/ctold/CtEventTagChanged;->before:Ljava/util/Set;

    .line 48
    iput-object p6, p0, Lcom/metamoji/ctold/CtEventTagChanged;->after:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public containsTagInstance()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/metamoji/ctold/CtEventTagChanged;->containsTagInstance:Z

    return v0
.end method

.method public getAddedTagInstances()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/metamoji/ctold/CtEventTagChanged;->after:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 131
    iget-object v1, p0, Lcom/metamoji/ctold/CtEventTagChanged;->before:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAddedTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            ")",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtEventTagChanged;->getAddedTagInstances()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 144
    invoke-virtual {v2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getSystemTagId()Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 145
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAfter()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/metamoji/ctold/CtEventTagChanged;->after:Ljava/util/Set;

    return-object v0
.end method

.method public getBefore()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/metamoji/ctold/CtEventTagChanged;->before:Ljava/util/Set;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/ctold/CtEventTagChanged;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/ctold/CtEventTagChanged;->objectType:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/ctold/CtEventTagChanged;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemovedTagInstances()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/metamoji/ctold/CtEventTagChanged;->before:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    iget-object v1, p0, Lcom/metamoji/ctold/CtEventTagChanged;->after:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getRemovedTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            ")",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtEventTagChanged;->getRemovedTagInstances()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 117
    invoke-virtual {v2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getSystemTagId()Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 118
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isExistTagInstance()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/metamoji/ctold/CtEventTagChanged;->after:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExistTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/metamoji/ctold/CtEventTagChanged;->after:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 159
    invoke-virtual {v1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getSystemTagId()Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
