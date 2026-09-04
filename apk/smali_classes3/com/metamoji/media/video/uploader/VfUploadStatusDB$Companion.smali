.class public final Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;
.super Ljava/lang/Object;
.source "VfUploadStatusDB.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/uploader/VfUploadStatusDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000f\u0010\u000cR\u0019\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u0011\u0010\u000cR\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;",
        "",
        "<init>",
        "()V",
        "DB_FILENAME",
        "",
        "FIELDS",
        "SQL_INSERT",
        "SS_NOT_DONE",
        "",
        "",
        "getSS_NOT_DONE",
        "()[Ljava/lang/Integer;",
        "[Ljava/lang/Integer;",
        "SS_ABORTED",
        "getSS_ABORTED",
        "SS_LOCAL",
        "getSS_LOCAL",
        "databaseFile",
        "Ljava/io/File;",
        "getDatabaseFile",
        "()Ljava/io/File;",
        "databasePath",
        "getDatabasePath",
        "()Ljava/lang/String;",
        "deleteDbFile",
        "",
        "isUplodableStatus",
        "",
        "status",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "isWaitingStatus",
        "needsToUploadStatus",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;-><init>()V

    return-void
.end method

.method private final getDatabaseFile()Ljava/io/File;
    .locals 3

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vfmdb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final deleteDbFile()V
    .locals 1

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 120
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getDatabasePath()Ljava/lang/String;
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSS_ABORTED()[Ljava/lang/Integer;
    .locals 1

    .line 106
    invoke-static {}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->access$getSS_ABORTED$cp()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getSS_LOCAL()[Ljava/lang/Integer;
    .locals 1

    .line 109
    invoke-static {}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->access$getSS_LOCAL$cp()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getSS_NOT_DONE()[Ljava/lang/Integer;
    .locals 1

    .line 105
    invoke-static {}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->access$getSS_NOT_DONE$cp()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final isUplodableStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z
    .locals 1

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isWaitingStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z
    .locals 1

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final needsToUploadStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z
    .locals 1

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->isUplodableStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->isWaitingStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
