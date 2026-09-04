.class final Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfProgressDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;->show(ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.media.video.dialog.MfProgressDialog$Companion$show$2"
    f = "MfProgressDialog.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isMulti:Z

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;->$isMulti:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$1$lambda$0(Lcom/metamoji/media/video/dialog/MfProgressDialog;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 1

    .line 121
    const-string v0, "MfProgressDialog"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 122
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;

    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;->$isMulti:Z

    invoke-direct {p1, v0, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 115
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$getDialogCanceller$cp()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 117
    sget-object p1, Lcom/metamoji/media/video/dialog/MfProgressDialog;->Companion:Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion;

    new-instance p1, Lcom/metamoji/media/video/dialog/MfProgressDialog;

    invoke-direct {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;-><init>()V

    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2;->$isMulti:Z

    .line 118
    invoke-static {p1, v0}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setMulti(Lcom/metamoji/media/video/dialog/MfProgressDialog;Z)V

    .line 119
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog$Companion$show$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    invoke-static {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManagerExtKt;->withActivity(Lcom/metamoji/ui/UiCurrentActivityManager;Lkotlin/jvm/functions/Function1;)V

    .line 117
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfProgressDialog;->access$setDialogInstance$cp(Lcom/metamoji/media/video/dialog/MfProgressDialog;)V

    .line 124
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
