.class public Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;
.super Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
.source "DmLibrarySheetTemplateMetaData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "DmLibrarySheetTemplateMetaData"
.end annotation


# static fields
.field public static final SORT_KEY_BOOKMARKED:I = 0x7

.field public static final SORT_KEY_CREATE:I = 0x3

.field public static final SORT_KEY_CREATOR_ID:I = 0xb

.field public static final SORT_KEY_CREATOR_NAME:I = 0xc

.field public static final SORT_KEY_DOWNLOAD:I = 0x8

.field public static final SORT_KEY_ENTITY_ID:I = 0x0

.field public static final SORT_KEY_IS_FREE:I = 0xd

.field public static final SORT_KEY_IS_TRIAL:I = 0xe

.field public static final SORT_KEY_LASTACCESS:I = 0x5

.field public static final SORT_KEY_NAME:I = 0x2

.field public static final SORT_KEY_PRODUCT_ID:I = 0x9

.field public static final SORT_KEY_PRODUCT_NAME:I = 0xa

.field public static final SORT_KEY_TYPE:I = 0x1

.field public static final SORT_KEY_UPDATE:I = 0x4

.field public static final SORT_KEY_USE_DATE:I = 0x6


# instance fields
.field private _bookmarked:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "bookmarked"
    .end annotation
.end field

.field private _create:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "create"
    .end annotation
.end field

.field private _creatorId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "creatorId"
    .end annotation
.end field

.field private _creatorName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "creatorName"
    .end annotation
.end field

.field private _download:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "download"
    .end annotation
.end field

.field private _isFree:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "isFree"
    .end annotation
.end field

.field private _isTrial:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "isTrial"
    .end annotation
.end field

.field private _lastAccess:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "lastAccess"
    .end annotation
.end field

.field private _name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "name"
    .end annotation
.end field

.field private _productId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "productId"
    .end annotation
.end field

.field private _productName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "productName"
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

.field private _useDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "useDate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;-><init>()V

    return-void
.end method

.method public static sortKeyItemOfObject(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 249
    :pswitch_0
    const-string p0, "isTrial"

    return-object p0

    .line 247
    :pswitch_1
    const-string p0, "isFree"

    return-object p0

    .line 245
    :pswitch_2
    const-string p0, "creatorName"

    return-object p0

    .line 243
    :pswitch_3
    const-string p0, "creatorId"

    return-object p0

    .line 241
    :pswitch_4
    const-string p0, "productName"

    return-object p0

    .line 239
    :pswitch_5
    const-string p0, "productId"

    return-object p0

    .line 237
    :pswitch_6
    const-string p0, "download"

    return-object p0

    .line 235
    :pswitch_7
    const-string p0, "bookmarked"

    return-object p0

    .line 233
    :pswitch_8
    const-string p0, "useDate"

    return-object p0

    .line 231
    :pswitch_9
    const-string p0, "lastAccess"

    return-object p0

    .line 229
    :pswitch_a
    const-string p0, "update"

    return-object p0

    .line 227
    :pswitch_b
    const-string p0, "create"

    return-object p0

    .line 225
    :pswitch_c
    const-string p0, "name"

    return-object p0

    .line 223
    :pswitch_d
    const-string p0, "type"

    return-object p0

    .line 221
    :pswitch_e
    const-string p0, "entityId"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 113
    invoke-super {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 114
    const-string v1, "type"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "name"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "create"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_create:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "update"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_update:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "lastaccess"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_lastAccess:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "useDate"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_useDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_bookmarked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bookmarked"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "download"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_download:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "productId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "productName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "creatorId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "creatorName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isFree:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isFree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isTrial:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isTrial"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public dictionaryForSync()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    const-string v1, "cdEntityId"

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "cdType"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "cdName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_create:Ljava/util/Date;

    const/4 v2, 0x0

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 197
    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "cdCreate"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_update:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cdUpdate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_lastAccess:Ljava/util/Date;

    const/4 v2, 0x1

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 199
    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "cdLastaccess"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_useDate:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "cdUseDate"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_bookmarked:Z

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v5, "cdBookmarked"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_download:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cdDownload"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "cdProductId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "cdProductName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "cdCreatorId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "cdCreatorName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isFree:Z

    if-eqz v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v2, "cdIsFree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isTrial:Z

    if-eqz v1, :cond_2

    move-object v3, v4

    :cond_2
    const-string v1, "cdIsTrial"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCreate()Ljava/util/Date;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_create:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload()Ljava/util/Date;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_download:Ljava/util/Date;

    return-object v0
.end method

.method public getLastAccess()Ljava/util/Date;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_lastAccess:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/util/Date;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_update:Ljava/util/Date;

    return-object v0
.end method

.method public getUseDate()Ljava/util/Date;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_useDate:Ljava/util/Date;

    return-object v0
.end method

.method public isBookmarked()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_bookmarked:Z

    return v0
.end method

.method public isFree()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isFree:Z

    return v0
.end method

.method public isTrial()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isTrial:Z

    return v0
.end method

.method public setBookmarked(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_bookmarked:Z

    return-void
.end method

.method public setCreate(Ljava/util/Date;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_create:Ljava/util/Date;

    return-void
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorId:Ljava/lang/String;

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorName:Ljava/lang/String;

    return-void
.end method

.method public setDownload(Ljava/util/Date;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_download:Ljava/util/Date;

    return-void
.end method

.method public setIsFree(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isFree:Z

    return-void
.end method

.method public setIsTrial(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isTrial:Z

    return-void
.end method

.method public setLastAccess(Ljava/util/Date;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_lastAccess:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_name:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productName:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_type:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Ljava/util/Date;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_update:Ljava/util/Date;

    return-void
.end method

.method public setUseDate(Ljava/util/Date;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_useDate:Ljava/util/Date;

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

    .line 137
    invoke-super {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 138
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_type:Ljava/lang/String;

    .line 139
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_name:Ljava/lang/String;

    .line 140
    const-string v0, "create"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_create:Ljava/util/Date;

    .line 141
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_update:Ljava/util/Date;

    .line 142
    const-string v0, "lastaccess"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_lastAccess:Ljava/util/Date;

    .line 143
    const-string v0, "useDate"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_useDate:Ljava/util/Date;

    .line 144
    const-string v0, "bookmarked"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_bookmarked:Z

    .line 145
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_download:Ljava/util/Date;

    .line 146
    const-string v0, "productId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productId:Ljava/lang/String;

    .line 147
    const-string v0, "productName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productName:Ljava/lang/String;

    .line 148
    const-string v0, "creatorId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorId:Ljava/lang/String;

    .line 149
    const-string v0, "creatorName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorName:Ljava/lang/String;

    .line 150
    const-string v0, "isFree"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isFree:Z

    .line 151
    const-string v0, "isTrial"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isTrial:Z

    return-void
.end method

.method public setValuesForSync(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 159
    const-string v0, "cdEntityId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setEntityId(Ljava/lang/String;)V

    .line 160
    const-string v0, "cdType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_type:Ljava/lang/String;

    .line 161
    const-string v0, "cdName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_name:Ljava/lang/String;

    .line 163
    const-string v0, "cdCreate"

    invoke-static {p1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 164
    const-string v1, "cdUpdate"

    invoke-static {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 165
    const-string v2, "cdLastaccess"

    invoke-static {p1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 166
    const-string v3, "cdUseDate"

    invoke-static {p1, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 167
    const-string v4, "cdDownload"

    invoke-static {p1, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 169
    invoke-static {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v0

    .line 170
    invoke-static {v1}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v1

    .line 171
    invoke-static {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v2

    .line 172
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v3

    .line 173
    invoke-static {v4}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v4

    .line 175
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_create:Ljava/util/Date;

    .line 176
    iput-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_update:Ljava/util/Date;

    .line 177
    iput-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_lastAccess:Ljava/util/Date;

    .line 178
    iput-object v3, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_useDate:Ljava/util/Date;

    .line 179
    const-string v0, "cdBookmarked"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_bookmarked:Z

    .line 180
    iput-object v4, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_download:Ljava/util/Date;

    .line 181
    const-string v0, "cdProductId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productId:Ljava/lang/String;

    .line 182
    const-string v0, "cdProductName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_productName:Ljava/lang/String;

    .line 183
    const-string v0, "cdCreatorId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorId:Ljava/lang/String;

    .line 184
    const-string v0, "cdCreatorName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_creatorName:Ljava/lang/String;

    .line 185
    const-string v0, "cdIsFree"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isFree:Z

    .line 186
    const-string v0, "cdIsTrial"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->_isTrial:Z

    return-void
.end method
