.class final Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SupportLogDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SupportLogDialog;->onPositive()V
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
    c = "com.metamoji.ui.dialog.SupportLogDialog$onPositive$1"
    f = "SupportLogDialog.kt"
    i = {
        0x1,
        0x1
    }
    l = {
        0x61,
        0x69
    }
    m = "invokeSuspend"
    n = {
        "id",
        "dt"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SupportLogDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/dialog/SupportLogDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

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

    new-instance p1, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 95
    iget v1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

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

    .line 96
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/SupportLogDialog;->getRightButton()Landroid/widget/Button;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    sget-object p1, Lcom/metamoji/nt/NtSupportLog;->Companion:Lcom/metamoji/nt/NtSupportLog$Companion;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/SupportLogDialog;->access$get_model(Lcom/metamoji/ui/dialog/SupportLogDialog;)Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;->getLogFile()Ljava/io/File;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    invoke-static {v4}, Lcom/metamoji/ui/dialog/SupportLogDialog;->access$get_model(Lcom/metamoji/ui/dialog/SupportLogDialog;)Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->label:I

    invoke-virtual {p1, v1, v4, v5}, Lcom/metamoji/nt/NtSupportLog$Companion;->registerErrorReport(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/time/ZonedDateTime;

    .line 98
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/SupportLogDialog;->getRightButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v5, :cond_6

    if-nez v6, :cond_4

    goto :goto_3

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    sget-object v1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/dialog/SupportLogDialog;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    .line 105
    sget-object v4, Lcom/metamoji/ui/dialog/SupportLogResultDialog;->Companion:Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->label:I

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;->show$default(Lcom/metamoji/ui/dialog/SupportLogResultDialog$Companion;Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    .line 106
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 100
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;->this$0:Lcom/metamoji/ui/dialog/SupportLogDialog;

    sget v0, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_REPORT_FAILED:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
