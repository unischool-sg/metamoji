.class final Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtVerifyPasswordDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;->inputAndVerifyPassword(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
        "verifiedPassword",
        ""
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
    c = "com.metamoji.ui.dialog.NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1"
    f = "NtVerifyPasswordDialog.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x92
    }
    m = "invokeSuspend"
    n = {
        "$this$internalInputAndVerifyPassword",
        "verifiedPassword"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $callerTag:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->$callerTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->$callerTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p3}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 145
    iget v3, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    move-object p1, v0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->label:I

    invoke-static {p1, v3}, Lcom/metamoji/lib/dialog/task/UtTaskExtKt;->getActivity(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    .line 145
    :cond_2
    :goto_0
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-nez p1, :cond_3

    .line 148
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "no activity"

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 149
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 151
    :cond_3
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->$callerTag:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    if-nez p1, :cond_4

    .line 153
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "no caller dialog"

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 154
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion$inputAndVerifyPassword$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
