.class final Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UiMediaStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiMediaStore;->saveMultiBitmaps(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.ui.UiMediaStore$saveMultiBitmaps$2"
    f = "UiMediaStore.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x77,
        0x78,
        0x7b
    }
    m = "invokeSuspend"
    n = {
        "initialPath",
        "initialPath",
        "pickers",
        "initialPath",
        "pickers",
        "uri",
        "dir"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $baseFileName:Ljava/lang/String;

.field final synthetic $bitmaps:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $mimeType:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/sequences/Sequence<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$bitmaps:Lkotlin/sequences/Sequence;

    iput-object p3, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$baseFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$mimeType:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$1(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;)I
    .locals 8

    .line 124
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 126
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 128
    :try_start_0
    sget-object v3, Lcom/metamoji/ui/task/SaveMultiFilesTask;->Companion:Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;

    invoke-static {p2}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v3, p1, p2, v4, p3}, Lcom/metamoji/ui/task/SaveMultiFilesTask$Companion;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 129
    :cond_1
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "getContentResolver(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "getUri(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/metamoji/cm/OopsKt;->openTruncatedStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v4, v3

    check-cast v4, Ljava/io/OutputStream;

    .line 130
    sget-object v5, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    invoke-static {v5, p2}, Lcom/metamoji/ui/UiMediaStore;->access$mimeType2CompressFormat(Lcom/metamoji/ui/UiMediaStore;Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v0, 0x1

    .line 131
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v0, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v7, v4

    move v4, v0

    move-object v0, v7

    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v3

    move v0, v4

    goto :goto_2

    :catchall_4
    move-exception v3

    .line 134
    :goto_2
    :try_start_6
    sget-object v4, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    invoke-virtual {v4}, Lcom/metamoji/ui/UiMediaStore;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v3, v2, v5, v2}, Lcom/metamoji/lib/utils/UtLog;->error$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 136
    :cond_2
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_5
    move-exception p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;

    iget-object v1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$bitmaps:Lkotlin/sequences/Sequence;

    iget-object v3, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$baseFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$mimeType:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;-><init>(Landroid/content/Context;Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget v1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    iget-object v0, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v0, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    iget-object v0, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    iget-object v3, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$0:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_4

    const-string p1, "external_primary"

    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 119
    :goto_0
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->label:I

    invoke-static {v1}, Lcom/metamoji/ui/task/TaskExtensionKt;->mmjGetFilePickerStore(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto/16 :goto_3

    :cond_5
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    if-nez p1, :cond_6

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 120
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getDirectoryPicker()Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    move-result-object v4

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->label:I

    invoke-virtual {v4, v1, v6}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;->selectDirectory(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    goto :goto_3

    :cond_7
    move-object v12, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v12

    :goto_2
    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_8

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 121
    :cond_8
    iget-object v4, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$context:Landroid/content/Context;

    invoke-static {v4, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v10

    if-nez v10, :cond_9

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 123
    :cond_9
    sget-object v4, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$bitmaps:Lkotlin/sequences/Sequence;

    iget-object v8, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$baseFileName:Ljava/lang/String;

    iget-object v9, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$mimeType:Ljava/lang/String;

    iget-object v11, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->$context:Landroid/content/Context;

    new-instance v6, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;

    invoke-direct/range {v6 .. v11}, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2$$ExternalSyntheticLambda0;-><init>(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;)V

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$2:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/ui/UiMediaStore$saveMultiBitmaps$2;->label:I

    invoke-static {v4, v5, v6, v7}, Lcom/metamoji/ui/UiMediaStore;->access$suspendRunOnBackground(Lcom/metamoji/ui/UiMediaStore;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    :goto_3
    return-object v0

    :cond_a
    return-object p1
.end method
