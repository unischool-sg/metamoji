.class final Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AddOrganizationDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.metamoji.li.dialog.AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1"
    f = "AddOrganizationDialog.kt"
    i = {
        0x0
    }
    l = {
        0xa2
    }
    m = "invokeSuspend"
    n = {
        "$this$run"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $rm:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;",
            "Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->$rm:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    iput-object p2, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->this$0:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

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

    new-instance v0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;

    iget-object v1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->$rm:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    iget-object v2, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->this$0:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;-><init>(Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 161
    iget v2, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->label:I

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

    .line 162
    move-object v4, v0

    check-cast v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iget-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->$rm:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->label:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/metamoji/lib/dialog/task/UtTaskExtKt;->showConfirmMessageBox$default(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 163
    :cond_2
    :goto_0
    sget-object p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->Companion:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;

    iget-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->$rm:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->getNextAction()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;->doAction(Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 164
    iget-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$checkOrganization$1$1;->this$0:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getActivityRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_3

    .line 165
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->cancelAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 168
    :cond_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
