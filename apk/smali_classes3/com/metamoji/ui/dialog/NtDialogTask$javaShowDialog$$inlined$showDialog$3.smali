.class public final Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtDialogTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NtDialogTask;->javaShowDialog(Landroid/view/View;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V
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
    value = "SMAP\nNtDialogTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtDialogTask.kt\ncom/metamoji/ui/dialog/NtDialogTask$showDialog$1\n+ 2 NtDialogTask.kt\ncom/metamoji/ui/dialog/NtDialogTask\n*L\n1#1,80:1\n72#2,7:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
        "com/metamoji/ui/dialog/NtDialogTask$showDialog$1",
        "com/metamoji/ui/dialog/NtDialogTask$showDialog$$inlined$showDialog$1"
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
    c = "com.metamoji.ui.dialog.NtDialogTask$javaShowDialog$$inlined$showDialog$3"
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

.field final synthetic $parentTag:Ljava/lang/String;

.field final synthetic $result$inlined:Lkotlin/jvm/functions/Function3;

.field final synthetic $viewId$inlined:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/dialog/NtDialogTask;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/NtDialogTask;Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/coroutines/Continuation;ILkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->this$0:Lcom/metamoji/ui/dialog/NtDialogTask;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$parentTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    iput p5, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$viewId$inlined:I

    iput-object p6, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$result$inlined:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->this$0:Lcom/metamoji/ui/dialog/NtDialogTask;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$parentTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    iget v5, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$viewId$inlined:I

    iget-object v6, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$result$inlined:Lkotlin/jvm/functions/Function3;

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;-><init>(Lcom/metamoji/ui/dialog/NtDialogTask;Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/coroutines/Continuation;ILkotlin/jvm/functions/Function3;)V

    iput-object p1, v0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->L$1:Ljava/lang/Object;

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
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->this$0:Lcom/metamoji/ui/dialog/NtDialogTask;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/NtDialogTask;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3$1;

    iget-object v5, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$dialog:Lcom/metamoji/lib/dialog/UtDialog;

    invoke-direct {v2, v5}, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3$1;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->label:I

    invoke-virtual {v0, p1, v2, v5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 23
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

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->label:I

    invoke-static {v2, v5}, Lcom/metamoji/lib/dialog/task/UtTaskExtKt;->getActivity(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 23
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

    iget-object v3, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$parentTag:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    instance-of v2, p1, Lcom/metamoji/lib/dialog/UtDialog;

    if-nez v2, :cond_6

    const/4 p1, 0x0

    :cond_6
    if-nez p1, :cond_7

    .line 38
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$2;->INSTANCE:Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$1$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lcom/metamoji/lib/utils/UtLibKt;->utTenderAssert(ZLkotlin/jvm/functions/Function0;)V

    .line 39
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 41
    :cond_7
    move-object p1, v0

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogBase;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogBase;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result p1

    .line 81
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v2

    iget v3, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$viewId$inlined:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_8

    .line 83
    sget-object p1, Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;->INSTANCE:Lcom/metamoji/ui/dialog/NtDialogTask$showDialog$4$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lcom/metamoji/lib/utils/UtLibKt;->utTenderAssert(ZLkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 85
    :cond_8
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtDialogTask$javaShowDialog$$inlined$showDialog$3;->$result$inlined:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1, v2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_3
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
