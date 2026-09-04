.class public abstract Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
.super Ljava/lang/Object;
.source "DmManagedObjectBase.java"


# instance fields
.field private m_entityId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "entityId"
        id = true
        unique = true
    .end annotation
.end field

.field private m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected className()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dictionary()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    const-string v1, "entityId"

    iget-object v2, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->m_entityId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getEntityId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->m_entityId:Ljava/lang/String;

    return-object v0
.end method

.method public managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    return-object v0
.end method

.method public objectID()Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;
    .locals 2

    .line 41
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;

    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->m_entityId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public printManagedObjectData()V
    .locals 4

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->className()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "=============== ManagedObject:%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "key:%s value:%s"

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public searchKeyOfString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setEntityId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->m_entityId:Ljava/lang/String;

    return-void
.end method

.method public setManagedObjectContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    return-void
.end method

.method public setValues(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    const-string v0, "entityId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->m_entityId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->className()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
