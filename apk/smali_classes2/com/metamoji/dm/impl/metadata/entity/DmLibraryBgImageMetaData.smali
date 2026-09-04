.class public Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;
.super Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
.source "DmLibraryBgImageMetaData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "DmLibraryBgImageMetaData"
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

.field private _index:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "index"
    .end annotation
.end field

.field private _isFree:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "isFree"
    .end annotation
.end field

.field private _isSheet:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "isSheet"
    .end annotation
.end field

.field private _isTrial:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "isTrial"
    .end annotation
.end field

.field private _keyword:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "keyword"
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

.field private _paperHeight:Ljava/lang/Double;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "paperHeight"
    .end annotation
.end field

.field private _paperWidth:Ljava/lang/Double;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "paperWidth"
    .end annotation
.end field

.field private _printHeight:Ljava/lang/Double;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "printHeight"
    .end annotation
.end field

.field private _printWidth:Ljava/lang/Double;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "printWidth"
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

.field private _repeatType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "repeatType"
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

    .line 328
    :pswitch_0
    const-string p0, "isTrial"

    return-object p0

    .line 326
    :pswitch_1
    const-string p0, "isFree"

    return-object p0

    .line 324
    :pswitch_2
    const-string p0, "creatorName"

    return-object p0

    .line 322
    :pswitch_3
    const-string p0, "creatorId"

    return-object p0

    .line 320
    :pswitch_4
    const-string p0, "productName"

    return-object p0

    .line 318
    :pswitch_5
    const-string p0, "productId"

    return-object p0

    .line 316
    :pswitch_6
    const-string p0, "download"

    return-object p0

    .line 314
    :pswitch_7
    const-string p0, "bookmarked"

    return-object p0

    .line 312
    :pswitch_8
    const-string p0, "useDate"

    return-object p0

    .line 310
    :pswitch_9
    const-string p0, "lastAccess"

    return-object p0

    .line 308
    :pswitch_a
    const-string p0, "update"

    return-object p0

    .line 306
    :pswitch_b
    const-string p0, "create"

    return-object p0

    .line 304
    :pswitch_c
    const-string p0, "name"

    return-object p0

    .line 302
    :pswitch_d
    const-string p0, "type"

    return-object p0

    .line 300
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

    .line 156
    invoke-super {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 157
    const-string v1, "type"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "name"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "create"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_create:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "update"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_update:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "lastaccess"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_lastAccess:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "useDate"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_useDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_bookmarked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bookmarked"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "download"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_download:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "productId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "productName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "creatorId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "creatorName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isFree:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isFree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isTrial:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isTrial"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isSheet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSheet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_keyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "repeatType"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_repeatType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "paperWidth"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperWidth:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "paperHeight"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperHeight:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "printWidth"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printWidth:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "printHeight"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printHeight:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    const-string v1, "cdEntityId"

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "cdType"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "cdName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_create:Ljava/util/Date;

    const/4 v2, 0x0

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 268
    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "cdCreate"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_update:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cdUpdate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_lastAccess:Ljava/util/Date;

    const/4 v2, 0x1

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 270
    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "cdLastaccess"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_useDate:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "cdUseDate"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_bookmarked:Z

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v5, "cdBookmarked"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_download:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDate(Ljava/util/Date;Z)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cdDownload"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "cdProductId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "cdProductName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "cdCreatorId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "cdCreatorName"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isFree:Z

    if-eqz v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v2, "cdIsFree"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isTrial:Z

    if-eqz v1, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    const-string v2, "cdIsTrial"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cdIndex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isSheet:Z

    if-eqz v1, :cond_3

    move-object v3, v4

    :cond_3
    const-string v1, "cdIsSheet"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "cdKeyword"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_keyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "cdRepeatType"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_repeatType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "cdPaperWidth"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperWidth:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "cdPaperHeight"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperHeight:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "cdPrintWidth"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printWidth:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "cdPrintHeight"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printHeight:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getCreate()Ljava/util/Date;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_create:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload()Ljava/util/Date;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_download:Ljava/util/Date;

    return-object v0
.end method

.method public getLastAccess()Ljava/util/Date;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_lastAccess:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/util/Date;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_update:Ljava/util/Date;

    return-object v0
.end method

.method public getUseDate()Ljava/util/Date;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_useDate:Ljava/util/Date;

    return-object v0
.end method

.method public index()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_index:I

    return v0
.end method

.method public isBookmarked()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_bookmarked:Z

    return v0
.end method

.method public isFree()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isFree:Z

    return v0
.end method

.method public isSheet()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isSheet:Z

    return v0
.end method

.method public isTrial()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isTrial:Z

    return v0
.end method

.method public keyword()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_keyword:Ljava/lang/String;

    return-object v0
.end method

.method public paperHeight()Ljava/lang/Double;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperHeight:Ljava/lang/Double;

    return-object v0
.end method

.method public paperWidth()Ljava/lang/Double;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperWidth:Ljava/lang/Double;

    return-object v0
.end method

.method public printHeight()Ljava/lang/Double;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printHeight:Ljava/lang/Double;

    return-object v0
.end method

.method public printWidth()Ljava/lang/Double;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printWidth:Ljava/lang/Double;

    return-object v0
.end method

.method public repeatType()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_repeatType:Ljava/lang/String;

    return-object v0
.end method

.method public setBookmarked(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_bookmarked:Z

    return-void
.end method

.method public setCreate(Ljava/util/Date;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_create:Ljava/util/Date;

    return-void
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorId:Ljava/lang/String;

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorName:Ljava/lang/String;

    return-void
.end method

.method public setDownload(Ljava/util/Date;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_download:Ljava/util/Date;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_index:I

    return-void
.end method

.method public setIsFree(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isFree:Z

    return-void
.end method

.method public setIsSheet(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isSheet:Z

    return-void
.end method

.method public setIsTrial(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isTrial:Z

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_keyword:Ljava/lang/String;

    return-void
.end method

.method public setLastAccess(Ljava/util/Date;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_lastAccess:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_name:Ljava/lang/String;

    return-void
.end method

.method public setPaperHeight(Ljava/lang/Double;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperHeight:Ljava/lang/Double;

    return-void
.end method

.method public setPaperWidth(Ljava/lang/Double;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperWidth:Ljava/lang/Double;

    return-void
.end method

.method public setPrintHeight(Ljava/lang/Double;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printHeight:Ljava/lang/Double;

    return-void
.end method

.method public setPrintWidth(Ljava/lang/Double;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printWidth:Ljava/lang/Double;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productName:Ljava/lang/String;

    return-void
.end method

.method public setRepeatType(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_repeatType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_type:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Ljava/util/Date;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_update:Ljava/util/Date;

    return-void
.end method

.method public setUseDate(Ljava/util/Date;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_useDate:Ljava/util/Date;

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

    .line 190
    invoke-super {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 191
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_type:Ljava/lang/String;

    .line 192
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_name:Ljava/lang/String;

    .line 193
    const-string v0, "create"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_create:Ljava/util/Date;

    .line 194
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_update:Ljava/util/Date;

    .line 195
    const-string v0, "lastaccess"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_lastAccess:Ljava/util/Date;

    .line 196
    const-string v0, "useDate"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_useDate:Ljava/util/Date;

    .line 197
    const-string v0, "bookmarked"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_bookmarked:Z

    .line 198
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_download:Ljava/util/Date;

    .line 199
    const-string v0, "productId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productId:Ljava/lang/String;

    .line 200
    const-string v0, "productName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productName:Ljava/lang/String;

    .line 201
    const-string v0, "creatorId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorId:Ljava/lang/String;

    .line 202
    const-string v0, "creatorName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorName:Ljava/lang/String;

    .line 203
    const-string v0, "isFree"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isFree:Z

    .line 204
    const-string v0, "isTrial"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isTrial:Z

    .line 206
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_index:I

    .line 207
    const-string v0, "isSheet"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isSheet:Z

    .line 208
    const-string v0, "keyword"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_keyword:Ljava/lang/String;

    .line 209
    const-string v0, "repeatType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_repeatType:Ljava/lang/String;

    .line 210
    const-string v0, "paperWidth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperWidth:Ljava/lang/Double;

    .line 211
    const-string v0, "paperHeight"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperHeight:Ljava/lang/Double;

    .line 212
    const-string v0, "printWidth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printWidth:Ljava/lang/Double;

    .line 213
    const-string v0, "printHeight"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printHeight:Ljava/lang/Double;

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

    .line 221
    const-string v0, "cdEntityId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setEntityId(Ljava/lang/String;)V

    .line 222
    const-string v0, "cdType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_type:Ljava/lang/String;

    .line 223
    const-string v0, "cdName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_name:Ljava/lang/String;

    .line 225
    const-string v0, "cdCreate"

    invoke-static {p1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 226
    const-string v1, "cdUpdate"

    invoke-static {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 227
    const-string v2, "cdLastaccess"

    invoke-static {p1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 228
    const-string v3, "cdUseDate"

    invoke-static {p1, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 229
    const-string v4, "cdDownload"

    invoke-static {p1, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDoubleFromDictionary(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 231
    invoke-static {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v0

    .line 232
    invoke-static {v1}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v1

    .line 233
    invoke-static {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v2

    .line 234
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v3

    .line 235
    invoke-static {v4}, Lcom/metamoji/dm/impl/metadata/entity/DmMetaDataEntityUtils;->getDateFromDoubleIfNullAsNull(Ljava/lang/Double;)Ljava/util/Date;

    move-result-object v4

    .line 237
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_create:Ljava/util/Date;

    .line 238
    iput-object v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_update:Ljava/util/Date;

    .line 239
    iput-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_lastAccess:Ljava/util/Date;

    .line 240
    iput-object v3, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_useDate:Ljava/util/Date;

    .line 241
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
    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_bookmarked:Z

    .line 242
    iput-object v4, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_download:Ljava/util/Date;

    .line 243
    const-string v0, "cdProductId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productId:Ljava/lang/String;

    .line 244
    const-string v0, "cdProductName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_productName:Ljava/lang/String;

    .line 245
    const-string v0, "cdCreatorId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorId:Ljava/lang/String;

    .line 246
    const-string v0, "cdCreatorName"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_creatorName:Ljava/lang/String;

    .line 247
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
    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isFree:Z

    .line 248
    const-string v0, "cdIsTrial"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isTrial:Z

    .line 250
    const-string v0, "cdIndex"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_index:I

    .line 251
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_isSheet:Z

    .line 252
    const-string v0, "cdKeyword"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_keyword:Ljava/lang/String;

    .line 253
    const-string v0, "cdRepeatType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_repeatType:Ljava/lang/String;

    .line 254
    const-string v0, "cdPaperWidth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperWidth:Ljava/lang/Double;

    .line 255
    const-string v0, "cdPaperHeight"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_paperHeight:Ljava/lang/Double;

    .line 256
    const-string v0, "cdPrintWidth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printWidth:Ljava/lang/Double;

    .line 257
    const-string v0, "cdPrintHeight"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->_printHeight:Ljava/lang/Double;

    return-void
.end method
