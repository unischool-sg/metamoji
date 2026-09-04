.class public final Lcom/metamoji/video/AmvCache$download$2;
.super Ljava/lang/Object;
.source "AmvCacheManager.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvCache;->download(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/metamoji/video/AmvCache$download$2",
        "Lokhttp3/Callback;",
        "onResponse",
        "",
        "call",
        "Lokhttp3/Call;",
        "response",
        "Lokhttp3/Response;",
        "onFailure",
        "e",
        "Ljava/io/IOException;",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/video/AmvCache;


# direct methods
.method constructor <init>(Lcom/metamoji/video/AmvCache;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/video/AmvCache$download$2;->this$0:Lcom/metamoji/video/AmvCache;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    sget-object p1, Lcom/metamoji/video/AmvCache;->Companion:Lcom/metamoji/video/AmvCache$Companion;

    invoke-static {p1}, Lcom/metamoji/video/AmvCache$Companion;->access$getLogger(Lcom/metamoji/video/AmvCache$Companion;)Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    const-string v0, "download failer."

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/metamoji/video/AmvCache$download$2;->this$0:Lcom/metamoji/video/AmvCache;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvCache;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/Throwable;)V

    .line 397
    iget-object p1, p0, Lcom/metamoji/video/AmvCache$download$2;->this$0:Lcom/metamoji/video/AmvCache;

    invoke-static {p1}, Lcom/metamoji/video/AmvCache;->access$getMLock$p(Lcom/metamoji/video/AmvCache;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/video/AmvCache$download$2;->this$0:Lcom/metamoji/video/AmvCache;

    monitor-enter p1

    const/4 v0, 0x0

    .line 398
    :try_start_0
    invoke-static {p2, v0}, Lcom/metamoji/video/AmvCache;->access$setMDownloading$p(Lcom/metamoji/video/AmvCache;Z)V

    const/4 v0, 0x0

    .line 399
    invoke-static {p2, v0}, Lcom/metamoji/video/AmvCache;->access$setMFile$p(Lcom/metamoji/video/AmvCache;Ljava/io/File;)V

    .line 400
    invoke-static {p2, v0}, Lcom/metamoji/video/AmvCache;->access$setMCall$p(Lcom/metamoji/video/AmvCache;Lokhttp3/Call;)V

    .line 401
    invoke-static {p2}, Lcom/metamoji/video/AmvCache;->access$getMDownloadedListener$p(Lcom/metamoji/video/AmvCache;)Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    invoke-static {p2}, Lcom/metamoji/video/AmvCache;->access$getMDownloadedListener$p(Lcom/metamoji/video/AmvCache;)Lcom/metamoji/lib/utils/Funcies2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/lib/utils/Funcies2;->clear()V

    .line 403
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "call"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "response"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v3, v1, Lcom/metamoji/video/AmvCache$download$2;->this$0:Lcom/metamoji/video/AmvCache;

    invoke-virtual {v3}, Lcom/metamoji/video/AmvCache;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/video/AmvError;->reset()V

    .line 353
    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    iget-object v0, v1, Lcom/metamoji/video/AmvCache$download$2;->this$0:Lcom/metamoji/video/AmvCache;

    :try_start_0
    move-object v4, v3

    check-cast v4, Lokhttp3/Response;

    .line 354
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    move-object v7, v4

    check-cast v7, Lokhttp3/ResponseBody;

    .line 355
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v8

    check-cast v8, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    move-object v9, v8

    check-cast v9, Ljava/io/InputStream;

    .line 356
    sget-object v10, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvCache;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/metamoji/video/AmvCacheManager;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 358
    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v11, Ljava/io/Closeable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    move-object v12, v11

    check-cast v12, Ljava/io/FileOutputStream;

    .line 359
    sget-object v13, Lcom/metamoji/video/AmvCache;->Companion:Lcom/metamoji/video/AmvCache$Companion;

    invoke-static {v13}, Lcom/metamoji/video/AmvCache$Companion;->access$getLogger(Lcom/metamoji/video/AmvCache$Companion;)Lcom/metamoji/lib/utils/UtLog;

    move-result-object v13

    invoke-virtual {v0}, Lcom/metamoji/video/AmvCache;->getKey()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": file created"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v13

    const/high16 v7, 0x20000

    .line 362
    new-array v7, v7, [B

    const-wide/16 v15, 0x0

    .line 364
    :goto_0
    invoke-virtual {v9, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ltz v6, :cond_1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    int-to-long v9, v6

    add-long/2addr v15, v9

    .line 367
    :try_start_5
    invoke-virtual {v0}, Lcom/metamoji/video/AmvCache;->getProgressCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v9, v10, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 368
    :cond_0
    invoke-virtual {v12, v7, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v18, v10

    .line 370
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 371
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v5, 0x0

    .line 358
    :try_start_6
    invoke-static {v11, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v10, v18

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v18, v10

    :goto_1
    move-object v5, v0

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-static {v11, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_0
    move-object/from16 v18, v10

    .line 374
    :catch_1
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->deleteOnExit()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v10, 0x0

    :goto_2
    const/4 v5, 0x0

    .line 355
    :try_start_a
    invoke-static {v8, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 354
    :try_start_b
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object v5, v10

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 355
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 354
    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_f
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_2
    const/4 v5, 0x0

    :goto_3
    const/4 v4, 0x0

    .line 353
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-nez v5, :cond_3

    .line 382
    new-instance v0, Ljava/io/IOException;

    const-string v3, "no body data."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/video/AmvCache$download$2;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void

    .line 385
    :cond_3
    iget-object v0, v1, Lcom/metamoji/video/AmvCache$download$2;->this$0:Lcom/metamoji/video/AmvCache;

    invoke-static {v0}, Lcom/metamoji/video/AmvCache;->access$getMLock$p(Lcom/metamoji/video/AmvCache;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, v1, Lcom/metamoji/video/AmvCache$download$2;->this$0:Lcom/metamoji/video/AmvCache;

    monitor-enter v2

    const/4 v3, 0x0

    .line 386
    :try_start_10
    invoke-static {v0, v3}, Lcom/metamoji/video/AmvCache;->access$setMDownloading$p(Lcom/metamoji/video/AmvCache;Z)V

    .line 387
    invoke-static {v0, v5}, Lcom/metamoji/video/AmvCache;->access$setMFile$p(Lcom/metamoji/video/AmvCache;Ljava/io/File;)V

    const/4 v4, 0x0

    .line 388
    invoke-static {v0, v4}, Lcom/metamoji/video/AmvCache;->access$setMCall$p(Lcom/metamoji/video/AmvCache;Lokhttp3/Call;)V

    .line 389
    invoke-static {v0}, Lcom/metamoji/video/AmvCache;->access$getMDownloadedListener$p(Lcom/metamoji/video/AmvCache;)Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    invoke-static {v0}, Lcom/metamoji/video/AmvCache;->access$getMDownloadedListener$p(Lcom/metamoji/video/AmvCache;)Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies2;->clear()V

    .line 391
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 385
    monitor-exit v2

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 353
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
