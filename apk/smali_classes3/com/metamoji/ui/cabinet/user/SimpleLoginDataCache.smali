.class public final Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;
.super Ljava/lang/Object;
.source "SimpleLoginDataCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$J\u001a\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010\u0015H\u0002J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\u0015H\u0002R\u001c\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R(\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;",
        "",
        "<init>",
        "()V",
        "classList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "",
        "detailMap",
        "",
        "getDetailMap",
        "()Ljava/util/Map;",
        "setDetailMap",
        "(Ljava/util/Map;)V",
        "busy",
        "",
        "getBusy",
        "()Z",
        "setBusy",
        "(Z)V",
        "params",
        "Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;",
        "getParams",
        "()Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;",
        "setParams",
        "(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)V",
        "v",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;",
        "error",
        "getError",
        "()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;",
        "setError",
        "(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V",
        "registerObserver",
        "",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "isEqual",
        "p1",
        "p2",
        "loadInfo",
        "p",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;


# instance fields
.field private busy:Z

.field private final classList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private detailMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private error:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

.field private params:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->Companion:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->classList:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$loadInfo(Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->loadInfo(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z

    move-result p0

    return p0
.end method

.method public static final getDetailMap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->Companion:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;->getDetailMap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final isEqual(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-object p1, p1, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    iget-object p2, p2, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static final load(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->Companion:Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;->load(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z

    move-result p0

    return p0
.end method

.method private final loadInfo(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->params:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->isEqual(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->error:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->params:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->params:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->setError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    .line 89
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->detailMap:Ljava/util/Map;

    .line 90
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->classList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    .line 92
    new-instance v3, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p0, p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)V

    invoke-virtual {v2, v3, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return v1
.end method

.method static final loadInfo$lambda$1(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 95
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->params:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetClassRoomLoginInfoWithParam(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    move-result-object v0

    .line 96
    iget-object v1, p1, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->params:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-direct {p1, p2, v1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->isEqual(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance p2, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0, p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static final loadInfo$lambda$1$lambda$0(Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;)V
    .locals 3

    .line 101
    iget v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->allList:Ljava/util/Map;

    const-string v2, "detailList"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    :cond_0
    iput-object v1, p1, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->detailMap:Ljava/util/Map;

    .line 105
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->classList:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->allList:Ljava/util/Map;

    const-string v0, "nameList"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 107
    :cond_1
    iget v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    const/16 v2, 0x67

    if-ne v0, v2, :cond_2

    .line 108
    new-instance p0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    sget v0, Lcom/metamoji/noteanytime/R$string;->School_SimpleLogin_Msg_Invalid_Organization_Id:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    new-instance v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    check-cast p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Ljava/lang/String;)V

    move-object p0, v0

    .line 107
    :goto_0
    invoke-direct {p1, p0}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->setError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    .line 112
    iget-object p0, p1, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->classList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V
    .locals 2

    .line 54
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->error:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    if-eqz p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimpleLoginDataCache:error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getBusy()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->busy:Z

    return v0
.end method

.method public final getDetailMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->detailMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getError()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->error:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    return-object v0
.end method

.method public final getParams()Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->params:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    return-object v0
.end method

.method public final registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->classList:Landroidx/lifecycle/MutableLiveData;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/ClassListObserver;

    invoke-direct {v2, p1}, Lcom/metamoji/ui/cabinet/user/ClassListObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setBusy(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->busy:Z

    return-void
.end method

.method public final setDetailMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->detailMap:Ljava/util/Map;

    return-void
.end method

.method public final setParams(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->params:Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    return-void
.end method
