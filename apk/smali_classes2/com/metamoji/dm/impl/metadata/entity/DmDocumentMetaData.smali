.class public Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;
.super Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
.source "DmDocumentMetaData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "DmDocumentMetaData"
.end annotation


# instance fields
.field private _create:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "create"
    .end annotation
.end field

.field private _hasFrontCover:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "hasFrontCover"
    .end annotation
.end field

.field private _lastAccess:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "lastAccess"
    .end annotation
.end field

.field private _mimeType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "mimeType"
    .end annotation
.end field

.field private _templateFlg:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "templateFlg"
    .end annotation
.end field

.field private _title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "title"
    .end annotation
.end field

.field private _type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "type"
    .end annotation
.end field

.field private _update:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "update"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;-><init>()V

    return-void
.end method

.method public static sortKeyItemOfDateTime1()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "create"

    return-object v0
.end method

.method public static sortKeyItemOfDateTime2()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "update"

    return-object v0
.end method

.method public static sortKeyItemOfString()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "title"

    return-object v0
.end method


# virtual methods
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

    .line 68
    invoke-super {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 69
    const-string v1, "create"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_create:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "lastaccess"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_lastAccess:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_templateFlg:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "templateFlg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "title"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "type"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "update"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_update:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_hasFrontCover:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hasFrontCover"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCreate()Ljava/util/Date;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_create:Ljava/util/Date;

    return-object v0
.end method

.method public getLastAccess()Ljava/util/Date;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_lastAccess:Ljava/util/Date;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateFlg()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_templateFlg:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/util/Date;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_update:Ljava/util/Date;

    return-object v0
.end method

.method public hasFrontCover()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_hasFrontCover:Z

    return v0
.end method

.method public setCreate(Ljava/util/Date;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_create:Ljava/util/Date;

    return-void
.end method

.method public setHasFrontCover(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_hasFrontCover:Z

    return-void
.end method

.method public setLastAccess(Ljava/util/Date;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_lastAccess:Ljava/util/Date;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_mimeType:Ljava/lang/String;

    return-void
.end method

.method public setTemplateFlg(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_templateFlg:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_type:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Ljava/util/Date;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_update:Ljava/util/Date;

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

    .line 86
    invoke-super {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 87
    const-string v0, "create"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_create:Ljava/util/Date;

    .line 88
    const-string v0, "lastaccess"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_lastAccess:Ljava/util/Date;

    .line 89
    const-string v0, "templateFlg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_templateFlg:Z

    .line 90
    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_title:Ljava/lang/String;

    .line 91
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_type:Ljava/lang/String;

    .line 92
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_update:Ljava/util/Date;

    .line 93
    const-string v0, "hasFrontCover"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_hasFrontCover:Z

    .line 94
    const-string v0, "mimeType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->_mimeType:Ljava/lang/String;

    return-void
.end method
