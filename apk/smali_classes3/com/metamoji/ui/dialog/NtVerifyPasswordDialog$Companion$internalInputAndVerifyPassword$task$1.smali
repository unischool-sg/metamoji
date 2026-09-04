.class final Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtVerifyPasswordDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;->internalInputAndVerifyPassword(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;)V
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
    c = "com.metamoji.ui.dialog.NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1"
    f = "NtVerifyPasswordDialog.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x88,
        0x89
    }
    m = "invokeSuspend"
    n = {
        "$this$UtImmortalSimpleTask",
        "viewModel",
        "$this$UtImmortalSimpleTask",
        "viewModel",
        "dlg"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hashed:Z

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$password:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$hashed:Z

    iput-object p4, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$callback:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;
    .locals 0

    .line 136
    new-instance p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;-><init>()V

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

    new-instance v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$password:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$hashed:Z

    iget-object v4, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$callback:Lkotlin/jvm/functions/Function3;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 134
    iget v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    sget-object v5, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;

    move-object v6, v0

    check-cast v6, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    iget-object v7, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$title:Ljava/lang/String;

    iget-object v9, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$password:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$hashed:Z

    const-string v8, ""

    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v2

    .line 136
    new-instance p1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1$$ExternalSyntheticLambda0;-><init>()V

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->label:I

    const-string v6, "VerifyPasswordDialog"

    invoke-virtual {v0, v6, p1, v5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    .line 134
    :cond_3
    :goto_0
    check-cast p1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;

    .line 137
    iget-object v5, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->$callback:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_5

    const-string v6, ""

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_1
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$internalInputAndVerifyPassword$task$1;->label:I

    invoke-interface {v5, v0, v6, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    .line 138
    :cond_6
    :goto_3
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
