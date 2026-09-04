.class public final Lcom/metamoji/cm/DebugControl;
.super Ljava/lang/Object;
.source "DebugControl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J!\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\nH\u0086\u0002J)\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\tH\u0086\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u0007H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/cm/DebugControl;",
        "",
        "<init>",
        "()V",
        "_json",
        "Lorg/json/JSONObject;",
        "refresh",
        "",
        "get",
        "",
        "",
        "name",
        "set",
        "data",
        "getCtrlFile",
        "Ljava/io/File;",
        "load",
        "save",
        "cm"
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
.field private _json:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/metamoji/cm/DebugControl;->load()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/DebugControl;->_json:Lorg/json/JSONObject;

    return-void
.end method

.method private final getCtrlFile()Ljava/io/File;
    .locals 3

    .line 60
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Ljava/io/File;

    const-string v2, "debug.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DebugControl is not available."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too early to load DebugControl."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final load()Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/cm/DebugControl;->getCtrlFile()Ljava/io/File;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 71
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    .line 73
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final save()V
    .locals 4

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/cm/DebugControl;->getCtrlFile()Ljava/io/File;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/metamoji/cm/DebugControl;->_json:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/DebugControl;->_json:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final refresh()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/metamoji/cm/DebugControl;->load()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/DebugControl;->_json:Lorg/json/JSONObject;

    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/DebugControl;->_json:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cm/DebugControl;->_json:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 48
    iput-object v0, p0, Lcom/metamoji/cm/DebugControl;->_json:Lorg/json/JSONObject;

    :cond_1
    if-eqz p2, :cond_2

    .line 50
    invoke-static {p2}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 51
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-direct {p0}, Lcom/metamoji/cm/DebugControl;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 54
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method
