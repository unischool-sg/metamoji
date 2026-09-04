.class public final Lcom/metamoji/media/video/VfVideoFileManager;
.super Ljava/lang/Object;
.source "VfVideoFileManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfVideoFileManager$Companion;,
        Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;,
        Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;,
        Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;,
        Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;,
        Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;,
        Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVfVideoFileManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VfVideoFileManager.kt\ncom/metamoji/media/video/VfVideoFileManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,583:1\n37#2,2:584\n*S KotlinDebug\n*F\n+ 1 VfVideoFileManager.kt\ncom/metamoji/media/video/VfVideoFileManager\n*L\n542#1:584,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u0000 u2\u00020\u0001:\u0007opqrstuB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0013J\u000e\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(H\u0002J\u0018\u0010*\u001a\u0008\u0012\u0004\u0012\u00020)0(2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u0008\u0010+\u001a\u00020\u000eH\u0002J\u0010\u0010,\u001a\u0004\u0018\u00010)*\u0004\u0018\u00010)H\u0002J*\u0010-\u001a\u0004\u0018\u00010\u00012\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u00010#H\u0086@\u00a2\u0006\u0002\u00102J\"\u00103\u001a\u0004\u0018\u00010)2\u0006\u0010.\u001a\u00020)2\u0008\u00101\u001a\u0004\u0018\u00010#H\u0082@\u00a2\u0006\u0002\u00104J\u000e\u00105\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020)J\u0006\u00106\u001a\u00020\u000eJ\u0006\u00107\u001a\u000208J\u000e\u00109\u001a\u0002002\u0006\u0010.\u001a\u00020)J\u0008\u0010:\u001a\u00020)H\u0002J\u0016\u0010;\u001a\u00020)2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u000200J\u0018\u0010?\u001a\u0004\u0018\u00010)2\u0006\u0010@\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010AJ\u0006\u0010E\u001a\u00020=J\u0008\u0010F\u001a\u00020\u000eH\u0002J\u000e\u0010Q\u001a\u00020RH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0018\u0010S\u001a\u0004\u0018\u00010T2\u0006\u0010@\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010AJ\u0018\u0010U\u001a\u00020V2\u0008\u0010W\u001a\u0004\u0018\u00010)H\u0086@\u00a2\u0006\u0002\u0010AJF\u0010X\u001a\u0008\u0012\u0004\u0012\u00020Z0Y2\u0006\u0010W\u001a\u00020)2\u0006\u0010[\u001a\u00020V2\u0006\u0010\\\u001a\u00020]2\u0008\u0010^\u001a\u0004\u0018\u00010)2\u0006\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020bH\u0086@\u00a2\u0006\u0002\u0010cJ\u0016\u0010d\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010AJ\u0006\u0010e\u001a\u00020\u000eJ&\u0010f\u001a\u00020\u000e2\u0006\u0010g\u001a\u00020)2\u0006\u0010h\u001a\u00020)2\u0006\u0010\"\u001a\u00020#H\u0086@\u00a2\u0006\u0002\u0010iJ\u001e\u0010j\u001a\u00020\u000e2\u0006\u0010g\u001a\u00020)2\u0006\u0010h\u001a\u00020)H\u0086@\u00a2\u0006\u0002\u0010kJ6\u0010l\u001a\u00020\u000e2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010g\u001a\u00020)2\u0006\u0010h\u001a\u00020)2\u000c\u0010m\u001a\u0008\u0012\u0004\u0012\u00020)0(H\u0082@\u00a2\u0006\u0002\u0010nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0015\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00138B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u001a@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010B\u001a\u00020=8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010DR\u0011\u0010G\u001a\u00020)8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR$\u0010L\u001a\u00020K2\u0006\u0010J\u001a\u00020K8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010P\u00a8\u0006v"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfVideoFileManager;",
        "",
        "<init>",
        "()V",
        "uploader",
        "Lcom/metamoji/media/video/uploader/VfUploader;",
        "getUploader",
        "()Lcom/metamoji/media/video/uploader/VfUploader;",
        "mUploader",
        "statusDb",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB;",
        "getStatusDb",
        "()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;",
        "open",
        "",
        "close",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mCurrentDocument",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/metamoji/nt/NtDocument;",
        "v",
        "currentDocument",
        "getCurrentDocument",
        "()Lcom/metamoji/nt/NtDocument;",
        "setCurrentDocument",
        "(Lcom/metamoji/nt/NtDocument;)V",
        "Lcom/metamoji/media/video/compat/MfDirectionHandler;",
        "negativeLegacyDirectionHandler",
        "setNegativeLegacyDirectionHandler",
        "(Lcom/metamoji/media/video/compat/MfDirectionHandler;)V",
        "hauntedIdMap",
        "Lcom/metamoji/media/video/compat/MfKarma;",
        "attachDocument",
        "document",
        "rootModel",
        "Lcom/metamoji/df/model/IModel;",
        "detachDocument",
        "videoUnitVisitor",
        "Lcom/metamoji/df/controller/IModelVisitor;",
        "getTicketsInCurrentDocument",
        "Ljava/util/HashSet;",
        "",
        "getTicketsInDocument",
        "updateOnAutoUploadMode",
        "stringOrNull",
        "getPathForPlayback",
        "ticket",
        "useLocal",
        "",
        "documentModel",
        "(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUriOfTicket",
        "(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "movieUpload",
        "onSyncButton",
        "uploadBeforeLogout",
        "Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;",
        "needsToUpload",
        "createTicket",
        "registerMediaFile",
        "resource",
        "Ljava/io/File;",
        "autoDelete",
        "createTicketForServerId",
        "serverId",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "albumStorageFolderPath",
        "getAlbumStorageFolderPath",
        "()Ljava/io/File;",
        "getAlbumStorageFolder",
        "cleanVideoStorageFolder",
        "serverName",
        "getServerName",
        "()Ljava/lang/String;",
        "value",
        "Lcom/metamoji/media/video/VfSettingInfo;",
        "settingInfo",
        "getSettingInfo",
        "()Lcom/metamoji/media/video/VfSettingInfo;",
        "setSettingInfo",
        "(Lcom/metamoji/media/video/VfSettingInfo;)V",
        "getServerCoInfo",
        "Lcom/metamoji/media/video/VfCoInfo;",
        "getImageFromTicket",
        "Landroid/graphics/Bitmap;",
        "getServerClipCount",
        "",
        "userId",
        "getServerClipList",
        "",
        "Lcom/metamoji/media/video/VfClipInfo;",
        "offset",
        "count",
        "",
        "filter",
        "order",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "direction",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "(Ljava/lang/String;JILjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteServerClip",
        "cleanOnLogout",
        "registerOfflineModeNote",
        "driveId",
        "documentId",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unregisterOfflineModeNote",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateOfflineModeInfoAsync",
        "tickets",
        "(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "MediaFilesOrder",
        "MediaFilesOrderDir",
        "ForegroundUploadResult",
        "IUploadProgress",
        "IMultiUploadResult",
        "IMultiUploadingProgress",
        "Companion",
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
.field public static final CURSED_BY_MEDIAFILES:Z = false

.field public static final Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

.field public static final VFM_STORAGE_ROOT_NAME:Ljava/lang/String; = ".vfms"

.field private static final instance:Lcom/metamoji/media/video/VfVideoFileManager;

.field private static final sInstance:Lcom/metamoji/media/video/VfVideoFileManager;


# instance fields
.field private hauntedIdMap:Lcom/metamoji/media/video/compat/MfKarma;

.field private mCurrentDocument:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/NtDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mUploader:Lcom/metamoji/media/video/uploader/VfUploader;

.field private negativeLegacyDirectionHandler:Lcom/metamoji/media/video/compat/MfDirectionHandler;

.field private final videoUnitVisitor:Lcom/metamoji/df/controller/IModelVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    .line 114
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager;

    invoke-direct {v0}, Lcom/metamoji/media/video/VfVideoFileManager;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->sInstance:Lcom/metamoji/media/video/VfVideoFileManager;

    .line 117
    sput-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->instance:Lcom/metamoji/media/video/VfVideoFileManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/media/video/VfVideoFileManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager;->videoUnitVisitor:Lcom/metamoji/df/controller/IModelVisitor;

    return-void
.end method

.method public static final synthetic access$cleanVideoStorageFolder(Lcom/metamoji/media/video/VfVideoFileManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->cleanVideoStorageFolder()V

    return-void
.end method

.method public static final synthetic access$close(Lcom/metamoji/media/video/VfVideoFileManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/VfVideoFileManager;->close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/metamoji/media/video/VfVideoFileManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->instance:Lcom/metamoji/media/video/VfVideoFileManager;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/metamoji/media/video/VfVideoFileManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->sInstance:Lcom/metamoji/media/video/VfVideoFileManager;

    return-object v0
.end method

.method public static final synthetic access$getUriOfTicket(Lcom/metamoji/media/video/VfVideoFileManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/media/video/VfVideoFileManager;->getUriOfTicket(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$open(Lcom/metamoji/media/video/VfVideoFileManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->open()V

    return-void
.end method

.method public static final synthetic access$updateOfflineModeInfoAsync(Lcom/metamoji/media/video/VfVideoFileManager;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/metamoji/media/video/VfVideoFileManager;->updateOfflineModeInfoAsync(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cleanVideoStorageFolder()V
    .locals 2

    .line 408
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getAlbumStorageFolderPath()Ljava/io/File;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 413
    const-string v1, "CleanVideoStorageFolder error."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private final close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/media/video/VfVideoFileManager$close$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$close$1;

    iget v1, v0, Lcom/metamoji/media/video/VfVideoFileManager$close$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$close$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$close$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$close$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/video/VfVideoFileManager$close$1;-><init>(Lcom/metamoji/media/video/VfVideoFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$close$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, v0, Lcom/metamoji/media/video/VfVideoFileManager$close$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoFileManager;->mUploader:Lcom/metamoji/media/video/uploader/VfUploader;

    if-eqz p1, :cond_3

    iput v3, v0, Lcom/metamoji/media/video/VfVideoFileManager$close$1;->label:I

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploader;->terminate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoFileManager;->mUploader:Lcom/metamoji/media/video/uploader/VfUploader;

    .line 152
    const-string p1, "VfVideoFileManager.closed"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 153
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final createTicket()Ljava/lang/String;
    .locals 2

    .line 354
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getAlbumStorageFolderPath()Ljava/io/File;
    .locals 3

    .line 390
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vfms"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCurrentDocument()Lcom/metamoji/nt/NtDocument;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager;->mCurrentDocument:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getInstance()Lcom/metamoji/media/video/VfVideoFileManager;
    .locals 1

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    return-object v0
.end method

.method private final getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager;->mUploader:Lcom/metamoji/media/video/uploader/VfUploader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getTicketsInCurrentDocument()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getCurrentDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getTicketsInDocument(Lcom/metamoji/df/model/IModel;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private final getTicketsInDocument(Lcom/metamoji/df/model/IModel;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;

    iget-object v1, p0, Lcom/metamoji/media/video/VfVideoFileManager;->videoUnitVisitor:Lcom/metamoji/df/controller/IModelVisitor;

    sget-object v2, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->CollectTicket:Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;)V

    if-eqz p1, :cond_0

    .line 233
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v1

    .line 234
    move-object v2, v0

    check-cast v2, Lcom/metamoji/df/controller/ModelVisitContext;

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 236
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;->getTickets()Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method private final getUriOfTicket(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;

    iget v1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;-><init>(Lcom/metamoji/media/video/VfVideoFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 281
    iget v2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/media/video/VfVideoFileManager;

    iget-object p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;

    iget-object p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/df/model/IModel;

    iget-object p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/metamoji/df/model/IModel;

    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    sget-object p3, Lcom/metamoji/media/video/network/VfCloud$IDMapper;->INSTANCE:Lcom/metamoji/media/video/network/VfCloud$IDMapper;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->label:I

    invoke-virtual {p3, p1, v0}, Lcom/metamoji/media/video/network/VfCloud$IDMapper;->getServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    .line 281
    :cond_4
    :goto_1
    check-cast p3, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;

    .line 288
    invoke-virtual {p3}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;->getServerId()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    .line 289
    :cond_5
    sget-object v2, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {p3}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/media/video/VfVideoFileManager$getUriOfTicket$1;->label:I

    invoke-virtual {v2, v5, v0}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getClipInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object p1, p0

    :goto_3
    check-cast p3, Lcom/metamoji/media/video/VfClipInfo;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/metamoji/media/video/VfClipInfo;->getPlayback_url()Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-direct {p1, v3}, Lcom/metamoji/media/video/VfVideoFileManager;->stringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 290
    :cond_8
    :goto_4
    invoke-virtual {p3}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;->getError()Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    sget-object p1, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->FORBIDDEN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    return-object v3
.end method

.method private final open()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager;->mUploader:Lcom/metamoji/media/video/uploader/VfUploader;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "VfUploader.opening..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-direct {v0}, Lcom/metamoji/media/video/uploader/VfUploader;-><init>()V

    .line 139
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploader;->initialize()V

    .line 138
    iput-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager;->mUploader:Lcom/metamoji/media/video/uploader/VfUploader;

    .line 146
    :cond_0
    const-string v0, "VfUploader.opened."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private final setCurrentDocument(Lcom/metamoji/nt/NtDocument;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    iput-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager;->mCurrentDocument:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final setNegativeLegacyDirectionHandler(Lcom/metamoji/media/video/compat/MfDirectionHandler;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager;->negativeLegacyDirectionHandler:Lcom/metamoji/media/video/compat/MfDirectionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/compat/MfDirectionHandler;->dispose()V

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoFileManager;->negativeLegacyDirectionHandler:Lcom/metamoji/media/video/compat/MfDirectionHandler;

    return-void
.end method

.method public static final shutdown()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->shutdown()V

    return-void
.end method

.method public static final startup()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->startup()V

    return-void
.end method

.method private final stringOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 256
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final updateOfflineModeInfoAsync(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;

    iget v3, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;

    invoke-direct {v2, v1, v0}, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;-><init>(Lcom/metamoji/media/video/VfVideoFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 533
    iget v4, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->label:I

    const-string v5, "VfOfflineTable: "

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v4, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$12:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/video/IAmvCache;

    iget-object v9, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$11:Ljava/lang/Object;

    check-cast v9, Landroid/net/Uri;

    iget-object v9, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$10:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v9, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$9:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    iget-object v9, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$8:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$7:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$6:Ljava/lang/Object;

    check-cast v11, Ljava/util/HashSet;

    iget-object v12, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    iget-object v13, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/media/video/uploader/VfOfflineTable;

    iget-object v14, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/util/HashSet;

    iget-object v15, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v7, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/metamoji/df/model/IModel;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v15

    move-object v15, v8

    move-object v8, v1

    move-object v1, v12

    move-object v12, v10

    move-object v10, v1

    move-object v1, v4

    move-object/from16 v18, v9

    move-object v9, v14

    const/4 v6, 0x2

    move-object v4, v2

    move-object v2, v13

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v15

    move-object v15, v8

    move-object v8, v1

    move-object v1, v12

    move-object v12, v10

    move-object v10, v1

    move-object v1, v2

    move-object v2, v13

    move-object v9, v14

    const/4 v6, 0x2

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$9:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    iget-object v7, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$8:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$7:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashSet;

    iget-object v10, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    iget-object v11, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lcom/metamoji/media/video/uploader/VfOfflineTable;

    iget-object v12, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashSet;

    iget-object v13, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v25, v4

    move-object v4, v2

    move-object v2, v11

    move-object v11, v9

    move-object v9, v7

    move-object v7, v14

    move-object/from16 v14, v25

    move-object/from16 v25, v13

    move-object v13, v8

    move-object/from16 v8, v25

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 534
    sget-object v0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->Companion:Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;->getInstance()Lcom/metamoji/media/video/uploader/VfOfflineTable;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 535
    :cond_4
    invoke-direct {v1}, Lcom/metamoji/media/video/VfVideoFileManager;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_5
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 538
    invoke-virtual {v0, v7, v8, v9}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->updateTicketsInDocument(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v10

    .line 541
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 542
    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    .line 585
    new-array v12, v6, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 542
    invoke-virtual {v4, v11}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTickets([Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 543
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    .line 544
    invoke-virtual {v12}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getStatus()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v13

    sget-object v14, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->DONE:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne v13, v14, :cond_6

    .line 546
    invoke-virtual {v12}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->removeByTicket(Ljava/lang/String;)Z

    .line 547
    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/metamoji/media/video/uploader/VfUploader;->getObserver()Lcom/metamoji/media/video/uploader/VfUploadObserver;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->clearListener(Ljava/lang/String;)V

    .line 548
    :cond_7
    invoke-virtual {v12}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has been removed from StatusDB."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 554
    :cond_8
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-string v12, "iterator(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v4

    move-object v4, v2

    move-object v2, v0

    move-object/from16 v0, p1

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    const-string v14, "next(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/String;

    .line 555
    invoke-virtual {v10, v13}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v14

    if-nez v14, :cond_e

    .line 558
    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$1:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$2:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$4:Ljava/lang/Object;

    iput-object v10, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$6:Ljava/lang/Object;

    iput-object v12, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$7:Ljava/lang/Object;

    iput-object v13, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$8:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$9:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$10:Ljava/lang/Object;

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$11:Ljava/lang/Object;

    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$12:Ljava/lang/Object;

    const/4 v15, 0x1

    iput v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->label:I

    invoke-virtual {v1, v13, v6, v0, v4}, Lcom/metamoji/media/video/VfVideoFileManager;->getPathForPlayback(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v25, v15

    move-object v15, v0

    move-object/from16 v0, v25

    move-object/from16 v25, v12

    move-object v12, v9

    move-object v9, v13

    move-object/from16 v13, v25

    .line 533
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 559
    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/CharSequence;

    if-eqz v16, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_a

    goto/16 :goto_8

    .line 560
    :cond_a
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_d

    move-object/from16 p1, v0

    .line 562
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    invoke-virtual {v0, v6, v9}, Lcom/metamoji/video/AmvCacheManager;->getCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;

    move-result-object v1

    .line 564
    :try_start_1
    iput-object v15, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$1:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$4:Ljava/lang/Object;

    iput-object v10, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$6:Ljava/lang/Object;

    iput-object v13, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$7:Ljava/lang/Object;

    iput-object v9, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$8:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$9:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$10:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$11:Ljava/lang/Object;

    iput-object v1, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->L$12:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v6, 0x2

    :try_start_2
    iput v6, v4, Lcom/metamoji/media/video/VfVideoFileManager$updateOfflineModeInfoAsync$1;->label:I

    invoke-interface {v1, v4}, Lcom/metamoji/video/IAmvCache;->getFileAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v3, :cond_b

    :goto_4
    return-object v3

    :cond_b
    move-object/from16 v18, v9

    move-object v9, v12

    move-object v12, v13

    .line 533
    :goto_5
    :try_start_3
    move-object/from16 v19, v0

    check-cast v19, Ljava/io/File;

    if-eqz v19, :cond_c

    .line 567
    sget-object v17, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getOwnerAccount()Ljava/lang/String;

    move-result-object v20

    sget-object v23, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->DONE:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;->createByFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v0

    move-object/from16 v13, v18

    invoke-virtual {v10, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->register(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;)Z

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " has been appended to StatusDB in downloaded-status."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 573
    :cond_c
    invoke-interface {v1}, Lcom/metamoji/video/IAmvCache;->release()I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v25, v4

    move-object v4, v1

    move-object/from16 v1, v25

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    const/4 v6, 0x2

    :goto_6
    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    move-object v9, v12

    move-object v12, v13

    .line 571
    :goto_7
    :try_start_4
    const-string v13, "VfVideoFileManager.UpdateOfflineModeInfo"

    invoke-static {v0, v13}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 573
    invoke-interface {v4}, Lcom/metamoji/video/IAmvCache;->release()I

    const/4 v6, 0x0

    move-object v4, v1

    move-object v0, v15

    goto :goto_a

    :catchall_4
    move-exception v0

    invoke-interface {v4}, Lcom/metamoji/video/IAmvCache;->release()I

    throw v0

    :cond_d
    :goto_8
    const/4 v6, 0x2

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v9, v12

    move-object v12, v13

    :goto_9
    move-object v0, v15

    goto/16 :goto_2

    :cond_e
    :goto_a
    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 579
    :cond_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final updateOnAutoUploadMode()V
    .locals 5

    .line 245
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getSettingInfo()Lcom/metamoji/media/video/VfSettingInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getCurrentDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v1, v3}, Lcom/metamoji/media/video/VfSettingInfo;->checkAutoUpload(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getTicketsInCurrentDocument()Ljava/util/HashSet;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 249
    invoke-virtual {v0, v2}, Lcom/metamoji/media/video/uploader/VfUploader;->start(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static final videoUnitVisitor$lambda$1(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 218
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 220
    const-string v1, "$video"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lcom/metamoji/un/video/UnVideoUnit;->Companion:Lcom/metamoji/un/video/UnVideoUnit$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->visitModelForVideoFileManager(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final attachDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rootModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/VfVideoFileManager;->setCurrentDocument(Lcom/metamoji/nt/NtDocument;)V

    .line 205
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->updateOnAutoUploadMode()V

    return-void
.end method

.method public final cleanOnLogout()V
    .locals 4

    .line 479
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Lcom/metamoji/lib/utils/UtLibKt;->utAssert$default(ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 480
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$cleanOnLogout$1;

    invoke-direct {v0, p0, v3}, Lcom/metamoji/media/video/VfVideoFileManager$cleanOnLogout$1;-><init>(Lcom/metamoji/media/video/VfVideoFileManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v0, v1, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createTicketForServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;

    iget v1, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;-><init>(Lcom/metamoji/media/video/VfVideoFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 375
    iget v2, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 376
    sget-object p2, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    iput-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->label:I

    invoke-virtual {p2, v0}, Lcom/metamoji/media/video/network/VfCloud$Companion;->updateSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    .line 377
    :cond_5
    :goto_1
    sget-object p2, Lcom/metamoji/media/video/network/VfCloud$IDMapper;->INSTANCE:Lcom/metamoji/media/video/network/VfCloud$IDMapper;

    iput-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/media/video/network/VfCloud$IDMapper;->getRegisteredTicketForServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_3

    .line 375
    :cond_6
    :goto_2
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_7

    return-object p2

    .line 382
    :cond_7
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->createTicket()Ljava/lang/String;

    move-result-object v2

    .line 383
    sget-object v4, Lcom/metamoji/media/video/network/VfCloud$IDMapper;->INSTANCE:Lcom/metamoji/media/video/network/VfCloud$IDMapper;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/media/video/VfVideoFileManager$createTicketForServerId$1;->label:I

    invoke-virtual {v4, v2, p1, v0}, Lcom/metamoji/media/video/network/VfCloud$IDMapper;->registerTicketWithServerId(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    move-object p1, v2

    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_9

    const/4 p1, 0x0

    :cond_9
    return-object p1
.end method

.method public final deleteServerClip(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 476
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/video/network/VfCloud$Companion;->deleteClip(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final detachDocument(Lcom/metamoji/nt/NtDocument;)V
    .locals 1

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getCurrentDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/VfVideoFileManager;->setNegativeLegacyDirectionHandler(Lcom/metamoji/media/video/compat/MfDirectionHandler;)V

    .line 212
    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoFileManager;->hauntedIdMap:Lcom/metamoji/media/video/compat/MfKarma;

    .line 213
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/VfVideoFileManager;->setCurrentDocument(Lcom/metamoji/nt/NtDocument;)V

    :cond_0
    return-void
.end method

.method public final getAlbumStorageFolder()Ljava/io/File;
    .locals 2

    .line 396
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getAlbumStorageFolderPath()Ljava/io/File;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public final getImageFromTicket(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getPosterFrame(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPathForPlayback(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/metamoji/df/model/IModel;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;

    iget v1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;

    invoke-direct {v0, p0, p4}, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;-><init>(Lcom/metamoji/media/video/VfVideoFileManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 264
    iget v2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/df/model/IModel;

    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/metamoji/df/model/IModel;

    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p4, 0x0

    if-eqz p2, :cond_5

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getFile()Ljava/io/File;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, p4

    :goto_1
    if-eqz v2, :cond_5

    return-object v2

    .line 273
    :cond_5
    sget-object v2, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/VfCloud$Companion;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    return-object p4

    .line 277
    :cond_6
    sget-object p4, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    iput-object p1, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->Z$0:Z

    iput v4, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->label:I

    invoke-virtual {p4, v0}, Lcom/metamoji/media/video/network/VfCloud$Companion;->updateSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_7

    goto :goto_3

    .line 278
    :cond_7
    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->Z$0:Z

    iput v3, v0, Lcom/metamoji/media/video/VfVideoFileManager$getPathForPlayback$1;->label:I

    invoke-direct {p0, p1, p3, v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUriOfTicket(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    return-object p1
.end method

.method public final getServerClipCount(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 470
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getClipCount(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getServerClipList(Ljava/lang/String;JILjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
            "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/metamoji/media/video/VfClipInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getClipList(Ljava/lang/String;JILjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getServerCoInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfCoInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 464
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getServerCoInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getServerName()Ljava/lang/String;
    .locals 1

    .line 418
    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSettingInfo()Lcom/metamoji/media/video/VfSettingInfo;
    .locals 2

    .line 430
    sget-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;->getInstance()Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->getMediaServerAt(I)Lcom/metamoji/media/video/VfSettingInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/metamoji/media/video/VfSettingInfo;

    invoke-direct {v0}, Lcom/metamoji/media/video/VfSettingInfo;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final getUploader()Lcom/metamoji/media/video/uploader/VfUploader;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoFileManager;->mUploader:Lcom/metamoji/media/video/uploader/VfUploader;

    return-object v0
.end method

.method public final movieUpload(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$movieUpload$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/metamoji/media/video/VfVideoFileManager$movieUpload$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final needsToUpload(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getStatus()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->needsToUploadStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onSyncButton()V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getSettingInfo()Lcom/metamoji/media/video/VfSettingInfo;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/metamoji/media/video/VfSettingInfo;->getUploadSynchronizeApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isCloudAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getTicketsInCurrentDocument()Ljava/util/HashSet;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/video/uploader/VfUploader;->shakeIt(Ljava/util/Collection;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final registerMediaFile(Ljava/io/File;Z)Ljava/lang/String;
    .locals 8

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getSettingInfo()Lcom/metamoji/media/video/VfSettingInfo;

    move-result-object v0

    .line 367
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->createTicket()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getCurrentDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/VfSettingInfo;->checkAutoUpload(Z)Z

    move-result v7

    .line 371
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getOwnerAccount()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/media/video/uploader/VfUploader;->register(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    return-object v2
.end method

.method public final registerOfflineModeNote(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 504
    invoke-direct {p0, p3}, Lcom/metamoji/media/video/VfVideoFileManager;->getTicketsInDocument(Lcom/metamoji/df/model/IModel;)Ljava/util/HashSet;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v1, p3

    move-object v5, p4

    .line 505
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/media/video/VfVideoFileManager;->updateOfflineModeInfoAsync(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setSettingInfo(Lcom/metamoji/media/video/VfSettingInfo;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;->getInstance()Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->updateInfo(Lcom/metamoji/media/video/VfSettingInfo;)V

    .line 448
    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo;->getUploadOnIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->updateOnAutoUploadMode()V

    .line 452
    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo;->getUploadOnIdleShareOnly()Z

    move-result p1

    if-nez p1, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    sget-object v2, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->changeStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;[Ljava/lang/Integer;)I

    :cond_0
    return-void
.end method

.method public final unregisterOfflineModeNote(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 517
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/media/video/VfVideoFileManager;->updateOfflineModeInfoAsync(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final uploadBeforeLogout()Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;
    .locals 4

    .line 331
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Lcom/metamoji/lib/utils/UtLibKt;->utAssert$default(ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 332
    new-instance v0, Lcom/metamoji/media/video/VfVideoFileManager$uploadBeforeLogout$r$1;

    invoke-direct {v0, v3}, Lcom/metamoji/media/video/VfVideoFileManager$uploadBeforeLogout$r$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v0, v1, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadOnLogout:result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-object v0
.end method
