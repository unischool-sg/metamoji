.class public final Lcom/metamoji/video/AmvSettings;
.super Ljava/lang/Object;
.source "AmvSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\"8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/metamoji/video/AmvSettings;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "initialized",
        "",
        "workDirectory",
        "Ljava/io/File;",
        "getWorkDirectory",
        "()Ljava/io/File;",
        "setWorkDirectory",
        "(Ljava/io/File;)V",
        "value",
        "",
        "maxBitRate",
        "getMaxBitRate",
        "()I",
        "allowPictureInPicture",
        "getAllowPictureInPicture",
        "()Z",
        "httpClientSource",
        "Lcom/metamoji/video/IAmvHttpClientSource;",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "cacheRootPath",
        "bitrate",
        "allowPinP",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "getHttpClient",
        "()Lokhttp3/OkHttpClient;",
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
.field public static final INSTANCE:Lcom/metamoji/video/AmvSettings;

.field private static allowPictureInPicture:Z

.field private static httpClientSource:Lcom/metamoji/video/IAmvHttpClientSource;

.field private static initialized:Z

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;

.field private static maxBitRate:I

.field public static workDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/metamoji/video/AmvSettings;

    invoke-direct {v0}, Lcom/metamoji/video/AmvSettings;-><init>()V

    sput-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    .line 15
    new-instance v1, Lcom/metamoji/lib/utils/UtLog;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v2, "AMV"

    const/4 v3, 0x0

    const-string v4, "com.metamoji.video."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/metamoji/video/AmvSettings;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/16 v0, 0x2c1

    .line 20
    sput v0, Lcom/metamoji/video/AmvSettings;->maxBitRate:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/io/File;IZLcom/metamoji/video/IAmvHttpClientSource;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheRootPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-boolean v0, Lcom/metamoji/video/AmvSettings;->initialized:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 40
    :cond_0
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/metamoji/video/AmvSettings;->initialized:Z

    .line 41
    sput p2, Lcom/metamoji/video/AmvSettings;->maxBitRate:I

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p3, "android.software.picture_in_picture"

    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    sput-boolean v1, Lcom/metamoji/video/AmvSettings;->allowPictureInPicture:Z

    .line 43
    sput-object p4, Lcom/metamoji/video/AmvSettings;->httpClientSource:Lcom/metamoji/video/IAmvHttpClientSource;

    .line 44
    new-instance p0, Ljava/io/File;

    const-string p3, ".video-cache"

    invoke-direct {p0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/metamoji/video/AmvCacheManager;->initialize(Ljava/io/File;)V

    .line 47
    new-instance p0, Ljava/io/File;

    const-string p3, ".video-tmp"

    invoke-direct {p0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/video/AmvSettings;->setWorkDirectory(Ljava/io/File;)V

    .line 48
    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getWorkDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getWorkDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    return-void

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getWorkDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_3

    new-array p0, p2, [Ljava/io/File;

    .line 52
    :cond_3
    array-length p1, p0

    :goto_1
    if-ge p2, p1, :cond_5

    aget-object p3, p0, p2

    if-eqz p3, :cond_4

    .line 53
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_4

    .line 54
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final getAllowPictureInPicture()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/metamoji/video/AmvSettings;->allowPictureInPicture:Z

    return v0
.end method

.method public final getHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 84
    sget-object v0, Lcom/metamoji/video/AmvSettings;->httpClientSource:Lcom/metamoji/video/IAmvHttpClientSource;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/metamoji/video/IAmvHttpClientSource;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/video/AmvSettings;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public final getMaxBitRate()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/video/AmvSettings;->maxBitRate:I

    return v0
.end method

.method public final getWorkDirectory()Ljava/io/File;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/video/AmvSettings;->workDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "workDirectory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setWorkDirectory(Ljava/io/File;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sput-object p1, Lcom/metamoji/video/AmvSettings;->workDirectory:Ljava/io/File;

    return-void
.end method
