.class public final Lcom/metamoji/media/video/VfVideoImport;
.super Ljava/lang/Object;
.source "VfVideoImport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0082@\u00a2\u0006\u0002\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010\u0018J\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\u001bH\u0002J4\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00132\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\u001b2\u0006\u0010\u0014\u001a\u00020\u0015R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfVideoImport;",
        "",
        "<init>",
        "()V",
        "videoFile",
        "Ljava/io/File;",
        "thumbnail",
        "Landroid/graphics/Bitmap;",
        "size",
        "Landroid/util/SizeF;",
        "documentId",
        "",
        "progress",
        "",
        "transcoder",
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "convertVideo",
        "",
        "sourceFile",
        "Lcom/metamoji/ui/INtProgressUIEx;",
        "context",
        "Landroid/content/Context;",
        "(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "extractThumbnail",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createDocument",
        "options",
        "",
        "execute",
        "value",
        "cancelled",
        "getCancelled",
        "()Z",
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


# instance fields
.field private cancelled:Z

.field private documentId:Ljava/lang/String;

.field private progress:F

.field private size:Landroid/util/SizeF;

.field private thumbnail:Landroid/graphics/Bitmap;

.field private transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

.field private videoFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$convertVideo(Lcom/metamoji/media/video/VfVideoImport;Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/media/video/VfVideoImport;->convertVideo(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDocument(Lcom/metamoji/media/video/VfVideoImport;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/VfVideoImport;->createDocument(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractThumbnail(Lcom/metamoji/media/video/VfVideoImport;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/VfVideoImport;->extractThumbnail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDocumentId$p(Lcom/metamoji/media/video/VfVideoImport;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/metamoji/media/video/VfVideoImport;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getThumbnail$p(Lcom/metamoji/media/video/VfVideoImport;)Landroid/graphics/Bitmap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/metamoji/media/video/VfVideoImport;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$getTranscoder$p(Lcom/metamoji/media/video/VfVideoImport;)Lcom/metamoji/video/transcoder/IAmvTranscoder;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    return-object p0
.end method

.method public static final synthetic access$getVideoFile$p(Lcom/metamoji/media/video/VfVideoImport;)Ljava/io/File;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/metamoji/media/video/VfVideoImport;->videoFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$setCancelled$p(Lcom/metamoji/media/video/VfVideoImport;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/media/video/VfVideoImport;->cancelled:Z

    return-void
.end method

.method public static final synthetic access$setDocumentId$p(Lcom/metamoji/media/video/VfVideoImport;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport;->documentId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setProgress$p(Lcom/metamoji/media/video/VfVideoImport;F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/metamoji/media/video/VfVideoImport;->progress:F

    return-void
.end method

.method public static final synthetic access$setSize$p(Lcom/metamoji/media/video/VfVideoImport;Landroid/util/SizeF;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport;->size:Landroid/util/SizeF;

    return-void
.end method

.method public static final synthetic access$setThumbnail$p(Lcom/metamoji/media/video/VfVideoImport;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport;->thumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setVideoFile$p(Lcom/metamoji/media/video/VfVideoImport;Ljava/io/File;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport;->videoFile:Ljava/io/File;

    return-void
.end method

.method private final convertVideo(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/ui/INtProgressUIEx;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;

    iget v2, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;-><init>(Lcom/metamoji/media/video/VfVideoImport;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 51
    iget v3, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    iget-object v2, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v2, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/INtProgressUIEx;

    iget-object v1, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v2

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    iget-object v5, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/metamoji/ui/INtProgressUIEx;

    iget-object v7, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/io/File;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    new-instance v7, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v7 .. v12}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;-><init>(Ljava/io/File;Landroid/content/Context;Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    iput-object v7, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/metamoji/media/video/VfVideoImport;->progress:F

    .line 56
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/metamoji/media/video/VfVideoImport$convertVideo$outFile$1;

    invoke-direct {v3, v6}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$outFile$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$0:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v7, p2

    :try_start_3
    iput-object v7, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$2:Ljava/lang/Object;

    iput v5, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->label:I

    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v3, p3

    move-object v5, v7

    move-object v7, p1

    .line 51
    :goto_1
    :try_start_4
    check-cast v0, Ljava/io/File;

    .line 67
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->L$3:Ljava/lang/Object;

    iput v4, v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$1;->label:I

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    new-instance v4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v4, v3}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v3, v4

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 68
    iget-object v7, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    if-eqz v7, :cond_5

    .line 69
    invoke-interface {v7}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v8

    new-instance v9, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1;

    invoke-direct {v9, p0, v5}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1;-><init>(Lcom/metamoji/media/video/VfVideoImport;Lcom/metamoji/ui/INtProgressUIEx;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v8, v9}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 75
    invoke-interface {v7}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v8

    new-instance v9, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;

    invoke-direct {v9, v0, v3, p0}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;Lcom/metamoji/media/video/VfVideoImport;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v8, v9}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 90
    new-instance v8, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;

    invoke-direct {v8, p0, v0, v3}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;-><init>(Lcom/metamoji/media/video/VfVideoImport;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v8}, Lcom/metamoji/ui/INtProgressUIEx;->setCancellationFunc(Lkotlin/jvm/functions/Function0;)V

    .line 102
    invoke-interface {v7, v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->transcode(Ljava/io/File;)V

    .line 67
    :cond_5
    invoke-virtual {v4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_6

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    if-ne v0, v2, :cond_7

    :goto_2
    return-object v2

    :cond_7
    move-object v2, v5

    .line 109
    :goto_3
    invoke-interface {v2, v6}, Lcom/metamoji/ui/INtProgressUIEx;->setCancellationFunc(Lkotlin/jvm/functions/Function0;)V

    .line 110
    iget-object v1, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->dispose()V

    .line 111
    :cond_8
    iput-object v6, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v7, p2

    :goto_4
    move-object v5, v7

    .line 106
    :goto_5
    :try_start_5
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 107
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 109
    invoke-interface {v5, v6}, Lcom/metamoji/ui/INtProgressUIEx;->setCancellationFunc(Lkotlin/jvm/functions/Function0;)V

    .line 110
    iget-object v1, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->dispose()V

    .line 111
    :cond_9
    iput-object v6, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    return-object v0

    :catchall_4
    move-exception v0

    .line 109
    invoke-interface {v5, v6}, Lcom/metamoji/ui/INtProgressUIEx;->setCancellationFunc(Lkotlin/jvm/functions/Function0;)V

    .line 110
    iget-object v1, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->dispose()V

    .line 111
    :cond_a
    iput-object v6, p0, Lcom/metamoji/media/video/VfVideoImport;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    throw v0
.end method

.method private final createDocument(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoImport;->videoFile:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/metamoji/media/video/VfVideoImport;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    return-object v1

    .line 168
    :cond_1
    :try_start_0
    const-string v3, "_video_work"

    const-string v4, ".state"

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 169
    :try_start_1
    invoke-static {v3}, Lcom/metamoji/nt/NtDocumentTemplate;->newEmptyDocument(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_3

    .line 173
    :try_start_2
    const-string p1, "failed to load image"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 216
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_2
    return-object v1

    .line 179
    :cond_3
    :try_start_3
    invoke-interface {v4}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 180
    new-instance v6, Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {v6, v5}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 183
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v2, v5}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v5

    .line 184
    const-string v7, "image/jpeg"

    const-string/jumbo v8, "video_thumbnail.jpg"

    invoke-virtual {v6, v5, v7, v8}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    new-instance v7, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v7}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    const/4 v8, 0x1

    .line 189
    invoke-virtual {v7, v8}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setCramped(Z)V

    .line 190
    invoke-interface {v4, v7}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 191
    invoke-virtual {v6, v5}, Lcom/metamoji/df/controller/AttachmentsManager;->purgeAttachment(Ljava/lang/String;)V

    .line 193
    sget-object v6, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v6}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v6

    invoke-virtual {v6, v0, v8}, Lcom/metamoji/media/video/VfVideoFileManager;->registerMediaFile(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v6, "import:editorExternalCommand"

    .line 197
    new-instance v7, Lcom/metamoji/noteanytime/EditorExternalCommand;

    sget-object v8, Lcom/metamoji/nt/NtCommand;->CMD_ADD_VIDEO_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-direct {v7, v8}, Lcom/metamoji/noteanytime/EditorExternalCommand;-><init>(Lcom/metamoji/nt/NtCommand;)V

    .line 198
    const-string/jumbo v8, "videoAddSub"

    const-string v9, "insert"

    invoke-virtual {v7, v8, v9}, Lcom/metamoji/noteanytime/EditorExternalCommand;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/metamoji/noteanytime/EditorExternalCommand;

    move-result-object v7

    .line 199
    const-string/jumbo v8, "videoTicket"

    invoke-virtual {v7, v8, v0}, Lcom/metamoji/noteanytime/EditorExternalCommand;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/metamoji/noteanytime/EditorExternalCommand;

    move-result-object v0

    .line 200
    const-string/jumbo v7, "videoThumbnailTicket"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v5}, Lcom/metamoji/noteanytime/EditorExternalCommand;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/metamoji/noteanytime/EditorExternalCommand;

    move-result-object v0

    .line 201
    const-string/jumbo v5, "videoSize"

    new-instance v7, Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v7, v8, v2}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {v0, v5, v7}, Lcom/metamoji/noteanytime/EditorExternalCommand;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/metamoji/noteanytime/EditorExternalCommand;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;

    invoke-direct {v0, v4}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 204
    move-object v2, v0

    check-cast v2, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-static {v2}, Lcom/metamoji/dvm/DvmUtil;->doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V

    .line 205
    const-string/jumbo v2, "title"

    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDefaultDocumentTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    new-instance v0, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {v4, v0}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 208
    invoke-static {v3, v1, p1}, Lcom/metamoji/nt/NtDocument;->importDocumentBinary(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    invoke-interface {v4}, Lcom/metamoji/df/model/IModelManager;->close()V

    if-eqz v3, :cond_4

    .line 216
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v4, v1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v3, v1

    move-object v4, v3

    .line 210
    :goto_0
    :try_start_4
    const-string v0, "import image error."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_5

    .line 214
    invoke-interface {v4}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_5
    if-eqz v3, :cond_6

    .line 216
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_6
    return-object v1

    :catchall_3
    move-exception p1

    if-eqz v4, :cond_7

    .line 214
    invoke-interface {v4}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_7
    if-eqz v3, :cond_8

    .line 216
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_8
    throw p1
.end method

.method static final execute$lambda$4()Ljava/lang/String;
    .locals 1

    .line 229
    const-string v0, "VfVideoImport.import() must be called in sub-thread."

    return-object v0
.end method

.method private final extractThumbnail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;

    iget v1, v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;-><init>(Lcom/metamoji/media/video/VfVideoImport;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 119
    iget v2, v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/metamoji/video/AmvFrameExtractor;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport;->videoFile:Ljava/io/File;

    if-nez p1, :cond_3

    .line 121
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    move p1, v4

    .line 123
    new-instance v4, Lcom/metamoji/video/AmvFrameExtractor;

    invoke-direct {v4}, Lcom/metamoji/video/AmvFrameExtractor;-><init>()V

    .line 125
    :try_start_1
    iput-object v4, v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$1;->label:I

    move-object p1, v0

    check-cast p1, Lkotlin/coroutines/Continuation;

    new-instance v2, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v2, p1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object p1, v2

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 127
    invoke-virtual {v4}, Lcom/metamoji/video/AmvFrameExtractor;->getChanceForSettingThumbnailSize()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v5

    sget-object v6, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;->INSTANCE:Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$1;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 131
    invoke-virtual {v4}, Lcom/metamoji/video/AmvFrameExtractor;->getOnVideoInfoRetrievedListener()Lcom/metamoji/lib/utils/Funcies1;

    move-result-object v5

    new-instance v6, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$2;

    invoke-direct {v6, p0}, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$2;-><init>(Lcom/metamoji/media/video/VfVideoImport;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v7, v6}, Lcom/metamoji/lib/utils/Funcies1;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IFuncy1;

    .line 134
    invoke-virtual {v4}, Lcom/metamoji/video/AmvFrameExtractor;->getOnThumbnailRetrievedListener()Lcom/metamoji/lib/utils/Funcies3;

    move-result-object v5

    new-instance v6, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$3;

    invoke-direct {v6, p0}, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$3;-><init>(Lcom/metamoji/media/video/VfVideoImport;)V

    check-cast v6, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v5, v7, v6}, Lcom/metamoji/lib/utils/Funcies3;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;

    .line 137
    invoke-virtual {v4}, Lcom/metamoji/video/AmvFrameExtractor;->getOnFinishedListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v5

    new-instance v6, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$4;

    invoke-direct {v6, p1, p0}, Lcom/metamoji/media/video/VfVideoImport$extractThumbnail$2$1$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/metamoji/media/video/VfVideoImport;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v5, v7, v6}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 140
    iget-object v5, p0, Lcom/metamoji/media/video/VfVideoImport;->videoFile:Ljava/io/File;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/metamoji/video/AmvFrameExtractor;->getThumbnail$default(Lcom/metamoji/video/AmvFrameExtractor;Ljava/io/File;JILjava/lang/Object;)V

    .line 125
    invoke-virtual {v2}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_4

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, v4

    .line 147
    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/video/AmvFrameExtractor;->dispose()V

    return-object p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v1, v4

    .line 144
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 145
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 147
    invoke-virtual {v1}, Lcom/metamoji/video/AmvFrameExtractor;->dispose()V

    return-object p1

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1}, Lcom/metamoji/video/AmvFrameExtractor;->dispose()V

    throw p1
.end method


# virtual methods
.method public final execute(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/ui/INtProgressUIEx;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "sourceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    new-instance p1, Lcom/metamoji/media/video/VfVideoImport$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/media/video/VfVideoImport$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p1}, Lcom/metamoji/lib/utils/UtLibKt;->utAssert(ZLkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    return-object p1

    .line 232
    :cond_0
    new-instance v7, Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {v7, v1, v1}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/metamoji/media/video/VfVideoImport;->progress:F

    .line 234
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/video/VfVideoImport$execute$2;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/media/video/VfVideoImport$execute$2;-><init>(Lcom/metamoji/media/video/VfVideoImport;Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Ljava/util/Map;Lcom/metamoji/cm/ResetableEvent;Lkotlin/coroutines/Continuation;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 258
    invoke-virtual {v7}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    .line 259
    iget-object p2, p0, Lcom/metamoji/media/video/VfVideoImport;->documentId:Ljava/lang/String;

    return-object p2
.end method

.method public final getCancelled()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfVideoImport;->cancelled:Z

    return v0
.end method
