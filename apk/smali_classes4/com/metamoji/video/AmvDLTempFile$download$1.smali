.class public final Lcom/metamoji/video/AmvDLTempFile$download$1;
.super Ljava/lang/Object;
.source "AmvDLTempFile.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvDLTempFile;->download()V
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
        "com/metamoji/video/AmvDLTempFile$download$1",
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
.field final synthetic this$0:Lcom/metamoji/video/AmvDLTempFile;


# direct methods
.method constructor <init>(Lcom/metamoji/video/AmvDLTempFile;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, p2}, Lcom/metamoji/video/AmvDLTempFile;->access$onFailure(Lcom/metamoji/video/AmvDLTempFile;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvDLTempFile;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvError;->reset()V

    .line 73
    check-cast p2, Ljava/io/Closeable;

    iget-object v0, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    :try_start_1
    move-object v1, p2

    check-cast v1, Lokhttp3/Response;

    .line 74
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    move-object v3, v1

    check-cast v3, Lokhttp3/ResponseBody;

    .line 75
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    move-object v4, v3

    check-cast v4, Ljava/io/InputStream;

    .line 76
    invoke-static {v0}, Lcom/metamoji/video/AmvDLTempFile;->access$getMDisposed$p(Lcom/metamoji/video/AmvDLTempFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 79
    :cond_0
    const-string v0, "a_dl_"

    const-string v5, ".tmp"

    sget-object v6, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v6}, Lcom/metamoji/video/AmvSettings;->getWorkDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {v0, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 80
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    .line 81
    check-cast v6, Ljava/io/OutputStream;

    const/high16 v7, 0x20000

    invoke-static {v4, v6, v7}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    :try_start_5
    invoke-static {v5, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    invoke-static {}, Lcom/metamoji/video/AmvDLTempFile;->access$getCompanion$p()Lcom/metamoji/video/AmvDLTempFile$Companion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/video/AmvDLTempFile$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": file created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    :goto_0
    :try_start_6
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 74
    :try_start_7
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 80
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_9
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    .line 75
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_b
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    .line 74
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v2

    :try_start_d
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :cond_1
    move-object v0, p1

    .line 73
    :goto_1
    :try_start_e
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 101
    iget-object p2, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;

    if-nez v0, :cond_2

    .line 90
    :try_start_f
    invoke-static {p2, p1}, Lcom/metamoji/video/AmvDLTempFile;->access$onFailure(Lcom/metamoji/video/AmvDLTempFile;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    goto :goto_2

    .line 101
    :cond_2
    invoke-static {p2, v2}, Lcom/metamoji/video/AmvDLTempFile;->access$setMDownloading$p(Lcom/metamoji/video/AmvDLTempFile;Z)V

    .line 102
    iget-object p1, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;

    monitor-enter p1

    .line 103
    :try_start_10
    invoke-static {p1, v0}, Lcom/metamoji/video/AmvDLTempFile;->access$setMFile$p(Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V

    .line 104
    invoke-static {p1}, Lcom/metamoji/video/AmvDLTempFile;->access$getMDisposed$p(Lcom/metamoji/video/AmvDLTempFile;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 105
    invoke-virtual {p1}, Lcom/metamoji/video/AmvDLTempFile;->dispose()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 106
    monitor-exit p1

    return-void

    .line 108
    :cond_3
    :try_start_11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 102
    monitor-exit p1

    .line 109
    iget-object p1, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvDLTempFile;->getOnPrepared()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_7
    move-exception p2

    .line 102
    monitor-exit p1

    throw p2

    :catchall_8
    move-exception v0

    .line 73
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :catchall_9
    move-exception v1

    :try_start_13
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_a
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    .line 94
    :goto_2
    iget-object p2, p0, Lcom/metamoji/video/AmvDLTempFile$download$1;->this$0:Lcom/metamoji/video/AmvDLTempFile;

    invoke-static {p2, p1}, Lcom/metamoji/video/AmvDLTempFile;->access$onFailure(Lcom/metamoji/video/AmvDLTempFile;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_4

    .line 95
    move-object p1, v0

    check-cast p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method
