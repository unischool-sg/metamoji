.class public Lcom/metamoji/nt/NtPenTemplate;
.super Ljava/lang/Object;
.source "NtPenTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPenTemplate$ModelProp;
    }
.end annotation


# instance fields
.field private m_availableInkTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_availables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_createdDate:Ljava/util/Date;

.field private m_defaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_id:Ljava/lang/String;

.field private m_type:Ljava/lang/String;

.field private m_version:I


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPenTemplate;->initialize(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method public getAvailableInkTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_availableInkTypes:Ljava/util/List;

    return-object v0
.end method

.method public getAvailableProperty(Ljava/lang/String;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_availables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_createdDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;
    .locals 2

    .line 107
    new-instance v0, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v0}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenTemplate;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenTemplate;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/metamoji/nt/NtPenTemplate;->m_defaults:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setPropertiesFrom(Ljava/util/Map;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_version:I

    return v0
.end method

.method protected initialize(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 48
    const-string v0, "id"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_id:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_type:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_version:I

    .line 54
    const-string v0, "createdDate"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_createdDate:Ljava/util/Date;

    .line 57
    const-string v0, "available"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_availables:Ljava/util/Map;

    .line 59
    const-string v0, "default"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPenTemplate;->m_defaults:Ljava/util/Map;

    .line 61
    const-string v0, "availableInkTypes"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPenTemplate;->m_availableInkTypes:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenTemplate;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenTemplate;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ",available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/metamoji/nt/NtPenTemplate;->m_availables:Ljava/util/Map;

    if-eqz v1, :cond_2

    const/16 v1, 0x5b

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lcom/metamoji/nt/NtPenTemplate;->m_availables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/metamoji/nt/NtPenTemplate;->m_availables:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 139
    :cond_2
    const-string v1, "(null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
