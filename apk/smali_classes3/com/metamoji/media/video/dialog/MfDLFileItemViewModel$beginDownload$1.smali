.class final Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfFileItemDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->beginDownload()V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.metamoji.media.video.dialog.MfDLFileItemViewModel$beginDownload$1"
    f = "MfFileItemDialog.kt"
    i = {
        0x1
    }
    l = {
        0x71,
        0x75
    }
    m = "invokeSuspend"
    n = {
        "url"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $sid:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->$sid:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->$sid:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;-><init>(Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    :try_start_2
    sget-object p1, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->$sid:Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->label:I

    invoke-virtual {p1, v1, v5}, Lcom/metamoji/media/video/network/VfCloud$Companion;->getClipInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, Lcom/metamoji/media/video/VfClipInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfClipInfo;->getPlayback_url()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_5

    .line 114
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 115
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    new-instance v1, Lcom/metamoji/video/AmvDLTempFile;

    new-instance v2, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1$1;

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-direct {v2, v3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, p1, v2}, Lcom/metamoji/video/AmvDLTempFile;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v1}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->access$setTempFile$p(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lcom/metamoji/video/AmvDLTempFile;)V

    goto :goto_4

    .line 117
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1$2;

    iget-object v5, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-direct {v3, v5, v4}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1$2;-><init>(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->label:I

    invoke-static {v1, v3, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    .line 122
    :goto_3
    :try_start_3
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-static {p1, v4}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->access$setAsyncTask$p(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lkotlinx/coroutines/Deferred;)V

    .line 126
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    .line 124
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$beginDownload$1;->this$0:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-static {v0, v4}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->access$setAsyncTask$p(Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;Lkotlinx/coroutines/Deferred;)V

    throw p1
.end method
