.class final Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoTrimmingDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.metamoji.un.video.dialog.VideoTrimmingDialog$onViewCreated$1$1"
    f = "VideoTrimmingDialog.kt"
    i = {}
    l = {
        0xd6
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;

    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;-><init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 212
    iget v1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 213
    sget-object p1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->Companion:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string/jumbo v1, "start repairing"

    invoke-virtual {p1, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;

    invoke-static {p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->access$getViewModel(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;)Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->label:I

    invoke-virtual {p1, v1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repair(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 215
    sget-object p1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->Companion:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "had not been repaired."

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1$1;->this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->onNegative()V

    .line 218
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
