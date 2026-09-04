.class public final Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
.super Ljava/lang/Object;
.source "SmallLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;,
        Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;,
        Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;,
        Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmallLoginDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmallLoginDriver.kt\ncom/metamoji/ui/cabinet/user/SmallLoginDriver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,579:1\n1#2:580\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 C2\u00020\u0001:\u0004CDEFBU\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J!\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0002\u0010\u001dJ\'\u0010\u001e\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u000e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0 H\u0002\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\u00152\u0006\u0010#\u001a\u00020&J\u0010\u0010\'\u001a\u00020\u00152\u0008\u0010(\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001e\u001a\u00020\u00152\u0008\u0010)\u001a\u0004\u0018\u00010*J\u0006\u0010+\u001a\u00020\u0015J\u000e\u0010<\u001a\u00020\u00152\u0006\u0010=\u001a\u00020>R\"\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u001d\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*020-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00100R(\u00106\u001a\u0004\u0018\u0001052\u0008\u00104\u001a\u0004\u0018\u000105@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u000e\u0010;\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010?\u001a\u00020@\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010B\u00a8\u0006G"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;",
        "",
        "simple",
        "",
        "password",
        "",
        "qwd",
        "corpId",
        "coLoginId",
        "coLoginIdName",
        "coLoginIdUrl",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "value",
        "getCoLoginId",
        "()Ljava/lang/String;",
        "mRootServerUrl",
        "mPassword",
        "mQwd",
        "mSimpleLoginMode",
        "updateUserInfo",
        "",
        "response",
        "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
        "onLoginSucceeded",
        "onLoginFailed",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        "errorMsg",
        "",
        "(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/Integer;)V",
        "login",
        "loginAction",
        "Lkotlin/Function0;",
        "(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V",
        "normalLogin",
        "param",
        "Lcom/metamoji/cs/dc/params/CsLoginParam;",
        "simpleLogin",
        "Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;",
        "tryGoogleLogin",
        "googleId",
        "loginInfo",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
        "cancel",
        "status",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
        "getStatus",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loginInfoList",
        "",
        "getLoginInfoList",
        "v",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;",
        "error",
        "getError",
        "()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;",
        "setError",
        "(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V",
        "waitingForSchoolSelection",
        "registerObserver",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "dlInfo",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;",
        "getDlInfo",
        "()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;",
        "Companion",
        "CabinetUserUpdater",
        "Status",
        "DLInfo",
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


# static fields
.field public static final Companion:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;


# instance fields
.field private coLoginId:Ljava/lang/String;

.field private final dlInfo:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

.field private error:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

.field private final loginInfoList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mQwd:Ljava/lang/String;

.field private mRootServerUrl:Ljava/lang/String;

.field private final mSimpleLoginMode:Z

.field private final status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForSchoolSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->Companion:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mPassword:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mQwd:Ljava/lang/String;

    .line 72
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mSimpleLoginMode:Z

    if-eqz p4, :cond_2

    .line 76
    invoke-static {p5, p6}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->createDisplayCoLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p4, p1, p2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iput-object p5, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->coLoginId:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p1

    .line 79
    move-object p2, p7

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 80
    iput-object p7, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mRootServerUrl:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, p7}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 83
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mRootServerUrl:Ljava/lang/String;

    .line 84
    invoke-virtual {p1, p2}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 89
    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p5, ""

    aput-object p5, p1, p3

    aput-object p5, p1, p2

    .line 90
    invoke-static {p4, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getRootServerUrlAndCoLoginId(Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    aget-object p3, p1, p3

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mRootServerUrl:Ljava/lang/String;

    .line 92
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->coLoginId:Ljava/lang/String;

    .line 427
    :cond_2
    :goto_0
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sget-object p2, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->status:Landroidx/lifecycle/MutableLiveData;

    .line 428
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->loginInfoList:Landroidx/lifecycle/MutableLiveData;

    .line 516
    new-instance p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->dlInfo:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x8

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_2

    move-object p6, v0

    :cond_2
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_3

    move-object p8, v0

    goto :goto_0

    :cond_3
    move-object p8, p7

    :goto_0
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 65
    invoke-direct/range {p1 .. p8}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getMSimpleLoginMode$p(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mSimpleLoginMode:Z

    return p0
.end method

.method public static final synthetic access$setError(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->setError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    return-void
.end method

.method public static final create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->Companion:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->Companion:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->Companion:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->Companion:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->Companion:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->get(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p0

    return-object p0
.end method

.method public static final isBusy(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->Companion:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->isBusy(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z

    move-result p0

    return p0
.end method

.method private final login(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
            ">;)V"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 339
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method static final login$lambda$2(Lkotlin/jvm/functions/Function0;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Ljava/lang/Integer;)V
    .locals 2

    .line 341
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 342
    instance-of v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    if-nez v1, :cond_0

    .line 343
    invoke-direct {p1, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->onLoginSucceeded(Lcom/metamoji/cs/dc/response/CsLoginResponse;)V

    return-void

    .line 345
    :cond_0
    const-string v0, "SmallLoginDriver.login: Failed."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 346
    invoke-direct {p1, p0, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->onLoginFailed(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/Integer;)V

    return-void
.end method

.method static final login$lambda$7(Lcom/metamoji/cs/dc/user/CsLoginInfo;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    .line 402
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeLoginWithLoginInfo(Lcom/metamoji/cs/dc/user/CsLoginInfo;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object p0
.end method

.method static final normalLogin$lambda$3(Lcom/metamoji/cs/dc/params/CsLoginParam;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    .line 354
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeLoginWithParam(Lcom/metamoji/cs/dc/params/CsLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object p0
.end method

.method private final onLoginFailed(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/Integer;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 325
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "?"

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorMessage:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "-"

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmallLoginDriver.onLoginFailed.  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static final onLoginFailed$lambda$1(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/Integer;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 328
    iget v1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x67

    if-eq v2, v3, :cond_4

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_3

    goto :goto_3

    .line 331
    :cond_3
    :goto_2
    new-instance p2, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    invoke-direct {p2, p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    goto :goto_5

    .line 330
    :cond_4
    :goto_3
    new-instance p1, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_5
    sget p2, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Wrong_Login_Parameter:I

    :goto_4
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    move-object p2, p1

    .line 328
    :goto_5
    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->setError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    .line 333
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->status:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->FAILED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final onLoginSucceeded(Lcom/metamoji/cs/dc/response/CsLoginResponse;)V
    .locals 9

    .line 280
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->updateUserInfo(Lcom/metamoji/cs/dc/response/CsLoginResponse;)V

    .line 285
    new-instance p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;-><init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    .line 299
    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->SUCCEEDED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/metamoji/nt/NtStartup;->getInstance()Lcom/metamoji/nt/NtStartup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance$default(Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/metamoji/nt/dl/NtDownloadProgressListener;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->dlInfo:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

    check-cast v2, Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;

    invoke-direct {v1, v2}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;-><init>(Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;)V

    check-cast v1, Lcom/metamoji/nt/dl/INtDownloadProgressListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->setListener(Lcom/metamoji/nt/dl/INtDownloadProgressListener;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->download()Z

    .line 312
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 317
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->endProcess()V

    return-void

    .line 280
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "call in sub-thread"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method static final onLoginSucceeded$lambda$0(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->status:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V
    .locals 2

    .line 431
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->error:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    if-eqz p1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmallLoginDriver:error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static final simpleLogin$lambda$4(Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    .line 361
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeClassRoomLoginWithParam(Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object p0
.end method

.method static final tryGoogleLogin$lambda$6(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V
    .locals 4

    .line 369
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetLoginInfoWithGoogleId(Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    move-result-object v0

    .line 371
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    if-eqz v1, :cond_0

    .line 372
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmallLoginDriver.tryGoogleLogin: Failed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 373
    check-cast v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_GOOGLE_ID_NOT_ASSOCIATED:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->onLoginFailed(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/Integer;)V

    return-void

    .line 375
    :cond_0
    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmallLoginDriver.tryGoogleLogin: Failed (empty list)..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/16 p0, 0x64

    .line 377
    iput p0, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    .line 378
    check-cast v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 p0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->onLoginFailed(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/Integer;)V

    return-void

    .line 380
    :cond_1
    iget-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 381
    iget-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    .line 382
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->login(Lcom/metamoji/cs/dc/user/CsLoginInfo;)V

    return-void

    .line 386
    :cond_2
    iput-boolean v1, p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->waitingForSchoolSelection:Z

    .line 387
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static final tryGoogleLogin$lambda$6$lambda$5(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;)V
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->loginInfoList:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateUserInfo(Lcom/metamoji/cs/dc/response/CsLoginResponse;)V
    .locals 8

    .line 234
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 237
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->coLoginId:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->coLoginId:Ljava/lang/String;

    :cond_0
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mRootServerUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    .line 239
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 240
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->loginName:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 241
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->restHost:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 242
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyName:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 245
    iget v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 246
    iget v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    iput v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    goto :goto_0

    .line 248
    :cond_1
    iput v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    .line 250
    :goto_0
    iget-boolean v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isOnPremise:Z

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 251
    iget-boolean v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isClassRoom:Z

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 252
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->email:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 253
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mPassword:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mQwd:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->qwd:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    .line 256
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 257
    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 258
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->mPassword:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 259
    iget-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 260
    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 261
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintCheckURL:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 262
    iget-wide v4, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    if-nez v2, :cond_3

    .line 265
    iput v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    goto :goto_2

    .line 263
    :cond_3
    iget-wide v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    double-to-int p1, v2

    iput p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    .line 269
    :goto_2
    iget p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    .line 270
    iput v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    .line 272
    :cond_4
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 412
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->waitingForSchoolSelection:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->setError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    .line 417
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->status:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->FAILED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->waitingForSchoolSelection:Z

    return-void
.end method

.method public final getCoLoginId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->coLoginId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDlInfo()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->dlInfo:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

    return-object v0
.end method

.method public final getError()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->error:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    return-object v0
.end method

.method public final getLoginInfoList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;>;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->loginInfoList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->status:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final login(Lcom/metamoji/cs/dc/user/CsLoginInfo;)V
    .locals 4

    .line 397
    const-string v0, "null"

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->coLoginId:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->userId:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmallLoginDriver.loginToSchool(coid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->waitingForSchoolSelection:Z

    .line 400
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_GOOGLE_ID_LOGIN_ERROR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/cs/dc/user/CsLoginInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->login(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final normalLogin(Lcom/metamoji/cs/dc/params/CsLoginParam;)V
    .locals 4

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v0, p1, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    iget-object v1, p1, Lcom/metamoji/cs/dc/params/CsLoginParam;->userId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmallLoginDriver.normalLogin(coid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/cs/dc/params/CsLoginParam;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->login(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->loginInfoList:Landroidx/lifecycle/MutableLiveData;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/LoginInfoListObserver;

    invoke-direct {v2, p1}, Lcom/metamoji/ui/cabinet/user/LoginInfoListObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 440
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->status:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/LoginStatusObserver;

    invoke-direct {v2, p1}, Lcom/metamoji/ui/cabinet/user/LoginStatusObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 441
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->dlInfo:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/cabinet/user/DownloadOnLoginObserver;

    invoke-direct {v2, p1}, Lcom/metamoji/ui/cabinet/user/DownloadOnLoginObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final simpleLogin(Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;)V
    .locals 5

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v0, p1, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->coLoginId:Ljava/lang/String;

    iget-object v1, p1, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->classGroupId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->idNumber:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SmallLoginDriver.simpleLogin(coid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",gid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 360
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_SimpleLogin_Msg_Wrong_Login_Parameter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;)V

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->login(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final tryGoogleLogin(Ljava/lang/String;)V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmallLoginDriver.tryGoogleLogin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method
