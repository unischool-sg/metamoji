.class public final Lcom/metamoji/video/AmvCacheManager;
.super Ljava/lang/Object;
.source "AmvCacheManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvCacheManager$DiskCapacity;,
        Lcom/metamoji/video/AmvCacheManager$Statistics;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmvCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmvCacheManager.kt\ncom/metamoji/video/AmvCacheManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n11705#2:506\n12052#2,3:507\n11705#2:517\n12052#2,3:518\n2829#3,7:510\n2829#3,7:521\n*S KotlinDebug\n*F\n+ 1 AmvCacheManager.kt\ncom/metamoji/video/AmvCacheManager\n*L\n188#1:506\n188#1:507,3\n209#1:517\n209#1:518,3\n188#1:510,7\n209#1:521,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002>?B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0010H\u0007J\u000e\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0013J\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u0013H\u0002J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0010H\u0002J\u0018\u0010 \u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u001a\u0010\"\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0013H\u0002J\u0018\u0010$\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0013J\u0010\u0010%\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001b\u001a\u00020\u0013J\u001e\u0010&\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0016J\u0010\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\tH\u0002J\u0010\u00103\u001a\u00020\u00182\u0008\u0008\u0002\u00104\u001a\u00020\u000bJ\u0018\u00105\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020!2\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u0006\u0010:\u001a\u00020\u0018J\u0015\u0010;\u001a\u00020\u00182\u0006\u0010<\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008=R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010)\u001a\u00020*8CX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0011\u0010/\u001a\u0002008F\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0011\u00107\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u00088\u00109\u00a8\u0006@"
    }
    d2 = {
        "Lcom/metamoji/video/AmvCacheManager;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "MAX_CACHE_SIZE",
        "",
        "MAX_CACHE_COUNT",
        "",
        "DEFAULT_MAX_CACHE_COUNT",
        "mLock",
        "Ljava/lang/Object;",
        "mCacheFolder",
        "Ljava/io/File;",
        "mCacheList",
        "Ljava/util/HashMap;",
        "",
        "Lcom/metamoji/video/IAmvCache;",
        "mSweeping",
        "",
        "initialize",
        "",
        "folder",
        "getFileForKey",
        "key",
        "keyFromUri",
        "uri",
        "touch",
        "file",
        "newCache",
        "Landroid/net/Uri;",
        "getOrCreateCache",
        "optionalKey",
        "getCache",
        "peekCache",
        "putCache",
        "existingFile",
        "preferToMove",
        "diskCapacity",
        "Lcom/metamoji/video/AmvCacheManager$DiskCapacity;",
        "getDiskCapacity",
        "()Lcom/metamoji/video/AmvCacheManager$DiskCapacity;",
        "maxCacheSize",
        "currentTotal",
        "cacheStatistics",
        "Lcom/metamoji/video/AmvCacheManager$Statistics;",
        "getCacheStatistics",
        "()Lcom/metamoji/video/AmvCacheManager$Statistics;",
        "sweep",
        "maxCount",
        "hasCache",
        "optionKey",
        "cacheCount",
        "getCacheCount",
        "()I",
        "clearAllCache",
        "removeCache",
        "cache",
        "removeCache$video",
        "DiskCapacity",
        "Statistics",
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


# static fields
.field private static final DEFAULT_MAX_CACHE_COUNT:I = 0xa

.field public static final INSTANCE:Lcom/metamoji/video/AmvCacheManager;

.field private static final MAX_CACHE_COUNT:I = 0xc8

.field private static final MAX_CACHE_SIZE:J

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;

.field private static mCacheFolder:Ljava/io/File;

.field private static final mCacheList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/video/IAmvCache;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static mSweeping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/metamoji/video/AmvCacheManager;

    invoke-direct {v0}, Lcom/metamoji/video/AmvCacheManager;-><init>()V

    sput-object v0, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    .line 27
    new-instance v1, Lcom/metamoji/lib/utils/UtLog;

    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v3

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const-string v2, "Cache"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-wide/32 v0, 0x3b9aca00

    .line 28
    sput-wide v0, Lcom/metamoji/video/AmvCacheManager;->MAX_CACHE_SIZE:J

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/video/AmvCacheManager;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDiskCapacity()Lcom/metamoji/video/AmvCacheManager$DiskCapacity;
    .locals 8

    .line 174
    new-instance v0, Lcom/metamoji/video/AmvCacheManager$DiskCapacity;

    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    const/4 v2, 0x0

    const-string v3, "mCacheFolder"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/metamoji/video/AmvCacheManager$DiskCapacity;-><init>(JJ)V

    return-object v0
.end method

.method private final getOrCreateCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;
    .locals 3

    .line 114
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 115
    :try_start_0
    sget-object p2, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lcom/metamoji/video/AmvCacheManager;->keyFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 116
    :cond_0
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/video/IAmvCache;

    if-eqz v1, :cond_1

    .line 118
    sget-object p1, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ": from cache list"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/video/AmvCacheManager;->newCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static final initialize(Ljava/io/File;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sput-object p0, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private final keyFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 68
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 71
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 73
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    new-instance v1, Ljava/util/Formatter;

    move-object v2, v0

    check-cast v2, Ljava/lang/Appendable;

    invoke-direct {v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 78
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p1, v3

    .line 79
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-virtual {v1, v5, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final maxCacheSize(J)J
    .locals 7

    .line 177
    invoke-direct {p0}, Lcom/metamoji/video/AmvCacheManager;->getDiskCapacity()Lcom/metamoji/video/AmvCacheManager$DiskCapacity;

    move-result-object v0

    .line 178
    sget-wide v1, Lcom/metamoji/video/AmvCacheManager;->MAX_CACHE_SIZE:J

    .line 179
    invoke-virtual {v0}, Lcom/metamoji/video/AmvCacheManager$DiskCapacity;->getCapacity()J

    move-result-wide v3

    const/4 v5, 0x5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    const/16 v5, 0x64

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 180
    invoke-virtual {v0}, Lcom/metamoji/video/AmvCacheManager$DiskCapacity;->getFreeSpace()J

    move-result-wide v3

    add-long/2addr v3, p1

    const/16 p1, 0xa

    int-to-long p1, p1

    div-long/2addr v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final newCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;
    .locals 4

    .line 96
    invoke-virtual {p0, p2}, Lcom/metamoji/video/AmvCacheManager;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": reuse existing file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/metamoji/video/AmvCacheManager;->touch(Ljava/io/File;)V

    .line 101
    new-instance v1, Lcom/metamoji/video/AmvCache;

    invoke-direct {v1, p2, p1, v0}, Lcom/metamoji/video/AmvCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": new"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/metamoji/video/AmvCache;

    const/4 v0, 0x0

    invoke-direct {v1, p2, p1, v0}, Lcom/metamoji/video/AmvCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V

    .line 106
    :goto_0
    sget-object p1, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    check-cast v1, Lcom/metamoji/video/IAmvCache;

    return-object v1
.end method

.method public static synthetic sweep$default(Lcom/metamoji/video/AmvCacheManager;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xc8

    .line 196
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvCacheManager;->sweep(I)V

    return-void
.end method

.method static final sweep$lambda$8(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static final sweep$lambda$9(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 216
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final touch(Ljava/io/File;)V
    .locals 2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method


# virtual methods
.method public final clearAllCache()V
    .locals 3

    .line 285
    :try_start_0
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    :try_start_1
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 287
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "mCacheFolder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 289
    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 293
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 295
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v2, "clear cache error."

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final getCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvCacheManager;->getOrCreateCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Lcom/metamoji/video/IAmvCache;->addRef()V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-static {p0, v1, p2, v0}, Lcom/metamoji/video/AmvCacheManager;->sweep$default(Lcom/metamoji/video/AmvCacheManager;IILjava/lang/Object;)V

    return-object p1
.end method

.method public final getCacheCount()I
    .locals 1

    .line 275
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "mCacheFolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getCacheStatistics()Lcom/metamoji/video/AmvCacheManager$Statistics;
    .locals 7

    .line 187
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "mCacheFolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/io/File;

    .line 188
    :cond_1
    array-length v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_6

    .line 506
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 507
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 188
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 508
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 506
    check-cast v2, Ljava/lang/Iterable;

    .line 510
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 512
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 513
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 514
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_2

    .line 516
    :cond_4
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_3

    .line 511
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-wide/16 v1, 0x0

    .line 189
    :goto_3
    new-instance v3, Lcom/metamoji/video/AmvCacheManager$Statistics;

    array-length v0, v0

    invoke-direct {v3, v0, v1, v2}, Lcom/metamoji/video/AmvCacheManager$Statistics;-><init>(IJ)V

    return-object v3
.end method

.method public final getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "mCacheFolder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public final hasCache(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 259
    :try_start_0
    sget-object p2, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/metamoji/video/AmvCacheManager;->keyFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 260
    :cond_0
    sget-object p1, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    if-nez v1, :cond_2

    const-string v1, "mCacheFolder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final peekCache(Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;
    .locals 2

    .line 137
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/video/IAmvCache;

    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1}, Lcom/metamoji/video/IAmvCache;->addRef()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final putCache(Ljava/lang/String;Ljava/io/File;Z)Z
    .locals 11

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "existingFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/video/IAmvCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 148
    monitor-exit v1

    return v3

    .line 150
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/File;

    sget-object v2, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    const/4 v10, 0x0

    if-nez v2, :cond_1

    const-string v2, "mCacheFolder"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v10

    :cond_1
    invoke-direct {v5, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    .line 152
    monitor-exit v1

    return v3

    :cond_2
    if-eqz p3, :cond_3

    .line 156
    :try_start_2
    invoke-virtual {p2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    .line 158
    invoke-static/range {v4 .. v9}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_0
    monitor-exit v1

    .line 165
    new-instance p2, Lcom/metamoji/video/AmvCache;

    invoke-direct {p2, p1, v10, v5}, Lcom/metamoji/video/AmvCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V

    .line 166
    invoke-direct {p0, v5}, Lcom/metamoji/video/AmvCacheManager;->touch(Ljava/io/File;)V

    .line 167
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 161
    :catchall_0
    monitor-exit v1

    return v3

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 145
    monitor-exit v1

    throw p1
.end method

.method public final removeCache$video(Lcom/metamoji/video/IAmvCache;)V
    .locals 3

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    :try_start_0
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 302
    :try_start_1
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/metamoji/video/IAmvCache;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-interface {p1}, Lcom/metamoji/video/IAmvCache;->getCacheFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 306
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v1, "remove cache error."

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final sweep(I)V
    .locals 20

    move/from16 v0, p1

    .line 198
    sget-boolean v1, Lcom/metamoji/video/AmvCacheManager;->mSweeping:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 201
    sput-boolean v1, Lcom/metamoji/video/AmvCacheManager;->mSweeping:Z

    const/4 v2, 0x0

    .line 205
    :try_start_0
    sget-object v3, Lcom/metamoji/video/AmvCacheManager;->mCacheFolder:Ljava/io/File;

    if-nez v3, :cond_1

    const-string v3, "mCacheFolder"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    new-array v3, v2, [Ljava/io/File;

    .line 208
    :cond_2
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    array-length v5, v3

    iput v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 209
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 517
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 518
    array-length v7, v3

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v3, v8

    .line 209
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 519
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 520
    :cond_3
    check-cast v6, Ljava/util/List;

    .line 517
    check-cast v6, Ljava/lang/Iterable;

    .line 521
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 522
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 523
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 524
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 525
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v8

    .line 209
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1

    .line 527
    :cond_4
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 209
    iput-wide v6, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 210
    iget-wide v6, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v8, p0

    :try_start_1
    invoke-direct {v8, v6, v7}, Lcom/metamoji/video/AmvCacheManager;->maxCacheSize(J)J

    move-result-wide v6

    .line 211
    iget v9, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ge v9, v0, :cond_5

    iget-wide v9, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    cmp-long v9, v9, v6

    if-gez v9, :cond_5

    .line 249
    sput-boolean v2, Lcom/metamoji/video/AmvCacheManager;->mSweeping:Z

    return-void

    .line 216
    :cond_5
    :try_start_2
    new-instance v9, Lcom/metamoji/video/AmvCacheManager$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/metamoji/video/AmvCacheManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v10, Lcom/metamoji/video/AmvCacheManager$$ExternalSyntheticLambda1;

    invoke-direct {v10, v9}, Lcom/metamoji/video/AmvCacheManager$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v10}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 226
    sget-object v9, Lcom/metamoji/video/AmvCacheManager;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 227
    :try_start_3
    array-length v10, v3

    sub-int/2addr v10, v1

    :goto_2
    const/4 v1, -0x1

    if-ge v1, v10, :cond_c

    .line 228
    aget-object v11, v3, v10

    if-nez v11, :cond_7

    :cond_6
    :goto_3
    move/from16 v17, v2

    goto :goto_4

    .line 229
    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    goto :goto_3

    .line 230
    :cond_8
    sget-object v13, Lcom/metamoji/video/AmvCacheManager;->mCacheList:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/video/IAmvCache;

    if-eqz v14, :cond_9

    .line 231
    invoke-interface {v14}, Lcom/metamoji/video/IAmvCache;->getRefCount()I

    move-result v15

    if-gtz v15, :cond_6

    .line 232
    :cond_9
    sget-object v15, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    move/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v17, v2

    :try_start_4
    const-string v2, ": remove cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 233
    iget-wide v1, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    sub-long v1, v1, v18

    iput-wide v1, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 234
    iget v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v14, :cond_a

    .line 236
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_a
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 239
    iget v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ge v1, v0, :cond_b

    iget-wide v1, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v1, v1, v6

    if-gez v1, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v17

    goto :goto_2

    :cond_c
    move/from16 v17, v2

    .line 244
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 249
    sput-boolean v17, Lcom/metamoji/video/AmvCacheManager;->mSweeping:Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v17, v2

    .line 226
    :goto_6
    :try_start_6
    monitor-exit v9

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_d
    move-object/from16 v8, p0

    move/from16 v17, v2

    .line 522
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v8, p0

    :goto_7
    move/from16 v17, v2

    .line 246
    :goto_8
    :try_start_7
    sget-object v1, Lcom/metamoji/video/AmvCacheManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v2, "sweep error."

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 249
    sput-boolean v17, Lcom/metamoji/video/AmvCacheManager;->mSweeping:Z

    return-void

    :catchall_5
    move-exception v0

    sput-boolean v17, Lcom/metamoji/video/AmvCacheManager;->mSweeping:Z

    throw v0
.end method
