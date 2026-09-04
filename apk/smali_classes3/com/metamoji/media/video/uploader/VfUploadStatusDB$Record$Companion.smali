.class public final Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;
.super Ljava/lang/Object;
.source "VfUploadStatusDB.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JB\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;",
        "",
        "<init>",
        "()V",
        "createByFile",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
        "ticket",
        "",
        "target",
        "Ljava/io/File;",
        "ownerAccount",
        "serverId",
        "autoDel",
        "",
        "status",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "date",
        "Ljava/util/Date;",
        "fromDbResult",
        "result",
        "Lcom/metamoji/sqldb/SqlResultSet;",
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createByFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 9

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerAccount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    move-object v8, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getAlbumStorageFolder()Ljava/io/File;

    move-result-object v0

    .line 70
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz p5, :cond_2

    .line 72
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    .line 75
    invoke-static/range {v2 .. v7}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 77
    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v0, v3, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->copyFileTimeStamp(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 81
    invoke-virtual {p2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 86
    :goto_0
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    if-nez p7, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p7

    :goto_1
    move-object v2, p1

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)V

    return-object v0

    .line 84
    :cond_2
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "invalid video source state"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fromDbResult(Lcom/metamoji/sqldb/SqlResultSet;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 9

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getBoolean(I)Z

    move-result v6

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;

    const/4 v7, 0x6

    invoke-interface {p1, v7}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;->fromInt(I)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v7

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getDate(I)Ljava/util/Date;

    move-result-object v8

    const-string p1, "getDate(...)"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)V

    return-object v1
.end method
