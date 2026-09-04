.class public Lcom/metamoji/noteanytime/cm/IntentContent;
.super Ljava/lang/Object;
.source "IntentContent.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "import"

.field private static final EXPIRE:J = 0x5265c00L

.field public static final Key_Filename:Ljava/lang/String; = "com.metamoji.cm.IntentContent:Filename"

.field public static final Key_TemporaryFile:Ljava/lang/String; = "com.metamoji.cm.IntentContent:TemporaryFile"

.field private static final TEMP_PREFIX:Ljava/lang/String; = "imp"

.field private static final WORK_DIR:Ljava/lang/String; = "com.metamoji.cm.IntentContent"


# instance fields
.field private _deleteOnDispose:Z

.field private _file:Ljava/io/File;

.field private _mimeType:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _stream:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_stream:Ljava/io/InputStream;

    .line 57
    iput-object p2, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_mimeType:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_name:Ljava/lang/String;

    .line 59
    iput-boolean p4, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_deleteOnDispose:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_deleteOnDispose:Z

    .line 63
    iput-object p1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_stream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    .line 65
    iput-object p2, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_mimeType:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_name:Ljava/lang/String;

    return-void
.end method

.method private static clearWorkDir(Ljava/io/File;)V
    .locals 7

    .line 336
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 342
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 343
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_1

    .line 345
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static createTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    const-string v0, "imp"

    invoke-static {}, Lcom/metamoji/noteanytime/cm/IntentContent;->getWorkDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static fillMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 313
    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isUnknownMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 314
    invoke-static {p1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeTypeByFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    const-string v0, "application/octet-stream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public static getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.metamoji.note.CUSTOM_EDIT"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.metamoji.note.intent.action.ImageImportFromMainActivity"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {p0, p1, p2}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContentForSend(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContentForView(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object p0

    return-object p0
.end method

.method public static getContentForSend(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;
    .locals 3

    .line 206
    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 210
    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isUnknownMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    .line 212
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/task/GetFileTask;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isUnknownMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 218
    :cond_1
    const-string v1, "import"

    invoke-static {v1, v0, p2}, Lcom/metamoji/noteanytime/cm/IntentContent;->setDefaultExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-static {v0, p2}, Lcom/metamoji/noteanytime/cm/IntentContent;->fillMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 222
    new-instance p1, Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-direct {p1, p0, v0, p2}, Lcom/metamoji/noteanytime/cm/IntentContent;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 224
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContentForView(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;
    .locals 11

    .line 148
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {v1, p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->fillMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 153
    new-instance v0, Lcom/metamoji/noteanytime/cm/IntentContent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getSuggestedFilaname(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/IntentContent;->isTemporaryFile(Landroid/content/Intent;)Z

    move-result p0

    invoke-direct {v0, v1, p2, p1, p0}, Lcom/metamoji/noteanytime/cm/IntentContent;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 154
    :cond_0
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "import"

    const/4 v4, 0x0

    if-nez v2, :cond_8

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 171
    :cond_1
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 173
    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_display_name"

    aput-object v2, v7, v0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    :try_start_1
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_3

    .line 176
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 179
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz p1, :cond_2

    .line 174
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v2, v4

    :goto_1
    if-eqz p1, :cond_4

    .line 182
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, p1

    :goto_2
    move-object p1, v0

    move-object v2, v4

    .line 187
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "IntentContent: ContentResolver#query throws error "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-object v5, p1

    :catch_4
    move-object v2, v4

    :catch_5
    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, v2

    .line 192
    :cond_6
    :goto_5
    invoke-static {v3, v1, p2}, Lcom/metamoji/noteanytime/cm/IntentContent;->setDefaultExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {v1, p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->fillMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 195
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 196
    new-instance v0, Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-direct {v0, p0, p2, p1}, Lcom/metamoji/noteanytime/cm/IntentContent;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v0

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 198
    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7
    return-object v4

    .line 155
    :cond_8
    :goto_6
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 156
    invoke-static {v3, v1, p2}, Lcom/metamoji/noteanytime/cm/IntentContent;->setDefaultExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p2, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 160
    :try_start_7
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/network/NwResponseStream;->createIfStatus200(Lokhttp3/Response;)Lcom/metamoji/network/NwResponseStream;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 164
    invoke-static {v1, p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->fillMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-direct {v1, p2, v0, p1}, Lcom/metamoji/noteanytime/cm/IntentContent;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    return-object v1

    :catch_6
    move-exception v0

    move-object p1, v0

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to download uri ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-object v4
.end method

.method public static getMimeType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 305
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-static {p0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isUnknownMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string p0, "application/octet-stream"

    :cond_0
    return-object p0
.end method

.method public static getSuggestedFilaname(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 390
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 394
    :cond_0
    const-string v0, "com.metamoji.cm.IntentContent:Filename"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWorkDir()Ljava/io/File;
    .locals 3

    .line 325
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "com.metamoji.cm.IntentContent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 327
    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->clearWorkDir(Ljava/io/File;)V

    return-object v0
.end method

.method public static isTemporaryFile(Landroid/content/Intent;)Z
    .locals 3

    .line 369
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "com.metamoji.cm.IntentContent:TemporaryFile"

    .line 370
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 377
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 378
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 384
    const-string v0, "IntentContent: failed to check fila path"

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public static needsExternalStoragePermission(Landroid/content/Intent;)Z
    .locals 2

    .line 364
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.metamoji.cm.IntentContent:TemporaryFile"

    .line 365
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private realizeFile()Z
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/task/GetFileTask;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 254
    :try_start_0
    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->createTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 255
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 256
    :try_start_2
    iget-object v4, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_stream:Ljava/io/InputStream;

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    iput-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    .line 258
    iput-boolean v1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_deleteOnDispose:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 261
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 255
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 263
    :goto_2
    :try_start_6
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_2

    .line 266
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    return v1

    :goto_5
    if-eqz v2, :cond_4

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 268
    :cond_4
    throw v0
.end method

.method public static resolveContent(Landroid/content/Intent;Landroid/content/ContentResolver;)V
    .locals 2

    .line 406
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 410
    invoke-static {p0, p1, v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_4

    .line 426
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->close()V

    return-void

    .line 414
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->detachFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-eqz p1, :cond_4

    .line 426
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->close()V

    return-void

    .line 419
    :cond_2
    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v0, "com.metamoji.cm.IntentContent:TemporaryFile"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 424
    const-string v1, "com.metamoji.cm.IntentContent:Filename"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 426
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->close()V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_5

    .line 410
    :try_start_2
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0
.end method

.method private static setDefaultExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 233
    invoke-static {p0}, Lcom/metamoji/ui/task/GetFileTask;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-static {p1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public checkImageMimeType()Z
    .locals 4

    .line 278
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 283
    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 284
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 286
    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    .line 291
    :cond_1
    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_mimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 294
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return v1
.end method

.method public close()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_stream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 80
    :goto_0
    iput-object v1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_stream:Ljava/io/InputStream;

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_deleteOnDispose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 84
    iput-object v1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    :cond_1
    return-void
.end method

.method public detachFile()Ljava/io/File;
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/metamoji/noteanytime/cm/IntentContent;->realizeFile()Z

    .line 95
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_deleteOnDispose:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    .line 101
    iput-object v1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/cm/IntentContent;->close()V

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/metamoji/noteanytime/cm/IntentContent;->realizeFile()Z

    .line 90
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_name:Ljava/lang/String;

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_stream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_stream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/noteanytime/cm/IntentContent;->_mimeType:Ljava/lang/String;

    return-object v0
.end method
