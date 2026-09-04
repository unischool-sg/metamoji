.class final Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UiPasswordDialog2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;->checkPasswordAsync(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nUiPasswordDialog2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiPasswordDialog2.kt\ncom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
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
    c = "com.metamoji.ui.dialog.UiPasswordDialog2$Companion$checkPasswordAsync$2"
    f = "UiPasswordDialog2.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x61
    }
    m = "invokeSuspend"
    n = {
        "$this$executeAsync",
        "viewModel",
        "pbe",
        "retry"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $hashedPassword:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

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
            "Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->$hashedPassword:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$1(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/ui/dialog/UiPasswordDialog2;
    .locals 2

    .line 97
    new-instance p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2;-><init>()V

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Password_Input:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->setTitle(Ljava/lang/String;)V

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

    new-instance v0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->$hashedPassword:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->I$0:I

    iget-object v5, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/metamoji/cm/PBE;

    iget-object v6, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    sget-object p1, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->Companion:Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;

    move-object v2, v0

    check-cast v2, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    iget-object v5, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->$hashedPassword:Ljava/lang/String;

    invoke-virtual {p1, v2, v5}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;)Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    move-result-object p1

    move-object v6, p1

    move-object v5, v3

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2$$ExternalSyntheticLambda0;-><init>()V

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->L$2:Ljava/lang/Object;

    const/4 v8, 0x0

    iput v8, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->I$0:I

    iput v4, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion$checkPasswordAsync$2;->label:I

    invoke-virtual {v0, p1, v2, v7}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move v2, v8

    :goto_0
    check-cast p1, Lcom/metamoji/ui/dialog/UiPasswordDialog2;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getOk()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 98
    sget-object p1, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->Companion:Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;

    invoke-static {p1, v6}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;->access$checkPassword(Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;)Lcom/metamoji/cm/PBE;

    move-result-object p1

    if-nez p1, :cond_4

    .line 100
    invoke-virtual {v6}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->getMessage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/metamoji/noteanytime/R$string;->Password_Error_Wrong:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getString(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object v5, p1

    move v2, v4

    goto :goto_1

    :cond_4
    move-object v5, p1

    :cond_5
    :goto_1
    if-nez v2, :cond_2

    .line 105
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    invoke-static {p1, v3, v4, v3}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v5
.end method
