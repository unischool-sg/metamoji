.class public Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;
.super Lcom/metamoji/dm/fw/metadata/DmSearchCondition;
.source "DmLibrarySheetTemplateSearchCondition.java"


# static fields
.field public static final BOOL3_FALSE:I = 0x0

.field public static final BOOL3_TRUE:I = -0x1

.field public static final BOOL3_UNDEF:I = 0x1


# instance fields
.field private _bookmarked:I

.field private _createFrom:Ljava/util/Date;

.field private _createTo:Ljava/util/Date;

.field private _creatorId:Ljava/lang/String;

.field private _creatorName:Ljava/lang/String;

.field private _downloadFrom:Ljava/util/Date;

.field private _downloadTo:Ljava/util/Date;

.field private _isFree:I

.field private _isTrial:I

.field private _lastAccessFrom:Ljava/util/Date;

.field private _lastAccessTo:Ljava/util/Date;

.field private _name:Ljava/lang/String;

.field private _productId:Ljava/lang/String;

.field private _productName:Ljava/lang/String;

.field private _sort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmSortCondition;",
            ">;"
        }
    .end annotation
.end field

.field private _type:Ljava/lang/String;

.field private _updateFrom:Ljava/util/Date;

.field private _updateTo:Ljava/util/Date;

.field private _useDateFrom:Ljava/util/Date;

.field private _useDateIsNotNULL:I

.field private _useDateTo:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 114
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmSearchCondition;-><init>()V

    .line 116
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 118
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createFrom:Ljava/util/Date;

    .line 119
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createTo:Ljava/util/Date;

    .line 120
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateFrom:Ljava/util/Date;

    .line 121
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateTo:Ljava/util/Date;

    .line 122
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessFrom:Ljava/util/Date;

    .line 123
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessTo:Ljava/util/Date;

    .line 124
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateFrom:Ljava/util/Date;

    .line 125
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateTo:Ljava/util/Date;

    .line 126
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadFrom:Ljava/util/Date;

    .line 127
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadTo:Ljava/util/Date;

    const/4 v0, 0x1

    .line 129
    iput v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateIsNotNULL:I

    .line 130
    iput v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_bookmarked:I

    .line 131
    iput v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isFree:I

    .line 132
    iput v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isTrial:I

    return-void
.end method


# virtual methods
.method public createCondition(Ljava/util/ArrayList;Lcom/j256/ormlite/stmt/Where;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/j256/ormlite/stmt/SelectArg;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->clear()Lcom/j256/ormlite/stmt/Where;

    .line 148
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x1

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    .line 267
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 158
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 161
    new-instance v6, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v6}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 162
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    const-string p1, "entityId"

    invoke-virtual {p2, p1, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_type:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 170
    new-instance p1, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {p1}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    if-eqz v3, :cond_2

    .line 172
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 174
    :cond_2
    const-string v3, "type"

    invoke-virtual {p2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 175
    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "%"

    if-eqz p1, :cond_5

    .line 180
    :try_start_1
    new-instance p1, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {p1}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    if-eqz v3, :cond_4

    .line 183
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 185
    :cond_4
    const-string v3, "name"

    invoke-virtual {p2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    .line 189
    :cond_5
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createFrom:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "create"

    if-nez p1, :cond_7

    if-eqz v3, :cond_6

    .line 192
    :try_start_2
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 194
    :cond_6
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createFrom:Ljava/util/Date;

    invoke-virtual {p2, v6, p1}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 197
    :cond_7
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createTo:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz v3, :cond_8

    .line 200
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 202
    :cond_8
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createTo:Ljava/util/Date;

    invoke-virtual {p2, v6, p1}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 205
    :cond_9
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateFrom:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "update"

    if-nez p1, :cond_b

    if-eqz v3, :cond_a

    .line 208
    :try_start_3
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 210
    :cond_a
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateFrom:Ljava/util/Date;

    invoke-virtual {p2, v6, p1}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 213
    :cond_b
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateTo:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    if-eqz v3, :cond_c

    .line 216
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 218
    :cond_c
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateTo:Ljava/util/Date;

    invoke-virtual {p2, v6, p1}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 221
    :cond_d
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessFrom:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v6, "lastAccess"

    if-nez p1, :cond_f

    if-eqz v3, :cond_e

    .line 224
    :try_start_4
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 226
    :cond_e
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessFrom:Ljava/util/Date;

    invoke-virtual {p2, v6, p1}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 229
    :cond_f
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessTo:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    if-eqz v3, :cond_10

    .line 232
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 234
    :cond_10
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessTo:Ljava/util/Date;

    invoke-virtual {p2, v6, p1}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 237
    :cond_11
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateFrom:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v6, "useDate"

    if-nez p1, :cond_13

    if-eqz v3, :cond_12

    .line 240
    :try_start_5
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 242
    :cond_12
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateFrom:Ljava/util/Date;

    invoke-virtual {p2, v6, p1}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 245
    :cond_13
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateTo:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    if-eqz v3, :cond_14

    .line 248
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 250
    :cond_14
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateTo:Ljava/util/Date;

    invoke-virtual {p2, v6, p1}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 253
    :cond_15
    iget p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateIsNotNULL:I

    if-eq p1, v1, :cond_17

    if-eqz v3, :cond_16

    .line 256
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 258
    :cond_16
    invoke-virtual {p2, v6, v0}, Lcom/j256/ormlite/stmt/Where;->gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 261
    :cond_17
    iget p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_bookmarked:I

    const/4 v6, -0x1

    if-eq p1, v1, :cond_1b

    if-eqz v3, :cond_18

    .line 264
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 266
    :cond_18
    iget p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_bookmarked:I
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v3, "bookmarked"

    if-nez p1, :cond_19

    .line 267
    :try_start_6
    invoke-virtual {p2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_1

    :cond_19
    if-ne p1, v6, :cond_1a

    .line 269
    invoke-virtual {p2, v3, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    :cond_1a
    :goto_1
    move v3, v1

    .line 272
    :cond_1b
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadFrom:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v7, "download"

    if-nez p1, :cond_1d

    if-eqz v3, :cond_1c

    .line 275
    :try_start_7
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 277
    :cond_1c
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadFrom:Ljava/util/Date;

    invoke-virtual {p2, v7, p1}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 280
    :cond_1d
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadTo:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    if-eqz v3, :cond_1e

    .line 283
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 285
    :cond_1e
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadTo:Ljava/util/Date;

    invoke-virtual {p2, v7, p1}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v3, v1

    .line 288
    :cond_1f
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_productId:Ljava/lang/String;

    if-eqz p1, :cond_21

    .line 290
    new-instance p1, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {p1}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    if-eqz v3, :cond_20

    .line 292
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 294
    :cond_20
    const-string v0, "productId"

    invoke-virtual {p2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 295
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_productId:Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    .line 298
    :cond_21
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_productName:Ljava/lang/String;

    if-eqz p1, :cond_23

    .line 300
    new-instance p1, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {p1}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    if-eqz v3, :cond_22

    .line 303
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 305
    :cond_22
    const-string v0, "productName"

    invoke-virtual {p2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_productName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    .line 309
    :cond_23
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_creatorId:Ljava/lang/String;

    if-eqz p1, :cond_25

    .line 311
    new-instance p1, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {p1}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    if-eqz v3, :cond_24

    .line 313
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 315
    :cond_24
    const-string v0, "creatorId"

    invoke-virtual {p2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 316
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_creatorId:Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    .line 319
    :cond_25
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_creatorName:Ljava/lang/String;

    if-eqz p1, :cond_27

    .line 321
    new-instance p1, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {p1}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    if-eqz v3, :cond_26

    .line 324
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 326
    :cond_26
    const-string v0, "creatorName"

    invoke-virtual {p2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_creatorName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    .line 330
    :cond_27
    iget p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isFree:I

    if-eq p1, v1, :cond_2b

    if-eqz v3, :cond_28

    .line 333
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 335
    :cond_28
    iget p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isFree:I
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v0, "isFree"

    if-nez p1, :cond_29

    .line 336
    :try_start_8
    invoke-virtual {p2, v0, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_2

    :cond_29
    if-ne p1, v6, :cond_2a

    .line 338
    invoke-virtual {p2, v0, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    :cond_2a
    :goto_2
    move v3, v1

    .line 341
    :cond_2b
    iget p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isTrial:I

    if-eq p1, v1, :cond_2e

    if-eqz v3, :cond_2c

    .line 344
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 346
    :cond_2c
    iget p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isTrial:I
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v0, "isTrial"

    if-nez p1, :cond_2d

    .line 347
    :try_start_9
    invoke-virtual {p2, v0, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    return-void

    :cond_2d
    if-ne p1, v6, :cond_2e

    .line 349
    invoke-virtual {p2, v0, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_2e
    return-void

    .line 354
    :catch_0
    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->clear()Lcom/j256/ormlite/stmt/Where;

    .line 355
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 356
    const-string p1, "Unable to construct where-condition"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public getBookmarked()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_bookmarked:I

    return v0
.end method

.method public getCreateFrom()Ljava/util/Date;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getCreateTo()Ljava/util/Date;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createTo:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadFrom()Ljava/util/Date;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getDownloadTo()Ljava/util/Date;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadTo:Ljava/util/Date;

    return-object v0
.end method

.method public getIsFree()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isFree:I

    return v0
.end method

.method public getIsTrial()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isTrial:I

    return v0
.end method

.method public getLastAccessFrom()Ljava/util/Date;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getLastAccessTo()Ljava/util/Date;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessTo:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_productName:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmSortCondition;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_sort:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFrom()Ljava/util/Date;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getUpdateTo()Ljava/util/Date;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateTo:Ljava/util/Date;

    return-object v0
.end method

.method public getUseDateFrom()Ljava/util/Date;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getUseDateIsNotNULL()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateIsNotNULL:I

    return v0
.end method

.method public getUseDateTo()Ljava/util/Date;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateTo:Ljava/util/Date;

    return-object v0
.end method

.method public setBookmarked(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_bookmarked:I

    return-void
.end method

.method public setCreateFrom(Ljava/util/Date;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createFrom:Ljava/util/Date;

    return-void
.end method

.method public setCreateTo(Ljava/util/Date;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_createTo:Ljava/util/Date;

    return-void
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_creatorId:Ljava/lang/String;

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_creatorName:Ljava/lang/String;

    return-void
.end method

.method public setDownloadFrom(Ljava/util/Date;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadFrom:Ljava/util/Date;

    return-void
.end method

.method public setDownloadTo(Ljava/util/Date;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_downloadTo:Ljava/util/Date;

    return-void
.end method

.method public setIsFree(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isFree:I

    return-void
.end method

.method public setIsTrial(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_isTrial:I

    return-void
.end method

.method public setLastAccessFrom(Ljava/util/Date;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessFrom:Ljava/util/Date;

    return-void
.end method

.method public setLastAccessTo(Ljava/util/Date;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_lastAccessTo:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_name:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_productName:Ljava/lang/String;

    return-void
.end method

.method public setSort(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmSortCondition;",
            ">;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_sort:Ljava/util/ArrayList;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_type:Ljava/lang/String;

    return-void
.end method

.method public setUpdateFrom(Ljava/util/Date;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateFrom:Ljava/util/Date;

    return-void
.end method

.method public setUpdateTo(Ljava/util/Date;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_updateTo:Ljava/util/Date;

    return-void
.end method

.method public setUseDateFrom(Ljava/util/Date;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateFrom:Ljava/util/Date;

    return-void
.end method

.method public setUseDateIsNotNULL(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateIsNotNULL:I

    return-void
.end method

.method public setUseDateTo(Ljava/util/Date;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->_useDateTo:Ljava/util/Date;

    return-void
.end method
