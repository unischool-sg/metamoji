.class final Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtVerifyPasswordDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;->checkPassword(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/metamoji/cm/PBE;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtVerifyPasswordDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtVerifyPasswordDialog.kt\ncom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1#2:169\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/metamoji/cm/PBE;",
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
    c = "com.metamoji.ui.dialog.NtVerifyPasswordDialog$Companion$checkPassword$2"
    f = "NtVerifyPasswordDialog.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xa3
    }
    m = "invokeSuspend"
    n = {
        "$this$executeAsync",
        "viewModel"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $hashedPwd:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->$hashedPwd:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;
    .locals 0

    .line 163
    new-instance p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;-><init>()V

    return-object p0
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

    new-instance v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->$hashedPwd:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->L$0:Ljava/lang/Object;

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
            "Lcom/metamoji/cm/PBE;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 161
    iget v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 162
    sget-object v4, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;

    move-object v5, v0

    check-cast v5, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    iget-object v8, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->$hashedPwd:Ljava/lang/String;

    const/4 v9, 0x1

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object p1

    .line 163
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->getTaskName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2$$ExternalSyntheticLambda0;-><init>()V

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$checkPassword$2;->label:I

    invoke-virtual {v0, v2, v4, v5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 161
    :goto_0
    check-cast p1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;

    .line 164
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance p1, Lcom/metamoji/cm/PBE;

    invoke-direct {p1, v0}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    return-object v1
.end method
