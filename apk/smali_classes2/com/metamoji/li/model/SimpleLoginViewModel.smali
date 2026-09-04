.class public final Lcom/metamoji/li/model/SimpleLoginViewModel;
.super Ljava/lang/Object;
.source "SimpleLoginViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;,
        Lcom/metamoji/li/model/SimpleLoginViewModel$Companion;,
        Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleLoginViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleLoginViewModel.kt\ncom/metamoji/li/model/SimpleLoginViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CollectionExt.kt\ncom/metamoji/lib/utils/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,202:1\n1#2:203\n13#3:204\n9#3:208\n9#3:215\n13#3:219\n1786#4,3:205\n1786#4,3:209\n1586#4:212\n1661#4,2:213\n1786#4,3:216\n1786#4,3:220\n1663#4:223\n777#4:224\n873#4,2:225\n*S KotlinDebug\n*F\n+ 1 SimpleLoginViewModel.kt\ncom/metamoji/li/model/SimpleLoginViewModel\n*L\n114#1:204\n115#1:208\n117#1:215\n119#1:219\n114#1:205,3\n115#1:209,3\n116#1:212\n116#1:213,2\n117#1:216,3\n119#1:220,3\n116#1:223\n121#1:224\n121#1:225,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 C2\u00020\u0001:\u0003CDEB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u00142\u0008\u00106\u001a\u0004\u0018\u00010\u00142\u0008\u00107\u001a\u0004\u0018\u00010\u0014J\u0008\u00108\u001a\u000204H\u0002J\u001e\u00109\u001a\u0002042\u0014\u0010:\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010;H\u0002J\u0006\u0010@\u001a\u000204J\u0006\u0010A\u001a\u000204J\u0008\u0010B\u001a\u0004\u0018\u00010\"R\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00030\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001f\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u001f\u0010\u0016\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\r0\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019R\u0019\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019R\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0019R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0019R\u0011\u0010$\u001a\u00020%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010(\u001a\u00020%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\'R\u0011\u0010*\u001a\u00020%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\'R$\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020-8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u000e\u0010<\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Lcom/metamoji/li/model/SimpleLoginViewModel;",
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
        "classList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;",
        "getClassList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "currentSelectedClass",
        "getCurrentSelectedClass",
        "currentIdNumber",
        "",
        "getCurrentIdNumber",
        "idNumberList",
        "Landroidx/lifecycle/LiveData;",
        "getIdNumberList",
        "()Landroidx/lifecycle/LiveData;",
        "currentClassName",
        "getCurrentClassName",
        "currentClassGroupId",
        "getCurrentClassGroupId",
        "isEmptyClasses",
        "",
        "isEmptyIdNumbers",
        "previousUserInfo",
        "Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;",
        "isLoginButtonEnabled",
        "loginCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getLoginCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "selectClassCommand",
        "getSelectClassCommand",
        "selectIdNumberCommand",
        "getSelectIdNumberCommand",
        "v",
        "Lcom/metamoji/li/model/LoginParams;",
        "loginParams",
        "getLoginParams",
        "()Lcom/metamoji/li/model/LoginParams;",
        "setLoginParams",
        "(Lcom/metamoji/li/model/LoginParams;)V",
        "setPreviousSimpleUserInfo",
        "",
        "coLoginId",
        "classGroupId",
        "idNumber",
        "applyPreviousSimpleUserInfo",
        "setAllList",
        "allList",
        "",
        "retrievingClassList",
        "tryAgain",
        "cachedCompany",
        "Lcom/metamoji/li/dialog/CompanyInfo;",
        "loadClassList",
        "pushCurrentInfo",
        "popCurrentInfoToPrevInfo",
        "Companion",
        "ClassInfo",
        "PrevInfo",
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
.field public static final Companion:Lcom/metamoji/li/model/SimpleLoginViewModel$Companion;

.field private static final SIMPLE_LOGIN_KEY_DETAILLIST:Ljava/lang/String; = "detailList"

.field private static final SIMPLE_LOGIN_KEY_ID:Ljava/lang/String; = "id"

.field private static final SIMPLE_LOGIN_KEY_IDNUMBERLIST:Ljava/lang/String; = "idNumberList"

.field private static final SIMPLE_LOGIN_KEY_NAMELIST:Ljava/lang/String; = "nameList"

.field private static final SSKEY_CLASS_GROUP_ID:Ljava/lang/String; = "simple.classGroupId"

.field private static final SSKEY_CO_LOGIN_ID:Ljava/lang/String; = "simple.coLoginId"

.field private static final SSKEY_ID_NUMBER:Ljava/lang/String; = "simple.idNumber"


# instance fields
.field private cachedCompany:Lcom/metamoji/li/dialog/CompanyInfo;

.field private final classList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final currentClassGroupId:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currentClassName:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currentIdNumber:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currentSelectedClass:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final idNumberList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final isEmptyClasses:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isEmptyIdNumbers:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private previousUserInfo:Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;

.field private retrievingClassList:Z

.field private final rootModelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/li/model/LoginViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final selectClassCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final selectIdNumberCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private tryAgain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/model/SimpleLoginViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/model/SimpleLoginViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/model/SimpleLoginViewModel;->Companion:Lcom/metamoji/li/model/SimpleLoginViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 11

    const-string v0, "rootModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->rootModelRef:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->classList:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentSelectedClass:Landroidx/lifecycle/MutableLiveData;

    .line 51
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentIdNumber:Landroidx/lifecycle/MutableLiveData;

    .line 53
    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/LiveData;

    new-instance v4, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->idNumberList:Landroidx/lifecycle/LiveData;

    .line 54
    move-object v4, v1

    check-cast v4, Landroidx/lifecycle/LiveData;

    new-instance v5, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v5}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentClassName:Landroidx/lifecycle/LiveData;

    .line 55
    check-cast v1, Landroidx/lifecycle/LiveData;

    new-instance v4, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentClassGroupId:Landroidx/lifecycle/LiveData;

    .line 57
    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->isEmptyClasses:Landroidx/lifecycle/LiveData;

    .line 58
    new-instance v0, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2, v0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->isEmptyIdNumbers:Landroidx/lifecycle/LiveData;

    .line 63
    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/lifecycle/LiveData;

    move-object v8, v3

    check-cast v8, Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroidx/lifecycle/LiveData;

    new-instance v10, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v10}, Lcom/metamoji/li/model/SimpleLoginViewModel$$ExternalSyntheticLambda5;-><init>()V

    invoke-static/range {v5 .. v10}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function5;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->isLoginButtonEnabled:Landroidx/lifecycle/LiveData;

    .line 67
    new-instance p1, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->loginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 68
    new-instance p1, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->selectClassCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 69
    new-instance p1, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->selectIdNumberCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-void
.end method

.method public static final synthetic access$applyPreviousSimpleUserInfo(Lcom/metamoji/li/model/SimpleLoginViewModel;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->applyPreviousSimpleUserInfo()V

    return-void
.end method

.method public static final synthetic access$getTryAgain$p(Lcom/metamoji/li/model/SimpleLoginViewModel;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->tryAgain:Z

    return p0
.end method

.method public static final synthetic access$setAllList(Lcom/metamoji/li/model/SimpleLoginViewModel;Ljava/util/Map;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/metamoji/li/model/SimpleLoginViewModel;->setAllList(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$setCachedCompany$p(Lcom/metamoji/li/model/SimpleLoginViewModel;Lcom/metamoji/li/dialog/CompanyInfo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->cachedCompany:Lcom/metamoji/li/dialog/CompanyInfo;

    return-void
.end method

.method public static final synthetic access$setRetrievingClassList$p(Lcom/metamoji/li/model/SimpleLoginViewModel;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->retrievingClassList:Z

    return-void
.end method

.method public static final synthetic access$setTryAgain$p(Lcom/metamoji/li/model/SimpleLoginViewModel;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->tryAgain:Z

    return-void
.end method

.method private final applyPreviousSimpleUserInfo()V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->previousUserInfo:Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;->getCoLoginId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentSelectedClass:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentIdNumber:Landroidx/lifecycle/MutableLiveData;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 94
    iput-object v2, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->previousUserInfo:Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;

    .line 95
    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->classList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;

    invoke-virtual {v4}, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;->getClassGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;->getClassGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_3
    check-cast v2, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;

    :cond_4
    if-eqz v2, :cond_5

    .line 97
    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentSelectedClass:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v0}, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;->getIdNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 99
    invoke-virtual {v2}, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;->getIdNumberList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentIdNumber:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static final currentClassGroupId$lambda$2(Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;->getClassGroupId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static final currentClassName$lambda$1(Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private final getRootModel()Lcom/metamoji/li/model/LoginViewModel;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->rootModelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/LoginViewModel;

    return-object v0
.end method

.method static final idNumberList$lambda$0(Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;)Ljava/util/List;
    .locals 0

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;->getIdNumberList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static final isEmptyClasses$lambda$3(Ljava/util/List;)Z
    .locals 0

    .line 57
    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static final isEmptyIdNumbers$lambda$4(Ljava/util/List;)Z
    .locals 0

    .line 58
    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static final isLoginButtonEnabled$lambda$5(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    check-cast p4, Ljava/lang/CharSequence;

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final setAllList(Ljava/util/Map;)V
    .locals 10
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

    .line 108
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentSelectedClass:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentIdNumber:Landroidx/lifecycle/MutableLiveData;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->classList:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 114
    :cond_0
    const-string v0, "nameList"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 204
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 205
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 206
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 204
    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_4
    move-object v0, v1

    .line 115
    :cond_5
    :goto_1
    const-string v3, "detailList"

    invoke-static {p1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_6

    check-cast p1, Ljava/util/Map;

    goto :goto_2

    :cond_6
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_c

    .line 208
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 209
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_7

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    .line 210
    :cond_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 208
    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_8

    goto :goto_4

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 209
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    .line 210
    :cond_a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 208
    instance-of v4, v4, Ljava/lang/Object;

    if-nez v4, :cond_b

    :cond_c
    :goto_4
    move-object p1, v1

    .line 116
    :cond_d
    :goto_5
    iget-object v3, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->classList:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_21

    check-cast v0, Ljava/lang/Iterable;

    .line 212
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 214
    check-cast v5, Ljava/lang/String;

    .line 117
    invoke-static {p1, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/Map;

    if-eqz v7, :cond_e

    check-cast v6, Ljava/util/Map;

    goto :goto_7

    :cond_e
    move-object v6, v1

    :goto_7
    if-eqz v6, :cond_14

    .line 215
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 216
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_f

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_8

    .line 217
    :cond_f
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 215
    instance-of v8, v8, Ljava/lang/String;

    if-nez v8, :cond_10

    goto :goto_9

    :cond_11
    :goto_8
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 216
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_12

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_a

    .line 217
    :cond_12
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 215
    instance-of v8, v8, Ljava/lang/Object;

    if-nez v8, :cond_13

    :cond_14
    :goto_9
    move-object v6, v1

    .line 118
    :cond_15
    :goto_a
    const-string v7, "id"

    invoke-static {v6, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_16

    check-cast v7, Ljava/lang/String;

    goto :goto_b

    :cond_16
    move-object v7, v1

    :goto_b
    if-nez v7, :cond_17

    move-object v7, v2

    .line 119
    :cond_17
    const-string v8, "idNumberList"

    invoke-static {v6, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/util/List;

    if-eqz v8, :cond_18

    check-cast v6, Ljava/util/List;

    goto :goto_c

    :cond_18
    move-object v6, v1

    :goto_c
    if-eqz v6, :cond_1c

    .line 219
    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    .line 220
    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_19

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_d

    .line 221
    :cond_19
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 219
    instance-of v9, v9, Ljava/lang/String;

    if-nez v9, :cond_1a

    move-object v6, v1

    :cond_1b
    :goto_d
    if-nez v6, :cond_1d

    .line 119
    :cond_1c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 120
    :cond_1d
    new-instance v8, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;

    invoke-direct {v8, v5, v7, v6}, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 214
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 223
    :cond_1e
    check-cast v4, Ljava/util/List;

    .line 116
    check-cast v4, Ljava/lang/Iterable;

    .line 224
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 225
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;

    .line 121
    invoke-virtual {v4}, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;->getClassGroupId()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1f

    .line 225
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 226
    :cond_20
    check-cast p1, Ljava/util/List;

    goto :goto_f

    :cond_21
    move-object p1, v1

    .line 116
    :goto_f
    invoke-virtual {v3, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->previousUserInfo:Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;

    if-eqz p1, :cond_26

    .line 124
    invoke-virtual {p1}, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;->getCoLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_10

    :cond_22
    move-object v2, v1

    :goto_10
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 125
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->classList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_25

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;

    invoke-virtual {v3}, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;->getClassGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;->getClassGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v1, v2

    :cond_24
    check-cast v1, Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;

    :cond_25
    if-eqz v1, :cond_26

    .line 127
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentSelectedClass:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;->getIdNumber()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->idNumberList:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_26

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 130
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentIdNumber:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_26
    return-void
.end method


# virtual methods
.method public final getClassList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;",
            ">;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->classList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCurrentClassGroupId()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentClassGroupId:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getCurrentClassName()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentClassName:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getCurrentIdNumber()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentIdNumber:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCurrentSelectedClass()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/li/model/SimpleLoginViewModel$ClassInfo;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentSelectedClass:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getIdNumberList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->idNumberList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->loginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getLoginParams()Lcom/metamoji/li/model/LoginParams;
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentClassGroupId:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/li/model/LoginParams;->setClassGroupId(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentIdNumber:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/li/model/LoginParams;->setIdNumber(Ljava/lang/String;)V

    return-object v0

    .line 75
    :cond_0
    sget-object v0, Lcom/metamoji/li/model/LoginParams;->Companion:Lcom/metamoji/li/model/LoginParams$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginParams$Companion;->getEmpty()Lcom/metamoji/li/model/LoginParams;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectClassCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->selectClassCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getSelectIdNumberCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->selectIdNumberCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final isEmptyClasses()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->isEmptyClasses:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isEmptyIdNumbers()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->isEmptyIdNumbers:Landroidx/lifecycle/LiveData;

    return-object v0
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

    .line 63
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->isLoginButtonEnabled:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final loadClassList()V
    .locals 9

    .line 143
    iget-boolean v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->retrievingClassList:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 144
    iput-boolean v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->tryAgain:Z

    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCompanyInfo()Lcom/metamoji/li/dialog/CompanyInfo;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/metamoji/li/dialog/CompanyInfo;->getCoLoginId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->cachedCompany:Lcom/metamoji/li/dialog/CompanyInfo;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 151
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 152
    iput-boolean v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->retrievingClassList:Z

    .line 153
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;

    const/4 v4, 0x0

    invoke-direct {v1, v2, p0, v0, v4}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;-><init>(Lcom/metamoji/li/dialog/CompanyInfo;Lcom/metamoji/li/model/SimpleLoginViewModel;Lcom/metamoji/li/model/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3
    :goto_0
    return-void
.end method

.method public final popCurrentInfoToPrevInfo()Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;
    .locals 5

    .line 189
    invoke-direct {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    const-string v3, "simple.coLoginId"

    invoke-virtual {v2, v3}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    const-string v4, "simple.classGroupId"

    invoke-virtual {v3, v4}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    const-string v4, "simple.idNumber"

    invoke-virtual {v0, v4}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 193
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz v3, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 194
    new-instance v1, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public final pushCurrentInfo()V
    .locals 4

    .line 182
    invoke-direct {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "simple.coLoginId"

    invoke-virtual {v1, v3, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentClassGroupId:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "simple.classGroupId"

    invoke-virtual {v1, v3, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/li/model/SimpleLoginViewModel;->currentIdNumber:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "simple.idNumber"

    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setLoginParams(Lcom/metamoji/li/model/LoginParams;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/li/model/NormalLoginViewModel;->setLoginParams(Lcom/metamoji/li/model/LoginParams;)V

    :cond_0
    return-void
.end method

.method public final setPreviousSimpleUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->popCurrentInfoToPrevInfo()Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 82
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 81
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel;->previousUserInfo:Lcom/metamoji/li/model/SimpleLoginViewModel$PrevInfo;

    return-void
.end method
