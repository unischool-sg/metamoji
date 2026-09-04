.class Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;
.super Landroid/os/AsyncTask;
.source "LibraryURLConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
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
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 132
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/Map;
    .locals 7
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

    .line 158
    const-string v0, "[URLConnectionBase] DownloadTask"

    const/4 v1, 0x0

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    .line 165
    :try_start_0
    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    aget-object p1, p1, v1

    invoke-virtual {v4, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->createCall(Ljava/lang/String;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, v4, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->m_httpCall:Lokhttp3/Call;

    .line 166
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->m_httpCall:Lokhttp3/Call;

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :goto_0
    move-object v0, p1

    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_2

    .line 178
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v1, :cond_2

    .line 179
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 180
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 181
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 186
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 187
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 179
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_9
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    .line 188
    :try_start_c
    const-string v1, "[URLConnectionBase] Request FAILED!!"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_2
    const/4 v1, 0x1

    .line 193
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 194
    const-string v1, "[URLConnectionBase] Not SuccessStatusCode..."

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_3
    :goto_5
    if-eqz p1, :cond_4

    .line 200
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 202
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->connectionAbort()V

    .line 205
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 206
    const-string v1, "contents"

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "error"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "errorMessage"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_6
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_6

    :catchall_7
    move-exception p1

    :goto_6
    if-eqz v3, :cond_5

    .line 200
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->connectionAbort()V

    .line 203
    throw p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 238
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

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

    .line 132
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->onPostExecute(Ljava/util/Map;)V

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

    .line 222
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->connectionDidFinishLoading(Ljava/util/Map;)V

    .line 225
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 146
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void
.end method
