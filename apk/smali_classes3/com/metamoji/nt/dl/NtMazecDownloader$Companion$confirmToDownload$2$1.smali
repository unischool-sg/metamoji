.class final Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtMazecDownloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->confirmToDownload(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.nt.dl.NtMazecDownloader$Companion$confirmToDownload$2$1"
    f = "NtMazecDownloader.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isUpdate:Z

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->$isUpdate:Z

    iput-object p2, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->$cont:Lkotlin/coroutines/Continuation;

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

    new-instance p1, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->$isUpdate:Z

    iget-object v1, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;-><init>(ZLkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 395
    iget v0, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 397
    sget-object p1, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->$isUpdate:Z

    invoke-static {p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$titleFor(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Z)Ljava/lang/String;

    move-result-object v2

    .line 398
    sget-object p1, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->$isUpdate:Z

    invoke-static {p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$downloadStartMessageFor(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Z)Ljava/lang/String;

    move-result-object v1

    .line 399
    sget-object p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$string;->dic_download_msg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "getString(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/metamoji/noteanytime/R$string;->dic_download_later_msg:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    new-instance p1, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1$1;

    iget-object v0, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cm/CmUtils;->selectDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 402
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 395
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
