.class public final Lcom/metamoji/li/model/NormalLoginViewModel;
.super Ljava/lang/Object;
.source "NormalLoginViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00030\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R$\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00148F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/li/model/NormalLoginViewModel;",
        "",
        "rootModel",
        "Lcom/metamoji/li/model/LoginViewModel;",
        "<init>",
        "(Lcom/metamoji/li/model/LoginViewModel;)V",
        "rootModelRef",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "getRootModel",
        "()Lcom/metamoji/li/model/LoginViewModel;",
        "isLoginButtonEnabled",
        "Landroidx/lifecycle/LiveData;",
        "",
        "()Landroidx/lifecycle/LiveData;",
        "loginCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getLoginCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "v",
        "Lcom/metamoji/li/model/LoginParams;",
        "loginParams",
        "getLoginParams",
        "()Lcom/metamoji/li/model/LoginParams;",
        "setLoginParams",
        "(Lcom/metamoji/li/model/LoginParams;)V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final isLoginButtonEnabled:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final loginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final rootModelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/li/model/LoginViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 4

    const-string v0, "rootModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/NormalLoginViewModel;->rootModelRef:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getLoginName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    new-instance v3, Lcom/metamoji/li/model/NormalLoginViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/metamoji/li/model/NormalLoginViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function4;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/NormalLoginViewModel;->isLoginButtonEnabled:Landroidx/lifecycle/LiveData;

    .line 13
    new-instance p1, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/model/NormalLoginViewModel;->loginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-void
.end method

.method private final getRootModel()Lcom/metamoji/li/model/LoginViewModel;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/li/model/NormalLoginViewModel;->rootModelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/LoginViewModel;

    return-object v0
.end method

.method static final isLoginButtonEnabled$lambda$0(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/metamoji/li/model/NormalLoginViewModel;->loginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getLoginParams()Lcom/metamoji/li/model/LoginParams;
    .locals 12

    .line 17
    invoke-direct {p0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCompanyInfo()Lcom/metamoji/li/dialog/CompanyInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    new-instance v2, Lcom/metamoji/li/model/LoginParams;

    .line 19
    invoke-direct {p0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/li/model/LoginViewModel;->getOldLoginUser()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/CompanyInfo;->getRootServer()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/CompanyInfo;->getCoLoginId()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, v1

    .line 22
    :goto_3
    invoke-direct {p0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCoName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_4

    :cond_4
    move-object v6, v1

    .line 23
    :goto_4
    invoke-direct {p0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getLoginName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_5

    :cond_5
    move-object v7, v1

    .line 24
    :goto_5
    invoke-direct {p0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_6

    :cond_6
    move-object v8, v1

    .line 25
    :goto_6
    invoke-direct {p0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getQwd()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_7
    move-object v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 18
    invoke-direct/range {v2 .. v11}, Lcom/metamoji/li/model/LoginParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final isLoginButtonEnabled()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/metamoji/li/model/NormalLoginViewModel;->isLoginButtonEnabled:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setLoginParams(Lcom/metamoji/li/model/LoginParams;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getRootServer()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getRootServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getCoLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCoName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getCoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getLoginName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getLoginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getQwd()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginParams;->getQwd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
