.class final Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExportNoteTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/metamoji/cm/PBE;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/metamoji/cm/PBE;",
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
    c = "com.metamoji.ui.task.ExportNoteTask$exportTo$2$pbe$1"
    f = "ExportNoteTask.kt"
    i = {
        0x0
    }
    l = {
        0x82
    }
    m = "invokeSuspend"
    n = {
        "hashedPwd"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/task/ExportNoteTask;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/task/ExportNoteTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/task/ExportNoteTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

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

    new-instance p1, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;

    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;-><init>(Lcom/metamoji/ui/task/ExportNoteTask;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/metamoji/cm/PBE;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 125
    iget v1, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    invoke-virtual {p1}, Lcom/metamoji/ui/task/ExportNoteTask;->getEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->getHashedPassword()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 130
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1$1;

    invoke-direct {v4, p1, v1}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->label:I

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/metamoji/cm/PBE;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 138
    sget-object v0, Lcom/metamoji/ui/task/ExportNoteTask;->Companion:Lcom/metamoji/ui/task/ExportNoteTask$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/task/ExportNoteTask$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "checking password error."

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->warn(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    sget-object v1, Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;->ERROR:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

    invoke-static {v0, v1}, Lcom/metamoji/ui/task/ExportNoteTask;->access$setSaveStatus$p(Lcom/metamoji/ui/task/ExportNoteTask;Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;)V

    .line 140
    throw p1

    :catch_1
    move-exception p1

    .line 134
    sget-object v0, Lcom/metamoji/ui/task/ExportNoteTask;->Companion:Lcom/metamoji/ui/task/ExportNoteTask$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/task/ExportNoteTask$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "checking password was cancelled."

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2$pbe$1;->this$0:Lcom/metamoji/ui/task/ExportNoteTask;

    sget-object v1, Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;->CANCEL:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

    invoke-static {v0, v1}, Lcom/metamoji/ui/task/ExportNoteTask;->access$setSaveStatus$p(Lcom/metamoji/ui/task/ExportNoteTask;Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;)V

    .line 136
    throw p1

    :cond_3
    return-object v1
.end method
