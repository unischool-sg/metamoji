.class public final Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SelectFrameDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/dialog/SelectFrameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectFrameViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;,
        Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectFrameDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFrameDialog.kt\ncom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,217:1\n49#2:218\n51#2:222\n49#2:223\n51#2:227\n49#2:228\n51#2:232\n46#3:219\n51#3:221\n46#3:224\n51#3:226\n46#3:229\n51#3:231\n105#4:220\n105#4:225\n105#4:230\n*S KotlinDebug\n*F\n+ 1 SelectFrameDialog.kt\ncom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel\n*L\n72#1:218\n72#1:222\n73#1:223\n73#1:227\n74#1:228\n74#1:232\n72#1:219\n72#1:221\n73#1:224\n73#1:226\n74#1:229\n74#1:231\n72#1:220\n73#1:225\n74#1:230\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 A2\u00020\u00012\u00020\u0002:\u0002@AB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u00107\u001a\u0002082\u0006\u0010\r\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u0010J\u000e\u0010=\u001a\u0002082\u0006\u00109\u001a\u00020\u0010J\u0006\u0010>\u001a\u000208J\u0008\u0010?\u001a\u000208H\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013\"\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010!R\u0017\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010!R\u0019\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001cR\u0017\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001cR\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001c\u00101\u001a\u0004\u0018\u000102X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u000e\u0010:\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u0004\u0018\u00010<X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;",
        "<init>",
        "()V",
        "immortalTaskContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "getImmortalTaskContext",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "setImmortalTaskContext",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V",
        "value",
        "",
        "ticket",
        "getTicket",
        "()Ljava/lang/String;",
        "",
        "initialPosition",
        "getInitialPosition",
        "()J",
        "thumbnailPosition",
        "getThumbnailPosition",
        "setThumbnailPosition",
        "(J)V",
        "status",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;",
        "getStatus",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "waiting",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getWaiting",
        "()Lkotlinx/coroutines/flow/Flow;",
        "ready",
        "getReady",
        "error",
        "getError",
        "sourceFile",
        "Ljava/io/File;",
        "getSourceFile",
        "completed",
        "getCompleted",
        "thumbnailBlob",
        "Lcom/metamoji/cm/Blob;",
        "getThumbnailBlob",
        "()Lcom/metamoji/cm/Blob;",
        "setThumbnailBlob",
        "(Lcom/metamoji/cm/Blob;)V",
        "source",
        "Lcom/metamoji/un/video/UnVideoSource;",
        "getSource",
        "()Lcom/metamoji/un/video/UnVideoSource;",
        "setSource",
        "(Lcom/metamoji/un/video/UnVideoSource;)V",
        "setTicket",
        "",
        "position",
        "busy",
        "extractor",
        "Lcom/metamoji/video/AmvFrameExtractor;",
        "extract",
        "cancel",
        "onCleared",
        "Status",
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
.field public static final Companion:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;


# instance fields
.field private busy:Z

.field private final completed:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private extractor:Lcom/metamoji/video/AmvFrameExtractor;

.field public immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

.field private initialPosition:J

.field private final ready:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/metamoji/un/video/UnVideoSource;

.field private final sourceFile:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnailBlob:Lcom/metamoji/cm/Blob;

.field private thumbnailPosition:J

.field private ticket:Ljava/lang/String;

.field private final waiting:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->Companion:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 71
    sget-object v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;->PREPARING:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 72
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 220
    new-instance v2, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$special$$inlined$map$1;

    invoke-direct {v2, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 72
    iput-object v2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->waiting:Lkotlinx/coroutines/flow/Flow;

    .line 73
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 225
    new-instance v2, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$special$$inlined$map$2;

    invoke-direct {v2, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 73
    iput-object v2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->ready:Lkotlinx/coroutines/flow/Flow;

    .line 74
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 230
    new-instance v1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$special$$inlined$map$3;

    invoke-direct {v1, v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 74
    iput-object v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->error:Lkotlinx/coroutines/flow/Flow;

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->sourceFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->completed:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method static final extract$lambda$6$lambda$3(Lcom/metamoji/video/AmvFrameExtractor;Landroid/util/Size;)Lkotlin/Unit;
    .locals 2

    const-string v0, "extractor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->INSTANCE:Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->calcHD720Size(II)Landroid/util/Size;

    move-result-object p1

    .line 110
    sget-object v0, Lcom/metamoji/video/FitMode;->Fit:Lcom/metamoji/video/FitMode;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/video/AmvFrameExtractor;->setSizingHint(Lcom/metamoji/video/FitMode;FF)V

    .line 111
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final extract$lambda$6$lambda$4(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;Lcom/metamoji/video/AmvFrameExtractor;ILandroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 0

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bmp"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p3}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailBlob:Lcom/metamoji/cm/Blob;

    .line 114
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final extract$lambda$6$lambda$5(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;Lcom/metamoji/video/AmvFrameExtractor;Lcom/metamoji/lib/utils/UtAsyncTask;Z)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 116
    iget-object p2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailBlob:Lcom/metamoji/cm/Blob;

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->completed:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    const/4 p2, 0x0

    .line 119
    iput-object p2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->extractor:Lcom/metamoji/video/AmvFrameExtractor;

    .line 120
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->dispose()V

    .line 121
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->source:Lcom/metamoji/un/video/UnVideoSource;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnVideoSource;->release()V

    .line 122
    :cond_1
    iput-object p2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->source:Lcom/metamoji/un/video/UnVideoSource;

    .line 123
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->extractor:Lcom/metamoji/video/AmvFrameExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameExtractor;->cancel()V

    :cond_0
    return-void
.end method

.method public final extract(J)V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->busy:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->sourceFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->busy:Z

    .line 104
    iget-object v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->completed:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailBlob:Lcom/metamoji/cm/Blob;

    .line 106
    iput-wide p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailPosition:J

    .line 107
    new-instance p1, Lcom/metamoji/video/AmvFrameExtractor;

    invoke-direct {p1}, Lcom/metamoji/video/AmvFrameExtractor;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getChanceForSettingThumbnailSize()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object p2

    new-instance v2, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, v1, v2}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 112
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getOnThumbnailRetrievedListener()Lcom/metamoji/lib/utils/Funcies3;

    move-result-object p2

    new-instance v2, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;)V

    invoke-virtual {p2, v1, v2}, Lcom/metamoji/lib/utils/Funcies3;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;

    .line 115
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getOnFinishedListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object p2

    new-instance v2, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;Lcom/metamoji/video/AmvFrameExtractor;)V

    invoke-virtual {p2, v1, v2}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 124
    iget-wide v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailPosition:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/video/AmvFrameExtractor;->getThumbnail(Ljava/io/File;J)V

    .line 107
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->extractor:Lcom/metamoji/video/AmvFrameExtractor;

    return-void
.end method

.method public final getCompleted()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->completed:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getError()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->error:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "immortalTaskContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInitialPosition()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->initialPosition:J

    return-wide v0
.end method

.method public final getReady()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->ready:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getSource()Lcom/metamoji/un/video/UnVideoSource;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->source:Lcom/metamoji/un/video/UnVideoSource;

    return-object v0
.end method

.method public final getSourceFile()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->sourceFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getStatus()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getThumbnailBlob()Lcom/metamoji/cm/Blob;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailBlob:Lcom/metamoji/cm/Blob;

    return-object v0
.end method

.method public final getThumbnailPosition()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailPosition:J

    return-wide v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->ticket:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ticket"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWaiting()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->waiting:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    .line 133
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 134
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->extractor:Lcom/metamoji/video/AmvFrameExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameExtractor;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->extractor:Lcom/metamoji/video/AmvFrameExtractor;

    .line 136
    iget-object v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->source:Lcom/metamoji/un/video/UnVideoSource;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoSource;->release()V

    .line 137
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->source:Lcom/metamoji/un/video/UnVideoSource;

    return-void
.end method

.method public setImmortalTaskContext(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    return-void
.end method

.method public final setSource(Lcom/metamoji/un/video/UnVideoSource;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->source:Lcom/metamoji/un/video/UnVideoSource;

    return-void
.end method

.method public final setThumbnailBlob(Lcom/metamoji/cm/Blob;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailBlob:Lcom/metamoji/cm/Blob;

    return-void
.end method

.method public final setThumbnailPosition(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->thumbnailPosition:J

    return-void
.end method

.method public final setTicket(Ljava/lang/String;J)V
    .locals 6

    const-string/jumbo p2, "ticket"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p3, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;->PREPARING:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;

    invoke-interface {p2, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 82
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->ticket:Ljava/lang/String;

    .line 83
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p2, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;-><init>(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
