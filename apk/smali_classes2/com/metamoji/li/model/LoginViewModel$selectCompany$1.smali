.class final Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/model/LoginViewModel;->selectCompany(Landroidx/fragment/app/FragmentActivity;Z)V
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
    c = "com.metamoji.li.model.LoginViewModel$selectCompany$1"
    f = "LoginViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xcf
    }
    m = "invokeSuspend"
    n = {
        "$this$run",
        "noCompany"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/li/model/LoginViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/li/model/LoginViewModel;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/model/LoginViewModel;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->this$0:Lcom/metamoji/li/model/LoginViewModel;

    iput-object p2, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/metamoji/li/model/LoginViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/IUtDialog;
    .locals 0

    .line 208
    sget-object p3, Lcom/metamoji/li/dialog/OrganizationItem;->Companion:Lcom/metamoji/li/dialog/OrganizationItem$Companion;

    invoke-virtual {p3}, Lcom/metamoji/li/dialog/OrganizationItem$Companion;->loadFromUserDefaults()Ljava/util/List;

    move-result-object p3

    .line 209
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/li/model/LoginViewModel;->getCompanyInfo()Lcom/metamoji/li/dialog/CompanyInfo;

    move-result-object p0

    .line 211
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/CompanyInfo;->getRootServer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    .line 212
    sget-object p1, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->Companion:Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/CompanyInfo;->getCoLoginId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/CompanyInfo;->getRootServer()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 214
    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 215
    sget-object p0, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->Companion:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$Companion;

    invoke-virtual {p0, p2}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->reset()V

    .line 216
    new-instance p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;

    invoke-direct {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;-><init>()V

    :goto_0
    check-cast p0, Lcom/metamoji/lib/dialog/IUtDialog;

    return-object p0
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

    new-instance v0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;

    iget-object v1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->this$0:Lcom/metamoji/li/model/LoginViewModel;

    iget-object v2, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1, v2, p2}, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;-><init>(Lcom/metamoji/li/model/LoginViewModel;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 205
    iget v2, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 206
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 207
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->getTaskName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->this$0:Lcom/metamoji/li/model/LoginViewModel;

    iget-object v5, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    new-instance v6, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, p1, v5}, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/model/LoginViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/fragment/app/FragmentActivity;)V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->label:I

    invoke-virtual {v0, v2, v6, v4}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 205
    :goto_0
    check-cast p1, Lcom/metamoji/lib/dialog/IUtDialog;

    .line 219
    move-object v1, p1

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialogBase;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogBase;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getOk()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 221
    instance-of v0, p1, Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->getResult()Lcom/metamoji/li/dialog/OrganizationItem;

    move-result-object v2

    goto :goto_1

    .line 222
    :cond_3
    instance-of v0, p1, Lcom/metamoji/li/dialog/AddOrganizationDialog;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/metamoji/li/dialog/AddOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->getResult()Lcom/metamoji/li/dialog/OrganizationItem;

    move-result-object v2

    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    .line 226
    iget-object p1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->this$0:Lcom/metamoji/li/model/LoginViewModel;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getRootServer()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {v2}, Lcom/metamoji/li/dialog/OrganizationItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->this$0:Lcom/metamoji/li/model/LoginViewModel;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getCoName()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {v2}, Lcom/metamoji/li/dialog/OrganizationItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 228
    iget-object p1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->this$0:Lcom/metamoji/li/model/LoginViewModel;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {v2}, Lcom/metamoji/li/dialog/OrganizationItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 232
    :cond_5
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_6

    .line 234
    iget-object p1, p0, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;->this$0:Lcom/metamoji/li/model/LoginViewModel;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getBackCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/utils/binding/impl/Command;->onClick(Landroid/view/View;)V

    .line 237
    :cond_6
    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
