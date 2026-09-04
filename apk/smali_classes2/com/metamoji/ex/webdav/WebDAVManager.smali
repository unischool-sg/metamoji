.class public final Lcom/metamoji/ex/webdav/WebDAVManager;
.super Ljava/lang/Object;
.source "WebDAVManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebDAVManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDAVManager.kt\ncom/metamoji/ex/webdav/WebDAVManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n1586#2:243\n1661#2,3:244\n*S KotlinDebug\n*F\n+ 1 WebDAVManager.kt\ncom/metamoji/ex/webdav/WebDAVManager\n*L\n135#1:243\n135#1:244,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\rH\u0007J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0005H\u0007J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\tH\u0007J\"\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0005H\u0002J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u0017\u001a\u00020\rH\u0007J\u001a\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u0005H\u0007J(\u0010$\u001a\u00020!2\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020#H\u0007J\u0018\u0010\'\u001a\u00020(2\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000e\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\r8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\u0003\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006*"
    }
    d2 = {
        "Lcom/metamoji/ex/webdav/WebDAVManager;",
        "",
        "<init>",
        "()V",
        "WEBDAVINFO_KEY_USERNAME",
        "",
        "WEBDAVINFO_KEY_PASSWORD",
        "WEBDAVINFO_KEY_DISPLAYNAME",
        "WEBDAV_TIMEOUT_INTERVAL",
        "",
        "WEBDAV_SHORT_TIMEOUT_INTERVAL",
        "webDAVInfos",
        "",
        "Lcom/metamoji/ex/webdav/WebDAVInfo;",
        "getWebDAVInfos$annotations",
        "getWebDAVInfos",
        "()Ljava/util/List;",
        "webDAVInfo",
        "getWebDAVInfo$annotations",
        "getWebDAVInfo",
        "()Lcom/metamoji/ex/webdav/WebDAVInfo;",
        "addWebDAVInfo",
        "",
        "info",
        "removeWebDAVInfo",
        "root",
        "createWebDAVRequestWithInfo",
        "Lcom/metamoji/network/NwWebDAVRequest;",
        "timeout",
        "getConflictResolvedURL",
        "path",
        "candidateFileName",
        "tryConnect",
        "",
        "download",
        "Ljava/io/File;",
        "upload",
        "fileName",
        "file",
        "CreateDirectory",
        "",
        "url",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/ex/webdav/WebDAVManager;

.field private static final WEBDAVINFO_KEY_DISPLAYNAME:Ljava/lang/String; = "displayName"

.field private static final WEBDAVINFO_KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final WEBDAVINFO_KEY_USERNAME:Ljava/lang/String; = "userName"

.field private static final WEBDAV_SHORT_TIMEOUT_INTERVAL:J = 0x5L

.field private static final WEBDAV_TIMEOUT_INTERVAL:J = 0x3cL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/ex/webdav/WebDAVManager;

    invoke-direct {v0}, Lcom/metamoji/ex/webdav/WebDAVManager;-><init>()V

    sput-object v0, Lcom/metamoji/ex/webdav/WebDAVManager;->INSTANCE:Lcom/metamoji/ex/webdav/WebDAVManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final CreateDirectory(Lcom/metamoji/ex/webdav/WebDAVInfo;Ljava/lang/String;)I
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 236
    invoke-static {p0, v2, v3, v0, v1}, Lcom/metamoji/ex/webdav/WebDAVManager;->createWebDAVRequestWithInfo$default(Lcom/metamoji/ex/webdav/WebDAVInfo;JILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object p0

    .line 237
    invoke-virtual {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest;->createDirectory(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVResult;

    move-result-object p0

    .line 238
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result p0

    return p0
.end method

.method public static final addWebDAVInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "userName"

    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "password"

    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    const-string v1, "displayName"

    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 70
    const-string v2, "MMJNtWebDAVSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getRoot()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final createWebDAVRequestWithInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;)Lcom/metamoji/network/NwWebDAVRequest;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/metamoji/ex/webdav/WebDAVManager;->createWebDAVRequestWithInfo$default(Lcom/metamoji/ex/webdav/WebDAVInfo;JILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final createWebDAVRequestWithInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;J)Lcom/metamoji/network/NwWebDAVRequest;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p1, "info"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance p1, Lcom/metamoji/network/NwWebDAVRequest;

    invoke-direct {p1}, Lcom/metamoji/network/NwWebDAVRequest;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/network/NwWebDAVRequest;->setUsername(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getPassword()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/network/NwWebDAVRequest;->setPassword(Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic createWebDAVRequestWithInfo$default(Lcom/metamoji/ex/webdav/WebDAVInfo;JILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVRequest;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x3c

    .line 92
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/ex/webdav/WebDAVManager;->createWebDAVRequestWithInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;J)Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final download(Lcom/metamoji/ex/webdav/WebDAVInfo;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 184
    invoke-static {p0, v0, v1, v2, v3}, Lcom/metamoji/ex/webdav/WebDAVManager;->createWebDAVRequestWithInfo$default(Lcom/metamoji/ex/webdav/WebDAVInfo;JILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object p0

    .line 185
    invoke-virtual {p0, p1}, Lcom/metamoji/network/NwWebDAVRequest;->get(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVFileResult;

    move-result-object p0

    .line 186
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVFileResult;->getResponseStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    return-object v3

    .line 190
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVFileResult;->getResponseFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v3

    .line 191
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webdav"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 197
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v3

    :cond_2
    return-object v1
.end method

.method private final getConflictResolvedURL(Lcom/metamoji/ex/webdav/WebDAVInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 111
    invoke-static {p1, v0, v1, v2, v3}, Lcom/metamoji/ex/webdav/WebDAVManager;->createWebDAVRequestWithInfo$default(Lcom/metamoji/ex/webdav/WebDAVInfo;JILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v4

    .line 112
    sget-object v6, Lcom/metamoji/network/NwWebDAVRequest$Depth;->Children:Lcom/metamoji/network/NwWebDAVRequest$Depth;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lcom/metamoji/network/NwWebDAVRequest;->propfind$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->getResponseStatusCode()I

    move-result p2

    const/16 v0, 0xcf

    if-ne p2, v0, :cond_2

    .line 114
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->getItemTree()Lcom/metamoji/network/NwWebDAVItem;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVItem;->getChildren()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 243
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 244
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 245
    check-cast v0, Lcom/metamoji/network/NwWebDAVItem;

    .line 135
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 136
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 138
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    :goto_1
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 149
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v3
.end method

.method public static final getWebDAVInfo()Lcom/metamoji/ex/webdav/WebDAVInfo;
    .locals 2

    .line 47
    invoke-static {}, Lcom/metamoji/ex/webdav/WebDAVManager;->getWebDAVInfos()Ljava/util/List;

    move-result-object v0

    .line 48
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ex/webdav/WebDAVInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic getWebDAVInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getWebDAVInfos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ex/webdav/WebDAVInfo;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 33
    const-string v2, "MMJNtWebDAVSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 35
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 36
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/util/Map;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    goto :goto_0

    .line 37
    :cond_3
    new-instance v5, Lcom/metamoji/ex/webdav/WebDAVInfo;

    check-cast v3, Ljava/lang/String;

    const-string v6, "userName"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "password"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "displayName"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v3, v6, v7, v4}, Lcom/metamoji/ex/webdav/WebDAVInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static synthetic getWebDAVInfos$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final removeWebDAVInfo(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "root"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 82
    const-string v1, "MMJNtWebDAVSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final tryConnect(Lcom/metamoji/ex/webdav/WebDAVInfo;)Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x5

    .line 165
    invoke-static {p0, v0, v1}, Lcom/metamoji/ex/webdav/WebDAVManager;->createWebDAVRequestWithInfo(Lcom/metamoji/ex/webdav/WebDAVInfo;J)Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v2

    .line 167
    invoke-virtual {p0}, Lcom/metamoji/ex/webdav/WebDAVInfo;->getRoot()Ljava/lang/String;

    move-result-object v3

    const-string p0, "getRoot(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/metamoji/network/NwWebDAVRequest$Depth;->Single:Lcom/metamoji/network/NwWebDAVRequest$Depth;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/metamoji/network/NwWebDAVRequest;->propfind$default(Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p0

    .line 168
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVPropResult;->getResponseStatusCode()I

    move-result p0

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final upload(Lcom/metamoji/ex/webdav/WebDAVInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/metamoji/ex/webdav/WebDAVManager;->INSTANCE:Lcom/metamoji/ex/webdav/WebDAVManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/ex/webdav/WebDAVManager;->getConflictResolvedURL(Lcom/metamoji/ex/webdav/WebDAVInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 217
    invoke-static {p0, v1, v2, p2, v0}, Lcom/metamoji/ex/webdav/WebDAVManager;->createWebDAVRequestWithInfo$default(Lcom/metamoji/ex/webdav/WebDAVInfo;JILjava/lang/Object;)Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object p0

    .line 218
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/network/NwWebDAVRequest;->put(Ljava/lang/String;Ljava/io/File;)Lcom/metamoji/network/NwWebDAVResult;

    move-result-object p0

    .line 219
    invoke-interface {p0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result p0

    const/16 p1, 0xc8

    if-eq p0, p1, :cond_0

    const/16 p1, 0xc9

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
