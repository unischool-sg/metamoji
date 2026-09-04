.class public final Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;
.super Ljava/lang/Object;
.source "SelectSchoolDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;",
        "",
        "<init>",
        "()V",
        "openDialog",
        "",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "list",
        "",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    .line 40
    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->companyName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@@ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectSchoolViewModel()Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 46
    :cond_1
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    invoke-direct {v1, p2}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;-><init>(Ljava/util/List;)V

    .line 47
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;

    invoke-direct {v3, p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {p2, v2, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setSelectSchoolViewModel(Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;)V

    .line 49
    new-instance p1, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;-><init>()V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
