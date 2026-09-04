.class public Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;
.super Landroid/os/AsyncTask;
.source "LbDownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lb/LbDownloadUtil;
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

.field m_httpCall:Lokhttp3/Call;

.field m_maxSize:I

.field final synthetic this$0:Lcom/metamoji/lb/LbDownloadUtil;


# direct methods
.method public constructor <init>(Lcom/metamoji/lb/LbDownloadUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_httpCall:Lokhttp3/Call;

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_maxSize:I

    .line 194
    iput p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_downloadSizeDiff:I

    return-void
.end method


# virtual methods
.method connectionAbort()V
    .locals 2

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_httpCall:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 214
    :try_start_1
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    :try_start_2
    const-string v1, "[DownloadTask] URLConnection request cancel FAILED!!"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_httpCall:Lokhttp3/Call;

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected createCall(Ljava/lang/String;)Lokhttp3/Call;
    .locals 2

    .line 349
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 350
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 351
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

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

    .line 182
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/Map;
    .locals 11
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

    .line 240
    const-string v0, "[DownloadTask] Request FAILED!!"

    const/4 v1, 0x1

    .line 242
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 248
    :try_start_0
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->createCall(Ljava/lang/String;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_httpCall:Lokhttp3/Call;

    .line 249
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    .line 251
    :try_start_1
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, p1

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_c

    .line 258
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    .line 261
    iget-object v6, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iget-object v6, v6, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-eqz v6, :cond_0

    const-string v6, "application/json"

    invoke-static {v5, v6}, Lcom/metamoji/lb/LbDownloadUtil;->checkContentType(Lokhttp3/Headers;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    iget-object v6, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iput-object v3, v6, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    .line 266
    :cond_0
    iget-object v6, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iget-object v6, v6, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-eqz v6, :cond_2

    .line 267
    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 269
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_maxSize:I

    .line 271
    :cond_1
    new-array v6, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v6}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 275
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x400

    .line 276
    new-array v6, v6, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 280
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 281
    :try_start_4
    iget-object v8, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iget-object v8, v8, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-nez v8, :cond_3

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_1

    .line 282
    :cond_3
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iget-object v9, v9, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 284
    :cond_4
    :goto_1
    :try_start_5
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_7

    .line 298
    iget-object v6, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iget-object v6, v6, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-nez v6, :cond_5

    .line 299
    move-object v6, v8

    check-cast v6, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 303
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_6

    .line 310
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 316
    :catch_1
    :cond_6
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catch_2
    move-object v1, v0

    goto :goto_6

    .line 288
    :cond_7
    :try_start_8
    invoke-virtual {v8, v6, v2, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 291
    iget-object v10, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iget-object v10, v10, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    if-eqz v10, :cond_4

    .line 292
    iput v9, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_downloadSizeDiff:I

    .line 293
    new-array v9, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v9}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v4, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v8, v3

    :goto_2
    move-object v3, v7

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v4, v3

    move-object v8, v4

    :goto_3
    move-object v3, v7

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v3

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v4, v3

    move-object v8, v4

    .line 305
    :goto_4
    :try_start_9
    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v3, :cond_8

    .line 310
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_6
    :cond_8
    if-eqz v8, :cond_9

    .line 316
    :try_start_b
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catch_7
    :cond_9
    move-object v3, v4

    move-object v4, v0

    goto :goto_6

    :catchall_4
    move-exception v0

    :goto_5
    if-eqz v3, :cond_a

    .line 310
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catch_8
    :cond_a
    if-eqz v8, :cond_b

    .line 316
    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 320
    :catch_9
    :cond_b
    :try_start_e
    throw v0

    .line 324
    :cond_c
    const-string v0, "[DownloadTask] Not SuccessStatusCode..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-object v5, v3

    :cond_d
    :goto_6
    if-eqz p1, :cond_e

    .line 329
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 331
    :cond_e
    invoke-virtual {p0}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->connectionAbort()V

    .line 334
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 335
    const-string v0, "contents"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "headers"

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "error"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, "errorMessage"

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_5
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    :goto_7
    if-eqz v3, :cond_f

    .line 329
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 331
    :cond_f
    invoke-virtual {p0}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->connectionAbort()V

    .line 332
    throw p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/lb/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    .line 399
    iget-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    invoke-virtual {v0}, Lcom/metamoji/lb/LbDownloadUtil;->complatedNotify()V

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

    .line 182
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iput-object p1, v0, Lcom/metamoji/lb/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    .line 383
    iget-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    invoke-virtual {p1}, Lcom/metamoji/lb/LbDownloadUtil;->complatedNotify()V

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

    .line 182
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2

    .line 364
    iget-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iget-object p1, p1, Lcom/metamoji/lb/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iget-object p1, p1, Lcom/metamoji/lb/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;

    iget v0, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_maxSize:I

    iget v1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->m_downloadSizeDiff:I

    invoke-interface {p1, v0, v1}, Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;->setProgress(II)V

    :cond_0
    return-void
.end method

.method public setUiDownloadProgress(Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    iput-object p1, v0, Lcom/metamoji/lb/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;

    return-void
.end method
