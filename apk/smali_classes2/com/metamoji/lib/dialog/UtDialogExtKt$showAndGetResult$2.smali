.class final Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UtDialogExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/UtDialogExtKt;->showAndGetResult(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.metamoji.lib.dialog.UtDialogExtKt$showAndGetResult$2"
    f = "UtDialogExt.kt"
    i = {
        0x0
    }
    l = {
        0x20
    }
    m = "invokeSuspend"
    n = {
        "$this$runAsync"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $dlg:Lcom/metamoji/lib/dialog/UtDialog;

.field final synthetic $onResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $tag:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "+TT;>;",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$onResult:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$dlg:Lcom/metamoji/lib/dialog/UtDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtDialog;
    .locals 0

    return-object p0
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

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$onResult:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$dlg:Lcom/metamoji/lib/dialog/UtDialog;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->L$0:Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->label:I

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

    .line 32
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$dlg:Lcom/metamoji/lib/dialog/UtDialog;

    new-instance v4, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->label:I

    invoke-virtual {v0, p1, v4, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 33
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$onResult:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$dlg:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;->$dlg:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
