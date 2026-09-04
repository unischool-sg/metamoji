.class final Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "NtDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtDialog;->listEditText(Landroid/view/ViewGroup;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Landroid/widget/EditText;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Landroid/widget/EditText;"
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
    c = "com.metamoji.ui.dialog.NtDialog$listEditText$1$1"
    f = "NtDialog.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x13f,
        0x140
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "child",
        "count",
        "i",
        "$this$iterator",
        "child",
        "count",
        "i"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/dialog/NtDialog;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/metamoji/ui/dialog/NtDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/metamoji/ui/dialog/NtDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->$view:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->this$0:Lcom/metamoji/ui/dialog/NtDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->$view:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->this$0:Lcom/metamoji/ui/dialog/NtDialog;

    invoke-direct {v0, v1, v2, p2}, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;-><init>(Landroid/view/ViewGroup;Lcom/metamoji/ui/dialog/NtDialog;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Landroid/widget/EditText;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 314
    iget v2, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v2, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->I$1:I

    iget v5, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->I$0:I

    iget-object v6, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 315
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    move v5, p1

    :goto_1
    if-ge v2, v5, :cond_5

    .line 317
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 319
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->this$0:Lcom/metamoji/ui/dialog/NtDialog;

    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v6, v7}, Lcom/metamoji/ui/dialog/NtDialog;->access$listEditText(Lcom/metamoji/ui/dialog/NtDialog;Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->L$1:Ljava/lang/Object;

    iput v5, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->I$0:I

    iput v2, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->I$1:I

    iput v4, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->label:I

    invoke-virtual {v0, v6, v7}, Lkotlin/sequences/SequenceScope;->yieldAll(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 320
    :cond_3
    instance-of v6, p1, Landroid/widget/EditText;

    if-eqz v6, :cond_4

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->L$1:Ljava/lang/Object;

    iput v5, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->I$0:I

    iput v2, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->I$1:I

    iput v3, p0, Lcom/metamoji/ui/dialog/NtDialog$listEditText$1$1;->label:I

    invoke-virtual {v0, p1, v6}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :goto_2
    return-object v1

    :cond_4
    :goto_3
    add-int/2addr v2, v4

    goto :goto_1

    .line 324
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
