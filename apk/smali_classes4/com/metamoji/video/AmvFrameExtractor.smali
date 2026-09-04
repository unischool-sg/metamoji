.class public final Lcom/metamoji/video/AmvFrameExtractor;
.super Lcom/metamoji/lib/utils/UtAsyncTask;
.source "AmvFrameExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvFrameExtractor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 S2\u00020\u0001:\u0001SB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u001e\u0010:\u001a\u00020\u0014*\u00020;2\u0006\u0010<\u001a\u00020\u00112\u0008\u0008\u0002\u0010=\u001a\u00020\u0014H\u0002J\u0016\u0010>\u001a\u0004\u0018\u00010\u0016*\u00020;2\u0006\u0010<\u001a\u00020\u0011H\u0002J\u001e\u0010?\u001a\u0004\u0018\u000103*\u00020;2\u0006\u0010@\u001a\u00020\u00142\u0006\u0010A\u001a\u00020\u0011H\u0002J \u0010B\u001a\u0002032\u0006\u0010C\u001a\u0002032\u0006\u0010\u0008\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0011H\u0002J\u0014\u0010?\u001a\u000203*\u00020;2\u0006\u0010@\u001a\u00020\u0014H\u0002J\u0008\u0010D\u001a\u00020\u0005H\u0014J\u0008\u0010J\u001a\u00020\u0005H\u0016J\u0006\u0010K\u001a\u00020\u0005J\u0006\u0010L\u001a\u00020\u0005J\u0008\u0010M\u001a\u00020\u0005H\u0016J\u0012\u0010N\u001a\u0004\u0018\u00010;2\u0006\u0010O\u001a\u00020PH\u0002J\u001a\u0010Q\u001a\u0004\u0018\u0001032\u0006\u0010O\u001a\u00020P2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u001c\u0010Q\u001a\u0004\u0018\u0001032\u0006\u0010R\u001a\u00020;2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0002R\"\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u0003\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0011\u0010!\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020&8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u001eR\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00050.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R)\u00101\u001a\u001a\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u000502\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R#\u00106\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u000507\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R\u0010\u0010E\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFrameExtractor;",
        "Lcom/metamoji/lib/utils/UtAsyncTask;",
        "<init>",
        "()V",
        "setSizingHint",
        "",
        "mode",
        "Lcom/metamoji/video/FitMode;",
        "width",
        "",
        "height",
        "fitter",
        "Lcom/metamoji/video/AmvFitter;",
        "extract",
        "source",
        "Ljava/io/File;",
        "count",
        "",
        "getThumbnail",
        "position",
        "",
        "creationDate",
        "Ljava/util/Date;",
        "getCreationDate$annotations",
        "getCreationDate",
        "()Ljava/util/Date;",
        "setCreationDate",
        "(Ljava/util/Date;)V",
        "duration",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "videoSize",
        "Lcom/metamoji/video/MuSize;",
        "getVideoSize",
        "()Lcom/metamoji/video/MuSize;",
        "thumbnailSize",
        "Landroid/util/Size;",
        "getThumbnailSize",
        "()Landroid/util/Size;",
        "targetFramePosition",
        "getTargetFramePosition",
        "pausing",
        "Lcom/metamoji/lib/utils/UtResetableEvent;",
        "onVideoInfoRetrievedListener",
        "Lcom/metamoji/lib/utils/Funcies1;",
        "getOnVideoInfoRetrievedListener",
        "()Lcom/metamoji/lib/utils/Funcies1;",
        "onThumbnailRetrievedListener",
        "Lcom/metamoji/lib/utils/Funcies3;",
        "Landroid/graphics/Bitmap;",
        "getOnThumbnailRetrievedListener",
        "()Lcom/metamoji/lib/utils/Funcies3;",
        "chanceForSettingThumbnailSize",
        "Lcom/metamoji/lib/utils/Funcies2;",
        "getChanceForSettingThumbnailSize",
        "()Lcom/metamoji/lib/utils/Funcies2;",
        "getLong",
        "Landroid/media/MediaMetadataRetriever;",
        "key",
        "def",
        "getDate",
        "getBitmapAt",
        "tm",
        "option",
        "fitBitmapScale",
        "src",
        "task",
        "mFile",
        "mFitter",
        "mThumbnailCount",
        "mThumbnailSize",
        "mTargetFramePosition",
        "dispose",
        "pause",
        "resume",
        "cancel",
        "prepareAnalyzer",
        "path",
        "",
        "extractOne",
        "analyzer",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/video/AmvFrameExtractor$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final chanceForSettingThumbnailSize:Lcom/metamoji/lib/utils/Funcies2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/video/AmvFrameExtractor;",
            "Landroid/util/Size;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private creationDate:Ljava/util/Date;

.field private duration:J

.field private mFile:Ljava/io/File;

.field private mFitter:Lcom/metamoji/video/AmvFitter;

.field private mTargetFramePosition:J

.field private mThumbnailCount:I

.field private final mThumbnailSize:Lcom/metamoji/video/MuSize;

.field private final onThumbnailRetrievedListener:Lcom/metamoji/lib/utils/Funcies3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies3<",
            "Lcom/metamoji/video/AmvFrameExtractor;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onVideoInfoRetrievedListener:Lcom/metamoji/lib/utils/Funcies1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies1<",
            "Lcom/metamoji/video/AmvFrameExtractor;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pausing:Lcom/metamoji/lib/utils/UtResetableEvent;

.field private final videoSize:Lcom/metamoji/video/MuSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvFrameExtractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvFrameExtractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvFrameExtractor;->Companion:Lcom/metamoji/video/AmvFrameExtractor$Companion;

    .line 49
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, v1, v2, v0}, Lcom/metamoji/lib/utils/UtAsyncTask;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    new-instance v0, Lcom/metamoji/video/MuSize;

    invoke-direct {v0}, Lcom/metamoji/video/MuSize;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    .line 92
    new-instance v0, Lcom/metamoji/lib/utils/UtResetableEvent;

    invoke-direct {v0, v2, v1}, Lcom/metamoji/lib/utils/UtResetableEvent;-><init>(ZZ)V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->pausing:Lcom/metamoji/lib/utils/UtResetableEvent;

    .line 99
    new-instance v0, Lcom/metamoji/lib/utils/Funcies1;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Funcies1;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->onVideoInfoRetrievedListener:Lcom/metamoji/lib/utils/Funcies1;

    .line 101
    new-instance v0, Lcom/metamoji/lib/utils/Funcies3;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Funcies3;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->onThumbnailRetrievedListener:Lcom/metamoji/lib/utils/Funcies3;

    .line 104
    new-instance v0, Lcom/metamoji/lib/utils/Funcies2;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Funcies2;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->chanceForSettingThumbnailSize:Lcom/metamoji/lib/utils/Funcies2;

    .line 228
    new-instance v0, Lcom/metamoji/video/AmvFitter;

    sget-object v1, Lcom/metamoji/video/FitMode;->Height:Lcom/metamoji/video/FitMode;

    new-instance v2, Lcom/metamoji/video/MuSize;

    const/high16 v3, 0x43200000    # 160.0f

    invoke-direct {v2, v3}, Lcom/metamoji/video/MuSize;-><init>(F)V

    invoke-direct {v0, v1, v2}, Lcom/metamoji/video/AmvFitter;-><init>(Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->mFitter:Lcom/metamoji/video/AmvFitter;

    .line 230
    new-instance v0, Lcom/metamoji/video/MuSize;

    invoke-direct {v0}, Lcom/metamoji/video/MuSize;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    const-wide/16 v0, -0x1

    .line 231
    iput-wide v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->mTargetFramePosition:J

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 47
    sget-object v0, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method private final extractOne(Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    .line 312
    const-string v1, "analyzer releasing."

    if-gez v0, :cond_0

    :try_start_0
    iget-wide p2, p0, Lcom/metamoji/video/AmvFrameExtractor;->duration:J

    const/16 v0, 0x64

    int-to-long v2, v0

    div-long/2addr p2, v2

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvFrameExtractor;->getBitmapAt(Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    sget-object p3, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p3, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p2

    .line 314
    :goto_1
    :try_start_1
    sget-object p3, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v0, "getBitmapAt(): error."

    invoke-virtual {p3, p2, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    invoke-virtual {p3, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p2

    .line 317
    sget-object p3, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p3, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p2
.end method

.method static synthetic extractOne$default(Lcom/metamoji/video/AmvFrameExtractor;Landroid/media/MediaMetadataRetriever;JILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, -0x1

    .line 309
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvFrameExtractor;->extractOne(Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic extractOne$default(Lcom/metamoji/video/AmvFrameExtractor;Ljava/lang/String;JILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, -0x1

    .line 297
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/video/AmvFrameExtractor;->extractOne(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final fitBitmapScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method

.method private final getBitmapAt(Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;
    .locals 4

    .line 160
    iget v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailCount:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 161
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/video/AmvFrameExtractor;->getBitmapAt(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_1

    .line 165
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/metamoji/video/AmvFrameExtractor;->getBitmapAt(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p2}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, v1, p1, p2}, Lcom/metamoji/video/AmvFrameExtractor;->fitBitmapScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 169
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MediaMetadataRetriever:cannot extract frame."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getBitmapAt(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 8

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long v3, p2, v0

    .line 132
    iget-object p2, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p2}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p2

    float-to-int v6, p2

    iget-object p2, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p2}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result p2

    float-to-int v7, p2

    move-object v2, p1

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getCreationDate$annotations()V
    .locals 0

    return-void
.end method

.method private final getDate(Landroid/media/MediaMetadataRetriever;I)Ljava/util/Date;
    .locals 0

    .line 115
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-static {p1}, Lcom/metamoji/video/AmvUtilsKt;->parseIso8601DateString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getLong(Landroid/media/MediaMetadataRetriever;IJ)J
    .locals 0

    .line 107
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p3
.end method

.method static synthetic getLong$default(Lcom/metamoji/video/AmvFrameExtractor;Landroid/media/MediaMetadataRetriever;IJILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x0

    .line 106
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/video/AmvFrameExtractor;->getLong(Landroid/media/MediaMetadataRetriever;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final getTargetFramePosition()J
    .locals 4

    .line 91
    iget-wide v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->mTargetFramePosition:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->duration:J

    const/16 v2, 0x64

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static synthetic getThumbnail$default(Lcom/metamoji/video/AmvFrameExtractor;Ljava/io/File;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, -0x1

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/video/AmvFrameExtractor;->getThumbnail(Ljava/io/File;J)V

    return-void
.end method

.method private final prepareAnalyzer(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 8

    const-string v0, "duration="

    .line 265
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 268
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 271
    invoke-direct {p0, v2, p1}, Lcom/metamoji/video/AmvFrameExtractor;->getDate(Landroid/media/MediaMetadataRetriever;I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvFrameExtractor;->creationDate:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v3, 0x9

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 272
    :try_start_1
    invoke-static/range {v1 .. v7}, Lcom/metamoji/video/AmvFrameExtractor;->getLong$default(Lcom/metamoji/video/AmvFrameExtractor;Landroid/media/MediaMetadataRetriever;IJILjava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/metamoji/video/AmvFrameExtractor;->duration:J

    .line 273
    iget-object p1, v1, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/video/AmvFrameExtractor;->getLong$default(Lcom/metamoji/video/AmvFrameExtractor;Landroid/media/MediaMetadataRetriever;IJILjava/lang/Object;)J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {p1, v3}, Lcom/metamoji/video/MuSize;->setHeight(F)V

    .line 274
    iget-object p1, v1, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v3, 0x12

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/video/AmvFrameExtractor;->getLong$default(Lcom/metamoji/video/AmvFrameExtractor;Landroid/media/MediaMetadataRetriever;IJILjava/lang/Object;)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    long-to-float v1, v3

    :try_start_2
    invoke-virtual {p1, v1}, Lcom/metamoji/video/MuSize;->setWidth(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v3, 0x18

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 275
    :try_start_3
    invoke-static/range {v1 .. v7}, Lcom/metamoji/video/AmvFrameExtractor;->getLong$default(Lcom/metamoji/video/AmvFrameExtractor;Landroid/media/MediaMetadataRetriever;IJILjava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v5, 0x5a

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    const-wide/16 v5, 0x10e

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    .line 277
    :cond_0
    iget-object p1, v1, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->rotate()V

    .line 279
    :cond_1
    iget-object p1, v1, Lcom/metamoji/video/AmvFrameExtractor;->mFitter:Lcom/metamoji/video/AmvFitter;

    iget-object v3, v1, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    iget-object v4, v1, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/video/AmvFitter;->fit(Lcom/metamoji/video/MuSize;Lcom/metamoji/video/MuSize;)V

    .line 280
    sget-object p1, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-wide v3, v1, Lcom/metamoji/video/AmvFrameExtractor;->duration:J

    iget-object v5, v1, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    iget-object v6, v1, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", thumbnailSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v2

    :catchall_0
    move-object v1, p0

    .line 283
    :catchall_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFrameExtractor;->resume()V

    .line 254
    invoke-super {p0}, Lcom/metamoji/lib/utils/UtAsyncTask;->cancel()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFrameExtractor;->resume()V

    .line 238
    invoke-super {p0}, Lcom/metamoji/lib/utils/UtAsyncTask;->dispose()V

    .line 239
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->onVideoInfoRetrievedListener:Lcom/metamoji/lib/utils/Funcies1;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies1;->clear()V

    .line 240
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->onThumbnailRetrievedListener:Lcom/metamoji/lib/utils/Funcies3;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies3;->clear()V

    .line 241
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->chanceForSettingThumbnailSize:Lcom/metamoji/lib/utils/Funcies2;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies2;->clear()V

    return-void
.end method

.method public final extract(Ljava/io/File;I)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/metamoji/video/AmvFrameExtractor;->mFile:Ljava/io/File;

    .line 67
    iput p2, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailCount:I

    const/4 p1, 0x0

    .line 69
    new-array p1, p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvFrameExtractor;->execute([Ljava/lang/Object;)Lcom/metamoji/lib/utils/CRAsyncTask;

    return-void
.end method

.method public final extractOne(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvFrameExtractor;->prepareAnalyzer(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 299
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvFrameExtractor;->extractOne(Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final getChanceForSettingThumbnailSize()Lcom/metamoji/lib/utils/Funcies2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/video/AmvFrameExtractor;",
            "Landroid/util/Size;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->chanceForSettingThumbnailSize:Lcom/metamoji/lib/utils/Funcies2;

    return-object v0
.end method

.method public final getCreationDate()Ljava/util/Date;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->duration:J

    return-wide v0
.end method

.method public final getOnThumbnailRetrievedListener()Lcom/metamoji/lib/utils/Funcies3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies3<",
            "Lcom/metamoji/video/AmvFrameExtractor;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->onThumbnailRetrievedListener:Lcom/metamoji/lib/utils/Funcies3;

    return-object v0
.end method

.method public final getOnVideoInfoRetrievedListener()Lcom/metamoji/lib/utils/Funcies1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies1<",
            "Lcom/metamoji/video/AmvFrameExtractor;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->onVideoInfoRetrievedListener:Lcom/metamoji/lib/utils/Funcies1;

    return-object v0
.end method

.method public final getThumbnail(Ljava/io/File;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/metamoji/video/AmvFrameExtractor;->mFile:Ljava/io/File;

    const/4 p1, 0x1

    .line 74
    iput p1, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailCount:I

    .line 75
    iput-wide p2, p0, Lcom/metamoji/video/AmvFrameExtractor;->mTargetFramePosition:J

    const/4 p1, 0x0

    .line 77
    new-array p1, p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvFrameExtractor;->execute([Ljava/lang/Object;)Lcom/metamoji/lib/utils/CRAsyncTask;

    return-void
.end method

.method public final getThumbnailSize()Landroid/util/Size;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {v0}, Lcom/metamoji/video/MuSize;->getAsSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoSize()Lcom/metamoji/video/MuSize;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    return-object v0
.end method

.method public final pause()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->pausing:Lcom/metamoji/lib/utils/UtResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtResetableEvent;->reset()V

    return-void
.end method

.method public final resume()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->pausing:Lcom/metamoji/lib/utils/UtResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtResetableEvent;->set()V

    return-void
.end method

.method public final setCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/metamoji/video/AmvFrameExtractor;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/metamoji/video/AmvFrameExtractor;->duration:J

    return-void
.end method

.method public final setSizingHint(Lcom/metamoji/video/AmvFitter;)V
    .locals 3

    const-string v0, "fitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->mFitter:Lcom/metamoji/video/AmvFitter;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFitter;->getFitMode()Lcom/metamoji/video/FitMode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFitter;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFitter;->getLayoutHeight()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/metamoji/video/AmvFitter;->setHint(Lcom/metamoji/video/FitMode;FF)V

    return-void
.end method

.method public final setSizingHint(Lcom/metamoji/video/FitMode;FF)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameExtractor;->mFitter:Lcom/metamoji/video/AmvFitter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/video/AmvFitter;->setHint(Lcom/metamoji/video/FitMode;FF)V

    return-void
.end method

.method protected task()V
    .locals 15

    .line 181
    const-string v0, "analyzer releasing."

    iget-object v1, p0, Lcom/metamoji/video/AmvFrameExtractor;->mFile:Ljava/io/File;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 182
    :cond_0
    invoke-direct {p0, v1}, Lcom/metamoji/video/AmvFrameExtractor;->prepareAnalyzer(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 184
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/video/AmvFrameExtractor;->chanceForSettingThumbnailSize:Lcom/metamoji/lib/utils/Funcies2;

    iget-object v3, p0, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {v3}, Lcom/metamoji/video/MuSize;->getAsSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iget-object v2, p0, Lcom/metamoji/video/AmvFrameExtractor;->mFitter:Lcom/metamoji/video/AmvFitter;

    iget-object v3, p0, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    iget-object v4, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/video/AmvFitter;->fit(Lcom/metamoji/video/MuSize;Lcom/metamoji/video/MuSize;)V

    .line 188
    iget-object v2, p0, Lcom/metamoji/video/AmvFrameExtractor;->onVideoInfoRetrievedListener:Lcom/metamoji/lib/utils/Funcies1;

    check-cast v2, Lcom/metamoji/lib/utils/IFuncy1;

    invoke-virtual {p0, v2, p0}, Lcom/metamoji/video/AmvFrameExtractor;->runOnUiThread(Lcom/metamoji/lib/utils/IFuncy1;Ljava/lang/Object;)V

    .line 189
    iget-object v2, p0, Lcom/metamoji/video/AmvFrameExtractor;->mFitter:Lcom/metamoji/video/AmvFitter;

    iget-object v3, p0, Lcom/metamoji/video/AmvFrameExtractor;->videoSize:Lcom/metamoji/video/MuSize;

    iget-object v4, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailSize:Lcom/metamoji/video/MuSize;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/video/AmvFitter;->fit(Lcom/metamoji/video/MuSize;Lcom/metamoji/video/MuSize;)V

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFrameExtractor;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 221
    :cond_2
    :goto_0
    sget-object v2, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {v2, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 222
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    .line 196
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/metamoji/video/AmvFrameExtractor;->mThumbnailCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 198
    invoke-direct {p0}, Lcom/metamoji/video/AmvFrameExtractor;->getTargetFramePosition()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Lcom/metamoji/video/AmvFrameExtractor;->getBitmapAt(Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 199
    iget-object v4, p0, Lcom/metamoji/video/AmvFrameExtractor;->onThumbnailRetrievedListener:Lcom/metamoji/lib/utils/Funcies3;

    check-cast v4, Lcom/metamoji/lib/utils/IFuncy3;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, p0, v3, v2}, Lcom/metamoji/video/AmvFrameExtractor;->runOnUiThread(Lcom/metamoji/lib/utils/IFuncy3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-le v2, v4, :cond_2

    .line 202
    iget-wide v5, p0, Lcom/metamoji/video/AmvFrameExtractor;->duration:J

    int-to-long v7, v2

    div-long/2addr v5, v7

    const/4 v7, 0x2

    int-to-long v8, v7

    .line 203
    div-long v8, v5, v8

    move v10, v3

    :goto_2
    if-ge v10, v2, :cond_2

    .line 205
    sget-object v11, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    add-int/lit8 v12, v10, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - frame."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 206
    iget-wide v13, p0, Lcom/metamoji/video/AmvFrameExtractor;->duration:J

    cmp-long v13, v8, v13

    if-gez v13, :cond_5

    move v13, v4

    goto :goto_3

    :cond_5
    move v13, v3

    :goto_3
    const/4 v14, 0x0

    invoke-static {v13, v14, v7, v14}, Lcom/metamoji/lib/utils/UtLibKt;->utAssert$default(ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFrameExtractor;->isCancelled()Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_6

    .line 221
    invoke-virtual {v11, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_6
    :try_start_2
    invoke-direct {p0, v1, v8, v9}, Lcom/metamoji/video/AmvFrameExtractor;->getBitmapAt(Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 211
    iget-object v13, p0, Lcom/metamoji/video/AmvFrameExtractor;->onThumbnailRetrievedListener:Lcom/metamoji/lib/utils/Funcies3;

    check-cast v13, Lcom/metamoji/lib/utils/IFuncy3;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v13, p0, v10, v11}, Lcom/metamoji/video/AmvFrameExtractor;->runOnUiThread(Lcom/metamoji/lib/utils/IFuncy3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-long/2addr v8, v5

    .line 213
    iget-object v10, p0, Lcom/metamoji/video/AmvFrameExtractor;->pausing:Lcom/metamoji/lib/utils/UtResetableEvent;

    invoke-virtual {v10}, Lcom/metamoji/lib/utils/UtResetableEvent;->waitOne()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, v12

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 217
    :try_start_3
    sget-object v3, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v4, "thumbnail error."

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 219
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 221
    sget-object v3, Lcom/metamoji/video/AmvFrameExtractor;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {v3, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2

    :cond_7
    :goto_4
    return-void
.end method
