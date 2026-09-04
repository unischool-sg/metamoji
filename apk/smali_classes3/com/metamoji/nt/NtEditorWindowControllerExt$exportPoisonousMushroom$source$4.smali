.class final Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtEditorWindowControllerExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowControllerExt;->exportPoisonousMushroom(Lcom/metamoji/nt/NtDocument;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/net/Uri;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtEditorWindowControllerExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtEditorWindowControllerExt.kt\ncom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4\n+ 2 UtLib.kt\ncom/metamoji/lib/utils/UtLibKt\n*L\n1#1,44:1\n74#2,4:45\n74#2,4:49\n*S KotlinDebug\n*F\n+ 1 NtEditorWindowControllerExt.kt\ncom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4\n*L\n31#1:45,4\n32#1:49,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "uri",
        "Landroid/net/Uri;"
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
    c = "com.metamoji.nt.NtEditorWindowControllerExt$exportPoisonousMushroom$source$4"
    f = "NtEditorWindowControllerExt.kt"
    i = {
        0x0
    }
    l = {
        0x17
    }
    m = "invokeSuspend"
    n = {
        "uri"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $document:Lcom/metamoji/nt/NtDocument;

.field final synthetic $mushroomDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->$document:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->$mushroomDic:Ljava/util/HashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->$document:Lcom/metamoji/nt/NtDocument;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->$mushroomDic:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, p2}, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->invoke(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 22
    iget v2, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->$document:Lcom/metamoji/nt/NtDocument;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->$mushroomDic:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4;->label:I

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    new-instance v4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v5}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v5, v4

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 24
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v7, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;

    invoke-direct {v7, p1, v0, v2, v5}, Lcom/metamoji/nt/NtEditorWindowControllerExt$exportPoisonousMushroom$source$4$1$1;-><init>(Lcom/metamoji/nt/NtDocument;Landroid/net/Uri;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnBackground(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 31
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v5, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 23
    :cond_2
    invoke-virtual {v4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 33
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 32
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "failed to dump note."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
