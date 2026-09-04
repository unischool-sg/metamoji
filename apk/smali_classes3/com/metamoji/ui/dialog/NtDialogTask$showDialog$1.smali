.class public final Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtDialogTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtDialogTask;->showDialog(Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtDialogTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtDialogTask.kt\ncom/metamoji/ui/dialog/NtDialogTask$showDialog$1\n*L\n1#1,80:1\n*E\n"
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
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.ui.dialog.NtDialogTask$showDialog$1"
    f = "NtDialogTask.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x1e,
        0x1f
    }
    m = "invokeSuspend"
    n = {
        "$this$run",
        "$this$run",
        "d"
    }
    s = {
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/metamoji/lib/dialog/UtDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field final synthetic $parentTag:Ljava/lang/String;

.field final synthetic $result:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Boolean;",
            "TP;TD;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/dialog/NtDialogTask;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/NtDialogTask;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/dialog/NtDialogTask;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-TP;-TD;",
            "Lkotlin/Unit;",
            ">;TD;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->this$0:Lcom/metamoji/ui/dialog/NtDialogTask;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$parentTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$result:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance v0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->this$0:Lcom/metamoji/ui/dialog/NtDialogTask;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$parentTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$result:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;-><init>(Lcom/metamoji/ui/dialog/NtDialogTask;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->this$0:Lcom/metamoji/ui/dialog/NtDialogTask;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/NtDialogTask;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$d$1;

    iget-object v5, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-direct {v2, v5}, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$d$1;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->label:I

    invoke-virtual {v0, p1, v2, v5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog;

    .line 31
    move-object v2, v0

    check-cast v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->label:I

    invoke-static {v2, v5}, Lcom/metamoji/lib/dialog/task/UtTaskExtKt;->getActivity(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 29
    :goto_2
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 33
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$1;->INSTANCE:Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lcom/metamoji/lib/utils/UtLibKt;->utTenderAssert(ZLkotlin/jvm/functions/Function0;)V

    .line 34
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 36
    :cond_5
    sget-object v2, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    iget-object v5, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$parentTag:Ljava/lang/String;

    invoke-virtual {v2, p1, v5}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    const-string v2, "P"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/metamoji/lib/dialog/UtDialog;

    if-nez p1, :cond_6

    .line 38
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$2;->INSTANCE:Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lcom/metamoji/lib/utils/UtLibKt;->utTenderAssert(ZLkotlin/jvm/functions/Function0;)V

    .line 39
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 41
    :cond_6
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$result:Lkotlin/jvm/functions/Function3;

    move-object v2, v0

    check-cast v2, Lcom/metamoji/lib/dialog/UtDialogBase;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtDialogBase;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    .line 30
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->this$0:Lcom/metamoji/ui/dialog/NtDialogTask;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtDialogTask;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$d$1;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$d$1;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog;

    .line 31
    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    invoke-static {p1, v2}, Lcom/metamoji/lib/dialog/task/UtTaskExtKt;->getActivity(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez p1, :cond_0

    .line 33
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$1;->INSTANCE:Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lcom/metamoji/lib/utils/UtLibKt;->utTenderAssert(ZLkotlin/jvm/functions/Function0;)V

    return-object v2

    .line 36
    :cond_0
    sget-object v3, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$parentTag:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    const/4 v3, 0x2

    const-string v4, "P"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lcom/metamoji/lib/dialog/UtDialog;

    if-nez p1, :cond_1

    .line 38
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$2;->INSTANCE:Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lcom/metamoji/lib/utils/UtLibKt;->utTenderAssert(ZLkotlin/jvm/functions/Function0;)V

    return-object v2

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1;->$result:Lkotlin/jvm/functions/Function3;

    move-object v2, v0

    check-cast v2, Lcom/metamoji/lib/dialog/UtDialogBase;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtDialogBase;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
