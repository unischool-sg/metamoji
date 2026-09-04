.class final Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartupActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/StartupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
    c = "com.metamoji.noteanytime.StartupActivity$onCreate$1"
    f = "StartupActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/noteanytime/StartupActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/StartupActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/noteanytime/StartupActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance v0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;

    iget-object v1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity;

    invoke-direct {v0, v1, p2}, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;-><init>(Lcom/metamoji/noteanytime/StartupActivity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->invoke(Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 111
    iget v1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->label:I

    if-nez v1, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 113
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    iget-object v1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->startLoginActivity(Landroid/app/Activity;ZLandroid/content/Intent;)V

    .line 116
    iget-object p1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/StartupActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 118
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAppLicenseValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->updateSchoolUserLicense(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    .line 126
    sget-boolean p1, Lcom/metamoji/noteanytime/StartupActivity;->onLogin:Z

    if-nez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/StartupActivity;->access$doMigrationV2MyItem(Lcom/metamoji/noteanytime/StartupActivity;)V

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 135
    iget-object p1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity;

    sget v0, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p1, v0}, Lcom/metamoji/noteanytime/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.metamoji.ui.common.UiButtonHeader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 136
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Cancel_J:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 137
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 140
    iget-object p1, p0, Lcom/metamoji/noteanytime/StartupActivity$onCreate$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/StartupActivity;->startMainActivity()V

    .line 145
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 111
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
