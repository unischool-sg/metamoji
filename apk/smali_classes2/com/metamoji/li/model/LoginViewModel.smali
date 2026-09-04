.class public final Lcom/metamoji/li/model/LoginViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LoginViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/model/LoginViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u0089\u00012\u00020\u0001:\u0002\u0089\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\n\u0010r\u001a\u0004\u0018\u00010RH\u0002J\u0006\u0010s\u001a\u00020tJ\u0006\u0010u\u001a\u00020tJ\u000e\u0010v\u001a\u00020t2\u0006\u0010w\u001a\u00020+J\u0006\u0010x\u001a\u00020tJ\u0019\u0010}\u001a\u00020t2\u0006\u0010~\u001a\u00020\u007f2\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020$J\u000f\u0010\u0081\u0001\u001a\u00020t2\u0006\u0010~\u001a\u00020\u007fJ\u0013\u0010\u0082\u0001\u001a\u00020t2\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001J\u0011\u0010\u0085\u0001\u001a\u00020t2\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u0001J\t\u0010\u0088\u0001\u001a\u00020tH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\u0018\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0011\u0010\u001a\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u001c\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013R\u0011\u0010\u001e\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0013R\u0011\u0010 \u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0013R\u001f\u0010\"\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010$0$0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010&R\u001f\u0010\'\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010$0$0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010&R\u001f\u0010)\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010$0$0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010&R\u001f\u0010*\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010+0+0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010&R\u001f\u0010-\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010$0$0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010&R\u001f\u0010.\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010+0+0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010&R\u001f\u00100\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010$0$0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010&R\u001f\u00101\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u000102020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010&R\u001f\u00104\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010$0$0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010&R\u0011\u00106\u001a\u00020+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u001a\u00109\u001a\u00020+X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u00108\"\u0004\u0008;\u0010<R\u0017\u0010=\u001a\u0008\u0012\u0004\u0012\u00020$0>\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@R\u0017\u0010A\u001a\u0008\u0012\u0004\u0012\u00020+0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010&R\u0017\u0010C\u001a\u0008\u0012\u0004\u0012\u00020+0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010&R\u0017\u0010E\u001a\u0008\u0012\u0004\u0012\u00020+0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010&R\u0017\u0010G\u001a\u0008\u0012\u0004\u0012\u00020+0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010&R\u0017\u0010I\u001a\u0008\u0012\u0004\u0012\u00020+0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010&R\u0017\u0010K\u001a\u0008\u0012\u0004\u0012\u00020+0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010&R\u0017\u0010M\u001a\u0008\u0012\u0004\u0012\u00020+0>\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010@R\u000e\u0010O\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u000202X\u0082.\u00a2\u0006\u0002\n\u0000R\"\u0010S\u001a\u0004\u0018\u00010R2\u0008\u0010Q\u001a\u0004\u0018\u00010R@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010UR\u000e\u0010V\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020$X\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010X\u001a\u00020Y8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010]\u001a\u0004\u0008Z\u0010[R\u001b\u0010^\u001a\u00020_8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010]\u001a\u0004\u0008`\u0010aR\u001b\u0010c\u001a\u00020d8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010]\u001a\u0004\u0008e\u0010fR\u001b\u0010h\u001a\u00020i8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008l\u0010]\u001a\u0004\u0008j\u0010kR\u001b\u0010m\u001a\u00020n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008q\u0010]\u001a\u0004\u0008o\u0010pR\u0011\u0010y\u001a\u00020z8F\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010|\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Lcom/metamoji/li/model/LoginViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "savedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;)V",
        "getSavedStateHandle",
        "()Landroidx/lifecycle/SavedStateHandle;",
        "dialogHostManager",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "getDialogHostManager",
        "()Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "activitySource",
        "Lcom/metamoji/lib/utils/ActivitySource;",
        "getActivitySource",
        "()Lcom/metamoji/lib/utils/ActivitySource;",
        "normalLoginCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getNormalLoginCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "qrCodeLoginCommand",
        "getQrCodeLoginCommand",
        "simpleLoginCommand",
        "getSimpleLoginCommand",
        "msLoginCommand",
        "getMsLoginCommand",
        "googleLoginCommand",
        "getGoogleLoginCommand",
        "backCommand",
        "getBackCommand",
        "rootServerCommand",
        "getRootServerCommand",
        "selectCompanyCommand",
        "getSelectCompanyCommand",
        "isCoLoginIdMutable",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "()Landroidx/lifecycle/MutableLiveData;",
        "completed",
        "getCompleted",
        "isBusy",
        "progressMessage",
        "",
        "getProgressMessage",
        "isNextCommandAvailable",
        "nextCommandLabel",
        "getNextCommandLabel",
        "isQRCodeReaderAvailable",
        "currentPanelIndex",
        "Lcom/metamoji/li/LoginPanelIndex;",
        "getCurrentPanelIndex",
        "fullScreenFragmentActivated",
        "getFullScreenFragmentActivated",
        "version",
        "getVersion",
        "()Ljava/lang/String;",
        "defaultProgressMessage",
        "getDefaultProgressMessage",
        "setDefaultProgressMessage",
        "(Ljava/lang/String;)V",
        "showProgressMessage",
        "Landroidx/lifecycle/LiveData;",
        "getShowProgressMessage",
        "()Landroidx/lifecycle/LiveData;",
        "coLoginId",
        "getCoLoginId",
        "coName",
        "getCoName",
        "loginName",
        "getLoginName",
        "password",
        "getPassword",
        "qwd",
        "getQwd",
        "rootServer",
        "getRootServer",
        "coLoginIdFormattedString",
        "getCoLoginIdFormattedString",
        "prepared",
        "initialPanel",
        "value",
        "Lcom/metamoji/cs/dc/user/CsDCUserInfo;",
        "oldLoginUser",
        "getOldLoginUser",
        "()Lcom/metamoji/cs/dc/user/CsDCUserInfo;",
        "hasQwd",
        "isForDebug",
        "simpleModel",
        "Lcom/metamoji/li/model/SimpleLoginViewModel;",
        "getSimpleModel",
        "()Lcom/metamoji/li/model/SimpleLoginViewModel;",
        "simpleModel$delegate",
        "Lkotlin/Lazy;",
        "normalModel",
        "Lcom/metamoji/li/model/NormalLoginViewModel;",
        "getNormalModel",
        "()Lcom/metamoji/li/model/NormalLoginViewModel;",
        "normalModel$delegate",
        "qrCodeModel",
        "Lcom/metamoji/li/model/QRCodeViewModel;",
        "getQrCodeModel",
        "()Lcom/metamoji/li/model/QRCodeViewModel;",
        "qrCodeModel$delegate",
        "ssoViewModel",
        "Lcom/metamoji/li/model/SSOViewModel;",
        "getSsoViewModel",
        "()Lcom/metamoji/li/model/SSOViewModel;",
        "ssoViewModel$delegate",
        "downloadModel",
        "Lcom/metamoji/li/model/DownloadViewModel;",
        "getDownloadModel",
        "()Lcom/metamoji/li/model/DownloadViewModel;",
        "downloadModel$delegate",
        "getLastLoginUser",
        "prepare",
        "",
        "hideProgressMessage",
        "setProgressMessage",
        "message",
        "resetProgressMessage",
        "companyInfo",
        "Lcom/metamoji/li/dialog/CompanyInfo;",
        "getCompanyInfo",
        "()Lcom/metamoji/li/dialog/CompanyInfo;",
        "selectCompany",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "ensure",
        "ensureCompany",
        "showErrorMessage",
        "error",
        "Lcom/metamoji/li/driver/LoginError;",
        "executeLogin",
        "driver",
        "Lcom/metamoji/li/driver/LoginDriver;",
        "onCleared",
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
.field public static final Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;


# instance fields
.field private final activitySource:Lcom/metamoji/lib/utils/ActivitySource;

.field private final backCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final coLoginId:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final coLoginIdFormattedString:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final coName:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final completed:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final currentPanelIndex:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/li/LoginPanelIndex;",
            ">;"
        }
    .end annotation
.end field

.field public defaultProgressMessage:Ljava/lang/String;

.field private final dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

.field private final downloadModel$delegate:Lkotlin/Lazy;

.field private final fullScreenFragmentActivated:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final googleLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private hasQwd:Z

.field private initialPanel:Lcom/metamoji/li/LoginPanelIndex;

.field private final isBusy:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isCoLoginIdMutable:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isForDebug:Z

.field private final isNextCommandAvailable:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isQRCodeReaderAvailable:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final loginName:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final msLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final nextCommandLabel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final normalLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final normalModel$delegate:Lkotlin/Lazy;

.field private oldLoginUser:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

.field private final password:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field private final progressMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final qrCodeLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final qrCodeModel$delegate:Lkotlin/Lazy;

.field private final qwd:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rootServer:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rootServerCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

.field private final selectCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final showProgressMessage:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final simpleLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final simpleModel$delegate:Lkotlin/Lazy;

.field private final ssoViewModel$delegate:Lkotlin/Lazy;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/model/LoginViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/model/LoginViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 5

    const-string v0, "savedStateHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    .line 57
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogHostManager;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtDialogHostManager;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    .line 58
    new-instance v0, Lcom/metamoji/lib/utils/ActivitySource;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/ActivitySource;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->activitySource:Lcom/metamoji/lib/utils/ActivitySource;

    .line 60
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->normalLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 61
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->qrCodeLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 62
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->simpleLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 63
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->msLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 64
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->googleLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 65
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->backCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 66
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->rootServerCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 67
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->selectCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 72
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isCoLoginIdMutable:Landroidx/lifecycle/MutableLiveData;

    .line 78
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->completed:Landroidx/lifecycle/MutableLiveData;

    .line 79
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    .line 80
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/metamoji/li/model/LoginViewModel;->progressMessage:Landroidx/lifecycle/MutableLiveData;

    .line 81
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/metamoji/li/model/LoginViewModel;->isNextCommandAvailable:Landroidx/lifecycle/MutableLiveData;

    .line 82
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/metamoji/li/model/LoginViewModel;->nextCommandLabel:Landroidx/lifecycle/MutableLiveData;

    .line 83
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/metamoji/li/model/LoginViewModel;->isQRCodeReaderAvailable:Landroidx/lifecycle/MutableLiveData;

    .line 84
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/metamoji/li/LoginPanelIndex;->ROOT:Lcom/metamoji/li/LoginPanelIndex;

    invoke-direct {v3, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/metamoji/li/model/LoginViewModel;->currentPanelIndex:Landroidx/lifecycle/MutableLiveData;

    .line 85
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/metamoji/li/model/LoginViewModel;->fullScreenFragmentActivated:Landroidx/lifecycle/MutableLiveData;

    .line 86
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getProductVersion(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/li/model/LoginViewModel;->version:Ljava/lang/String;

    .line 89
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LiveData;

    check-cast v2, Landroidx/lifecycle/LiveData;

    new-instance v3, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/li/model/LoginViewModel;->showProgressMessage:Landroidx/lifecycle/LiveData;

    .line 112
    const-string v1, "coLoginId"

    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/li/model/LoginViewModel;->coLoginId:Landroidx/lifecycle/MutableLiveData;

    .line 113
    const-string v2, "coName"

    invoke-virtual {p1, v2}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/li/model/LoginViewModel;->coName:Landroidx/lifecycle/MutableLiveData;

    .line 114
    const-string v3, "loginName"

    invoke-virtual {p1, v3}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/li/model/LoginViewModel;->loginName:Landroidx/lifecycle/MutableLiveData;

    .line 115
    const-string v3, "password"

    invoke-virtual {p1, v3}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/li/model/LoginViewModel;->password:Landroidx/lifecycle/MutableLiveData;

    .line 116
    const-string v3, "qwd"

    invoke-virtual {p1, v3}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/li/model/LoginViewModel;->qwd:Landroidx/lifecycle/MutableLiveData;

    .line 117
    const-string v3, "rootServer"

    invoke-virtual {p1, v3}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->rootServer:Landroidx/lifecycle/MutableLiveData;

    .line 118
    check-cast v1, Landroidx/lifecycle/LiveData;

    check-cast v2, Landroidx/lifecycle/LiveData;

    new-instance p1, Lcom/metamoji/li/model/LoginViewModel$coLoginIdFormattedString$1;

    sget-object v3, Lcom/metamoji/li/LoginUtils;->INSTANCE:Lcom/metamoji/li/LoginUtils;

    invoke-direct {p1, v3}, Lcom/metamoji/li/model/LoginViewModel$coLoginIdFormattedString$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, p1}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->coLoginIdFormattedString:Landroidx/lifecycle/LiveData;

    .line 129
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    iput-boolean p1, p0, Lcom/metamoji/li/model/LoginViewModel;->isForDebug:Z

    .line 135
    new-instance p1, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->simpleModel$delegate:Lkotlin/Lazy;

    .line 136
    new-instance p1, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->normalModel$delegate:Lkotlin/Lazy;

    .line 137
    new-instance p1, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->qrCodeModel$delegate:Lkotlin/Lazy;

    .line 138
    new-instance p1, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->ssoViewModel$delegate:Lkotlin/Lazy;

    .line 139
    new-instance p1, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/metamoji/li/model/LoginViewModel$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->downloadModel$delegate:Lkotlin/Lazy;

    .line 159
    sget-object p1, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel$Companion;->isExternalTaskBusy()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static final downloadModel_delegate$lambda$5(Lcom/metamoji/li/model/LoginViewModel;)Lcom/metamoji/li/model/DownloadViewModel;
    .locals 1

    .line 139
    new-instance v0, Lcom/metamoji/li/model/DownloadViewModel;

    invoke-direct {v0, p0}, Lcom/metamoji/li/model/DownloadViewModel;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    return-object v0
.end method

.method private final getLastLoginUser()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 6

    .line 144
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 145
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/metamoji/li/model/LoginViewModel;->coLoginId:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    :cond_1
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ""

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/metamoji/li/model/LoginViewModel;->coLoginId:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    const-string v4, "coLoginId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "US"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toUpperCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lcom/metamoji/li/model/LoginViewModel;->coName:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    move-object v3, v2

    :cond_4
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/metamoji/li/model/LoginViewModel;->rootServer:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 152
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/metamoji/li/model/LoginViewModel;->loginName:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    if-eqz v3, :cond_7

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, v3

    :cond_7
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 154
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->classGroupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->idNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/li/model/SimpleLoginViewModel;->setPreviousSimpleUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/model/LoginViewModel;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/li/model/LoginViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p0

    return-object p0
.end method

.method static final normalModel_delegate$lambda$2(Lcom/metamoji/li/model/LoginViewModel;)Lcom/metamoji/li/model/NormalLoginViewModel;
    .locals 1

    .line 136
    new-instance v0, Lcom/metamoji/li/model/NormalLoginViewModel;

    invoke-direct {v0, p0}, Lcom/metamoji/li/model/NormalLoginViewModel;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    return-object v0
.end method

.method static final qrCodeModel_delegate$lambda$3()Lcom/metamoji/li/model/QRCodeViewModel;
    .locals 1

    .line 137
    new-instance v0, Lcom/metamoji/li/model/QRCodeViewModel;

    invoke-direct {v0}, Lcom/metamoji/li/model/QRCodeViewModel;-><init>()V

    return-object v0
.end method

.method public static synthetic selectCompany$default(Lcom/metamoji/li/model/LoginViewModel;Landroidx/fragment/app/FragmentActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 204
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/LoginViewModel;->selectCompany(Landroidx/fragment/app/FragmentActivity;Z)V

    return-void
.end method

.method static final showProgressMessage$lambda$0(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final simpleModel_delegate$lambda$1(Lcom/metamoji/li/model/LoginViewModel;)Lcom/metamoji/li/model/SimpleLoginViewModel;
    .locals 1

    .line 135
    new-instance v0, Lcom/metamoji/li/model/SimpleLoginViewModel;

    invoke-direct {v0, p0}, Lcom/metamoji/li/model/SimpleLoginViewModel;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    return-object v0
.end method

.method static final ssoViewModel_delegate$lambda$4(Lcom/metamoji/li/model/LoginViewModel;)Lcom/metamoji/li/model/SSOViewModel;
    .locals 1

    .line 138
    new-instance v0, Lcom/metamoji/li/model/SSOViewModel;

    invoke-direct {v0, p0}, Lcom/metamoji/li/model/SSOViewModel;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    return-object v0
.end method


# virtual methods
.method public final ensureCompany(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->coLoginId:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/li/model/LoginViewModel;->selectCompany(Landroidx/fragment/app/FragmentActivity;Z)V

    return-void
.end method

.method public final executeLogin(Lcom/metamoji/li/driver/LoginDriver;)V
    .locals 3

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 272
    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->fire$default(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final getActivitySource()Lcom/metamoji/lib/utils/ActivitySource;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->activitySource:Lcom/metamoji/lib/utils/ActivitySource;

    return-object v0
.end method

.method public final getBackCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->backCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getCoLoginId()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->coLoginId:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCoLoginIdFormattedString()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->coLoginIdFormattedString:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getCoName()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->coName:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCompanyInfo()Lcom/metamoji/li/dialog/CompanyInfo;
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->coLoginId:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "http://"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_1
    sget-object v1, Lcom/metamoji/li/LoginUtils;->INSTANCE:Lcom/metamoji/li/LoginUtils;

    invoke-virtual {v1, v0}, Lcom/metamoji/li/LoginUtils;->getRootServerUrlAndCoLoginIdFromUrl(Ljava/lang/String;)Lcom/metamoji/li/dialog/CompanyInfo;

    move-result-object v0

    return-object v0

    .line 201
    :cond_2
    :goto_0
    new-instance v1, Lcom/metamoji/li/dialog/CompanyInfo;

    iget-object v2, p0, Lcom/metamoji/li/model/LoginViewModel;->rootServer:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/metamoji/li/dialog/CompanyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getCompleted()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->completed:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCurrentPanelIndex()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/li/LoginPanelIndex;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->currentPanelIndex:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDefaultProgressMessage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->defaultProgressMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "defaultProgressMessage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDialogHostManager()Lcom/metamoji/lib/dialog/UtDialogHostManager;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    return-object v0
.end method

.method public final getDownloadModel()Lcom/metamoji/li/model/DownloadViewModel;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->downloadModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/DownloadViewModel;

    return-object v0
.end method

.method public final getFullScreenFragmentActivated()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->fullScreenFragmentActivated:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getGoogleLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->googleLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getLoginName()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->loginName:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getMsLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->msLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getNextCommandLabel()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->nextCommandLabel:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getNormalLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->normalLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->normalModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/NormalLoginViewModel;

    return-object v0
.end method

.method public final getOldLoginUser()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->oldLoginUser:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-object v0
.end method

.method public final getPassword()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->password:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getProgressMessage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->progressMessage:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getQrCodeLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->qrCodeLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getQrCodeModel()Lcom/metamoji/li/model/QRCodeViewModel;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->qrCodeModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/QRCodeViewModel;

    return-object v0
.end method

.method public final getQwd()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->qwd:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRootServer()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->rootServer:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRootServerCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->rootServerCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    return-object v0
.end method

.method public final getSelectCompanyCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->selectCompanyCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getShowProgressMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->showProgressMessage:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSimpleLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->simpleLoginCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getSimpleModel()Lcom/metamoji/li/model/SimpleLoginViewModel;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->simpleModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/SimpleLoginViewModel;

    return-object v0
.end method

.method public final getSsoViewModel()Lcom/metamoji/li/model/SSOViewModel;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->ssoViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/SSOViewModel;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final hideProgressMessage()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->progressMessage:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final isBusy()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isCoLoginIdMutable()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isCoLoginIdMutable:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isNextCommandAvailable()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isNextCommandAvailable:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isQRCodeReaderAvailable()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isQRCodeReaderAvailable:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 3

    .line 277
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 278
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method

.method public final prepare()V
    .locals 2

    .line 163
    iget-boolean v0, p0, Lcom/metamoji/li/model/LoginViewModel;->prepared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/metamoji/li/model/LoginViewModel;->prepared:Z

    .line 167
    invoke-direct {p0}, Lcom/metamoji/li/model/LoginViewModel;->getLastLoginUser()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 168
    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->oldLoginUser:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->isCoLoginIdMutable:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 178
    :cond_2
    :goto_0
    sget-object v0, Lcom/metamoji/li/LoginPanelIndex;->ROOT:Lcom/metamoji/li/LoginPanelIndex;

    iput-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->initialPanel:Lcom/metamoji/li/LoginPanelIndex;

    return-void
.end method

.method public final resetProgressMessage()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->progressMessage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/metamoji/li/model/LoginViewModel;->getDefaultProgressMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectCompany(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 6

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    new-instance p2, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/metamoji/li/model/LoginViewModel$selectCompany$1;-><init>(Lcom/metamoji/li/model/LoginViewModel;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, "login.selectCompany"

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->run$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setDefaultProgressMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/metamoji/li/model/LoginViewModel;->defaultProgressMessage:Ljava/lang/String;

    return-void
.end method

.method public final setProgressMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/metamoji/li/model/LoginViewModel;->progressMessage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final showErrorMessage(Lcom/metamoji/li/driver/LoginError;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p1}, Lcom/metamoji/li/driver/LoginError;->resolveMessage()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    new-instance v1, Lcom/metamoji/li/model/LoginViewModel$showErrorMessage$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/metamoji/li/model/LoginViewModel$showErrorMessage$1;-><init>(Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, "login.showErrorMessage"

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->run$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method
