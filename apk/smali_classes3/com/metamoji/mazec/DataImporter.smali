.class public Lcom/metamoji/mazec/DataImporter;
.super Ljava/lang/Object;
.source "DataImporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/DataImporter$StatusListener;
    }
.end annotation


# static fields
.field public static final ERROR_IMPORT_LEARN_WORDS_FAILED:I = -0xd3

.field public static final ERROR_IMPORT_PREFERENCE_FAILED:I = -0xb

.field public static final ERROR_IMPORT_USER_DICTS_FAILED:I = -0x15

.field public static final ERROR_IMPORT_USER_WORDS_FAILED:I = -0xc9

.field public static final ERROR_IMPORT_USER_WORDS_PARTIALLY:I = -0xca

.field public static final IMPORT_FINISHED:I = 0x3e8

.field public static final IMPORT_LEARN_WORDS_FINISHED:I = 0xd3

.field public static final IMPORT_LEARN_WORDS_START:I = 0xd2

.field public static final IMPORT_PREFERENCE_FINISHED:I = 0xb

.field public static final IMPORT_PREFERENCE_START:I = 0xa

.field public static final IMPORT_START:I = 0x0

.field public static final IMPORT_USER_DICTS_FINISHED:I = 0x15

.field public static final IMPORT_USER_DICTS_START:I = 0x14

.field public static final IMPORT_USER_WORDS_FINISHED:I = 0xc9

.field public static final IMPORT_USER_WORDS_START:I = 0xc8


# instance fields
.field mContextImportFrom:Landroid/content/Context;

.field mContextImportTo:Landroid/content/Context;

.field mListenerHandler:Landroid/os/Handler;

.field mStatusListener:Lcom/metamoji/mazec/DataImporter$StatusListener;

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/metamoji/mazec/DataImporter$StatusListener;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/metamoji/mazec/DataImporter;->mContextImportFrom:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/metamoji/mazec/DataImporter;->mContextImportTo:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/metamoji/mazec/DataImporter;->mStatusListener:Lcom/metamoji/mazec/DataImporter$StatusListener;

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/metamoji/mazec/DataImporter;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private getFromUserDictionaryDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/metamoji/mazec/DataImporter;->mContextImportFrom:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/metamoji/mazec/MazecConfig;->getConversionUserDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x11

    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method private getToConverter(Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/mazec/DataImporter;->mContextImportTo:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/metamoji/mazec/converter/ConvertEngine;->createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object p1

    return-object p1
.end method

.method private imoprtPreference()V
    .locals 2

    const/16 v0, 0xa

    .line 96
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(I)V

    .line 100
    :try_start_0
    new-instance v0, Lcom/metamoji/mazec/MazecPreferences;

    iget-object v1, p0, Lcom/metamoji/mazec/DataImporter;->mContextImportTo:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/metamoji/mazec/MazecPreferences;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v1, p0, Lcom/metamoji/mazec/DataImporter;->mContextImportFrom:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecPreferences;->importFrom(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    const/16 v0, -0xb

    :goto_0
    const/16 v1, 0xb

    .line 105
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    return-void
.end method

.method private importLearnWords(Landroid/database/sqlite/SQLiteDatabase;Lcom/metamoji/mazec/converter/ConvertEngine;)V
    .locals 13

    const/16 v0, 0xd2

    .line 221
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(I)V

    .line 225
    new-instance v0, Lcom/metamoji/mazec/RACConfig;

    invoke-direct {v0}, Lcom/metamoji/mazec/RACConfig;-><init>()V

    const/16 v1, 0xd3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 227
    :try_start_0
    const-string/jumbo v4, "select distinct candidate, stroke, posLeft, posRight, prevCandidate, prevStroke, prevPosLeft, prevPosRight from dic where type=1 order by rowid"

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Landroid/database/sqlite/SQLiteCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 234
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    .line 236
    new-instance v6, Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 237
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 238
    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x3

    .line 239
    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v11

    invoke-direct {v6, v7, v9, v10, v11}, Lcom/metamoji/mazec/converter/MmjiWord;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x4

    .line 240
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteCursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 242
    invoke-virtual {p2}, Lcom/metamoji/mazec/converter/ConvertEngine;->breakSequence()V

    goto :goto_1

    .line 244
    :cond_0
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x5

    .line 245
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    .line 246
    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x7

    .line 247
    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v11

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v3}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 251
    invoke-virtual {v3}, Lcom/metamoji/mazec/converter/MmjiWord;->getReading()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 252
    invoke-virtual {v3}, Lcom/metamoji/mazec/converter/MmjiWord;->getPOSLeft()I

    move-result v12

    if-ne v12, v10, :cond_1

    .line 253
    invoke-virtual {v3}, Lcom/metamoji/mazec/converter/MmjiWord;->getPOSRight()I

    move-result v3

    if-eq v3, v11, :cond_2

    .line 254
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/mazec/converter/ConvertEngine;->breakSequence()V

    .line 256
    new-instance v3, Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-direct {v3, v7, v9, v10, v11}, Lcom/metamoji/mazec/converter/MmjiWord;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 257
    invoke-virtual {p2, v0, v3, v8}, Lcom/metamoji/mazec/converter/ConvertEngine;->commit(Lcom/metamoji/mazec/RACConfig;Lcom/metamoji/mazec/converter/MmjiWord;Z)V

    .line 261
    :cond_2
    :goto_1
    invoke-virtual {p2, v0, v6, v8}, Lcom/metamoji/mazec/converter/ConvertEngine;->commit(Lcom/metamoji/mazec/RACConfig;Lcom/metamoji/mazec/converter/MmjiWord;Z)V

    .line 265
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteCursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    move-object v3, v6

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/mazec/RACConfig;->dispose()V

    if-eqz p1, :cond_4

    .line 274
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 276
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    return-void

    :catchall_0
    move-exception p2

    move-object v3, p1

    goto :goto_2

    :catch_0
    move-object v3, p1

    goto :goto_3

    :catchall_1
    move-exception p2

    .line 271
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/mazec/RACConfig;->dispose()V

    if-eqz v3, :cond_5

    .line 274
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 276
    :cond_5
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    .line 277
    throw p2

    .line 271
    :catch_1
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/mazec/RACConfig;->dispose()V

    if-eqz v3, :cond_6

    .line 274
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->close()V

    :cond_6
    const/16 p1, -0xd3

    .line 276
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    return-void
.end method

.method private importUserDictionary()V
    .locals 6

    const/16 v0, 0x14

    .line 109
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(I)V

    const/4 v0, 0x2

    .line 113
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ja_JP"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "en_US"

    aput-object v4, v1, v2

    const/4 v2, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v5, v1, v3

    .line 115
    :try_start_0
    invoke-direct {p0, v5}, Lcom/metamoji/mazec/DataImporter;->getFromUserDictionaryDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-direct {p0, v5}, Lcom/metamoji/mazec/DataImporter;->getToConverter(Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_0

    .line 120
    :try_start_1
    invoke-direct {p0, v2, v5}, Lcom/metamoji/mazec/DataImporter;->importUserWords(Landroid/database/sqlite/SQLiteDatabase;Lcom/metamoji/mazec/converter/ConvertEngine;)V

    .line 121
    invoke-direct {p0, v2, v5}, Lcom/metamoji/mazec/DataImporter;->importLearnWords(Landroid/database/sqlite/SQLiteDatabase;Lcom/metamoji/mazec/converter/ConvertEngine;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    invoke-virtual {v5}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v5}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    .line 124
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 131
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 133
    :cond_1
    throw v0

    :catch_0
    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    const/16 v4, -0x15

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x15

    .line 135
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    return-void
.end method

.method private importUserWords(Landroid/database/sqlite/SQLiteDatabase;Lcom/metamoji/mazec/converter/ConvertEngine;)V
    .locals 12

    const/16 v0, 0xc8

    .line 156
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(I)V

    const/16 v0, -0xc9

    const/16 v1, 0xc9

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 161
    :try_start_0
    const-string/jumbo v4, "select distinct candidate, stroke from dic where type=0 order by rowid desc"

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Landroid/database/sqlite/SQLiteCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_0

    .line 168
    new-instance v6, Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/metamoji/mazec/converter/MmjiWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteCursor;->moveToNext()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/mazec/converter/ConvertEngine;->userWords()[Lcom/metamoji/mazec/converter/MmjiWord;

    move-result-object v3

    .line 173
    array-length v5, v3

    rsub-int v5, v5, 0x7d0

    .line 174
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 175
    array-length v7, v3

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v3, v8

    .line 176
    invoke-virtual {v9}, Lcom/metamoji/mazec/converter/MmjiWord;->getReading()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-nez v10, :cond_1

    .line 178
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {v9}, Lcom/metamoji/mazec/converter/MmjiWord;->getReading()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_1
    invoke-virtual {v9}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 184
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/converter/MmjiWord;

    .line 186
    invoke-virtual {v7}, Lcom/metamoji/mazec/converter/MmjiWord;->getReading()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_3

    .line 188
    invoke-virtual {v7}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 193
    :cond_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 198
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_5

    .line 200
    invoke-interface {v3, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    const/16 v2, -0xca

    .line 204
    :cond_5
    invoke-virtual {p2, v3}, Lcom/metamoji/mazec/converter/ConvertEngine;->addUserWords(Ljava/util/List;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    if-eqz p1, :cond_7

    .line 214
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 216
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    return-void

    :catchall_0
    move-exception p2

    move-object v3, p1

    goto :goto_4

    :catch_0
    move-object v3, p1

    goto :goto_5

    :catchall_1
    move-exception p2

    :goto_4
    if-eqz v3, :cond_8

    .line 214
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 216
    :cond_8
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    .line 217
    throw p2

    :catch_1
    :goto_5
    if-eqz v3, :cond_9

    .line 214
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 216
    :cond_9
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    return-void
.end method


# virtual methods
.method protected notiryStatusChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(II)V

    return-void
.end method

.method protected notiryStatusChanged(II)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/metamoji/mazec/DataImporter;->mListenerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/mazec/DataImporter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/mazec/DataImporter$1;-><init>(Lcom/metamoji/mazec/DataImporter;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(I)V

    .line 85
    invoke-direct {p0}, Lcom/metamoji/mazec/DataImporter;->imoprtPreference()V

    .line 86
    invoke-direct {p0}, Lcom/metamoji/mazec/DataImporter;->importUserDictionary()V

    const/16 v0, 0x3e8

    .line 88
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/DataImporter;->notiryStatusChanged(I)V

    .line 90
    monitor-enter p0

    const/4 v0, 0x0

    .line 91
    :try_start_0
    iput-object v0, p0, Lcom/metamoji/mazec/DataImporter;->mThread:Ljava/lang/Thread;

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 1

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/mazec/DataImporter;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/metamoji/mazec/DataImporter;->mThread:Ljava/lang/Thread;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
