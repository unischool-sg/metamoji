.class final Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SupportLogDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
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
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;"
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
    c = "com.metamoji.ui.dialog.SupportLogDialog$Companion$show$1$1"
    f = "SupportLogDialog.kt"
    i = {
        0x0
    }
    l = {
        0x74
    }
    m = "invokeSuspend"
    n = {
        "$this$executeAsync"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $log:Ljava/io/File;

.field final synthetic $tag:Ljava/lang/String;

.field final synthetic $zip:Ljava/io/File;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$zip:Ljava/io/File;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$log:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$tag:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/ui/dialog/SupportLogDialog;
    .locals 0

    .line 116
    new-instance p0, Lcom/metamoji/ui/dialog/SupportLogDialog;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogDialog;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$zip:Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$log:Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$tag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 114
    iget v2, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 115
    sget-object p1, Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;->Companion:Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel$Companion;

    move-object v2, v0

    check-cast v2, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$zip:Ljava/io/File;

    iget-object v5, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$log:Ljava/io/File;

    invoke-virtual {p1, v2, v4, v5}, Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/io/File;Ljava/io/File;)Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;

    .line 116
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->$tag:Ljava/lang/String;

    new-instance v2, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1$$ExternalSyntheticLambda0;-><init>()V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion$show$1$1;->label:I

    invoke-virtual {v0, p1, v2, v4}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 117
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
