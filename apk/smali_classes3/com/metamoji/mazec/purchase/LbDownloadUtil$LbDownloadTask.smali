.class public Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;
.super Landroid/os/AsyncTask;
.source "LbDownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/purchase/LbDownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LbDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field m_downloadSizeDiff:I

.field m_http:Lokhttp3/OkHttpClient;

.field m_maxSize:I

.field m_request:Lokhttp3/Request;

.field final synthetic this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/purchase/LbDownloadUtil;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 145
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0xea60

    .line 146
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 147
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance v0, Lokhttp3/JavaNetCookieJar;

    sget-object v1, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->s_cookieStore:Ljava/net/CookieManager;

    invoke-direct {v0, v1}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    .line 148
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_http:Lokhttp3/OkHttpClient;

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_request:Lokhttp3/Request;

    const/4 p1, 0x0

    .line 151
    iput p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_maxSize:I

    .line 152
    iput p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_downloadSizeDiff:I

    return-void
.end method


# virtual methods
.method connectionAbort()V
    .locals 1

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_http:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_http:Lokhttp3/OkHttpClient;

    .line 170
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_request:Lokhttp3/Request;

    .line 172
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

.method protected createMethod(Ljava/lang/String;)Lokhttp3/Request;
    .locals 1

    .line 295
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 296
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 134
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 191
    const-string v0, "[DownloadTask] Request FAILED!!"

    const-string v1, "[LbDownloadTask]doInBackground"

    invoke-static {v1}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 193
    const-string p1, "[LbDownloadTask]doInBackground: cancelled."

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 199
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    .line 205
    :try_start_0
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->createMethod(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_request:Lokhttp3/Request;

    .line 206
    iget-object v4, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_http:Lokhttp3/OkHttpClient;

    invoke-virtual {v4, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 211
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    .line 214
    iget-object v6, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iget-object v6, v6, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-eqz v6, :cond_1

    .line 215
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    const-string v7, "application/json"

    invoke-static {v6, v7}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->checkContentType(Lokhttp3/MediaType;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    iget-object v6, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iput-object v2, v6, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    .line 221
    :cond_1
    iget-object v6, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iget-object v6, v6, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-eqz v6, :cond_2

    .line 222
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_maxSize:I

    .line 223
    new-array v6, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v6}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 227
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v6, 0x190

    if-ge p1, v6, :cond_c

    const/16 p1, 0x400

    .line 228
    new-array p1, p1, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 232
    :try_start_2
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 233
    :try_start_3
    iget-object v6, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iget-object v6, v6, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-nez v6, :cond_3

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0

    .line 234
    :cond_3
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iget-object v7, v7, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 236
    :cond_4
    :goto_0
    :try_start_4
    invoke-virtual {v5, p1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_7

    .line 250
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iget-object p1, p1, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-nez p1, :cond_5

    .line 251
    move-object p1, v6

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_5
    move-object p1, v2

    .line 255
    :goto_1
    :try_start_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_6

    .line 262
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 268
    :catch_0
    :cond_6
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catch_1
    move-object v1, v2

    move-object v2, p1

    move-object p1, v1

    move-object v1, v0

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    move-object v3, p1

    move-object p1, v2

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v3, p1

    move-object p1, v2

    goto :goto_3

    .line 240
    :cond_7
    :try_start_8
    invoke-virtual {v6, p1, v3, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 243
    iget-object v8, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iget-object v8, v8, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-eqz v8, :cond_4

    .line 244
    iput v7, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_downloadSizeDiff:I

    .line 245
    new-array v7, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v7}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v3, v2

    move-object v6, v3

    :goto_2
    move-object v2, v5

    goto :goto_5

    :catch_4
    move-exception p1

    move-object v3, v2

    move-object v6, v3

    :goto_3
    move-object v2, v5

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v3, v2

    move-object v6, v3

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v3, v2

    move-object v6, v3

    .line 257
    :goto_4
    :try_start_9
    invoke-static {p1, v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v2, :cond_8

    .line 262
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_6
    :cond_8
    if-eqz v6, :cond_9

    .line 268
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catch_7
    :cond_9
    move-object v2, v3

    goto :goto_7

    :catchall_4
    move-exception p1

    :goto_5
    if-eqz v2, :cond_a

    .line 262
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catch_8
    :cond_a
    if-eqz v6, :cond_b

    .line 268
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 272
    :catch_9
    :cond_b
    :try_start_e
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catch_a
    move-exception p1

    move-object v2, v3

    goto :goto_6

    :cond_c
    move-object p1, v2

    goto :goto_7

    :catch_b
    move-exception p1

    goto :goto_6

    :catchall_5
    move-exception p1

    goto :goto_8

    :catch_c
    move-exception p1

    move-object v4, v2

    .line 275
    :goto_6
    :try_start_f
    invoke-static {p1, v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 280
    :goto_7
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->connectionAbort()V

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    const-string v3, "contents"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "headers"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "errorMessage"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 280
    :goto_8
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->connectionAbort()V

    .line 281
    throw p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 343
    const-string v0, "[LbDownloadTask]onCancelled"

    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    .line 348
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->complatedNotify()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 134
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 324
    const-string v0, "[LbDownloadTask]onPostExecute"

    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->isCancelled()Z

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 326
    iput-object p1, v1, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    goto :goto_0

    .line 329
    :cond_0
    iput-object p1, v1, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    .line 332
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    invoke-virtual {p1}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->complatedNotify()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 134
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2

    .line 310
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iget-object p1, p1, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iget-object p1, p1, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;

    iget v0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_maxSize:I

    iget v1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->m_downloadSizeDiff:I

    invoke-interface {p1, v0, v1}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;->setProgress(II)V

    :cond_0
    return-void
.end method

.method public setUiDownloadProgress(Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    iput-object p1, v0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;

    return-void
.end method
