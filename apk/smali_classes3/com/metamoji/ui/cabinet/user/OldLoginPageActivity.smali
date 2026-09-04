.class public Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/os/Handler$Callback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;
.implements Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;,
        Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DUMMY_QWD_STRING:Ljava/lang/String; = "********"

.field public static final KEY_CO_LOGIN_ID:Ljava/lang/String; = "coLoginId"

.field public static final KEY_CO_LOGIN_ID_NAME:Ljava/lang/String; = "coLoginIdName"

.field public static final KEY_CO_LOGIN_ID_URL:Ljava/lang/String; = "coLoginIdUrl"

.field public static final KEY_SCHOOL_BLOCKING:Ljava/lang/String; = "schoolBlocking"

.field public static final KEY_SCHOOL_CLASS_GROUP_ID:Ljava/lang/String; = "schoolClassGroupId"

.field public static final KEY_SCHOOL_CLASS_NAME:Ljava/lang/String; = "schoolClassName"

.field public static final KEY_SCHOOL_EXPAND_OTHERS:Ljava/lang/String; = "schoolExpandOthers"

.field public static final KEY_SCHOOL_ID_NUMBER:Ljava/lang/String; = "schoolIdNumber"

.field public static final KEY_SCHOOL_SIMPLE_MODE:Ljava/lang/String; = "schoolSimpleMode"

.field public static final Key_isNeedStartup:Ljava/lang/String; = "isNeedStartup"

.field private static final QRCODE_KEY_COID:Ljava/lang/String; = "cid"

.field private static final QRCODE_KEY_PASSWORD:Ljava/lang/String; = "pwd"

.field private static final QRCODE_KEY_QWD:Ljava/lang/String; = "qwd"

.field private static final QRCODE_KEY_ROOTSERVER:Ljava/lang/String; = "rootServer"

.field private static final QRCODE_KEY_USERID:Ljava/lang/String; = "uid"

.field private static final SEPARATOR_KEY:Ljava/lang/String; = "$"

.field private static final SEPARATOR_PARAM:Ljava/lang/String; = ","

.field public static final SIMPLE_LOGIN_KEY_DETAILLIST:Ljava/lang/String; = "detailList"

.field public static final SIMPLE_LOGIN_KEY_ID:Ljava/lang/String; = "id"

.field public static final SIMPLE_LOGIN_KEY_IDNUMBERLIST:Ljava/lang/String; = "idNumberList"

.field public static final SIMPLE_LOGIN_KEY_NAMELIST:Ljava/lang/String; = "nameList"

.field private static s_currentCameraDeviceIndex:I = -0x1

.field static s_isAlreadyCheckedPermission:Z = false

.field private static s_regexValue:Ljava/util/regex/Pattern;


# instance fields
.field private final REQUEST_CHOOSE_ACCOUNT:I

.field _param:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;

.field _this:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

.field private mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

.field private m_btnChangeServer:Landroid/widget/Button;

.field private m_btnLogin:Lcom/metamoji/ui/common/UiButton;

.field private m_btnSetting:Landroid/widget/ImageButton;

.field m_callback:Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;

.field private m_cameraSwitchingBtn:Landroid/widget/ImageView;

.field m_classGroupId:Ljava/lang/String;

.field m_className:Ljava/lang/String;

.field private m_coLoginId:Ljava/lang/String;

.field private m_coLoginIdName:Ljava/lang/String;

.field private m_coLoginIdUrl:Ljava/lang/String;

.field m_expandOtherPanel:Z

.field m_idNumber:Ljava/lang/String;

.field private m_isNeedStartup:Z

.field private m_lblClassName:Lcom/metamoji/ui/common/UiTextView;

.field private m_lblIdNumber:Lcom/metamoji/ui/common/UiTextView;

.field private m_lblSwitchLoginMode:Lcom/metamoji/ui/common/UiButton;

.field private m_qrCodeCamera:Landroid/hardware/Camera;

.field private m_qrCodeCapturing:Z

.field private m_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

.field private m_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

.field private m_qrCodeErrorLabel:Landroid/view/View;

.field private m_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

.field private m_qrCodeFocusTimer:Ljava/util/Timer;

.field private m_qrCodeHandler:Landroid/os/Handler;

.field private m_qrCodeHasSurface:Ljava/lang/Boolean;

.field private m_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

.field private m_qrCodePreviewBase:Landroid/view/View;

.field private m_qrCodePreviewGuard:Landroid/view/View;

.field private m_qrCodePreviewResized:Ljava/lang/Boolean;

.field private m_qrCodeReader:Landroid/view/View;

.field private m_qrCodeSurfaceView:Landroid/view/SurfaceView;

.field private m_qwd:Ljava/lang/String;

.field m_simpleLoginMode:Z

.field private m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

.field private m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

.field private m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

.field private m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

.field private m_txtPassword:Lcom/metamoji/ui/common/UiEditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_btnChangeServer(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnChangeServer:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_btnLogin(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnLogin:Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_cameraSwitchingBtn(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_cameraSwitchingBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_qrCodeCamera(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_qrCodeErrorLabel(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeErrorLabel:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_qrCodeHideErrorLabelTimer(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_qrCodePreviewBase(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_qrCodePreviewGuard(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewGuard:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_qrCodeReader(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeReader:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_txtCoLoginId(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiEditText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_txtLoginName(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiEditText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_txtPassword(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiEditText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputm_qrCodeHideErrorLabelTimer(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclassNameComboBox_SelectionChanged(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->classNameComboBox_SelectionChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearQwd(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->clearQwd(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLoginButtonTap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->handleLoginButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSettingButtonTap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->handleSettingButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideKeyboard(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->hideKeyboard()V

    return-void
.end method

.method static bridge synthetic -$$Nest$midNumberComboBox_selectionChanged(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->idNumberComboBox_selectionChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLoginButtonEnable(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setLoginButtonEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchLoginMode(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->switchLoginMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogoutWithMessageFinal(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->logoutWithMessageFinal(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 2043
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_regexValue:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_expandOtherPanel:Z

    .line 182
    new-instance v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;

    invoke-direct {v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_param:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;

    const/4 v1, 0x0

    .line 192
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    .line 193
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCapturing:Z

    .line 195
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    .line 196
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 489
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->REQUEST_CHOOSE_ACCOUNT:I

    .line 1091
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;)V
    .locals 3

    .line 256
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_expandOtherPanel:Z

    .line 182
    new-instance v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;

    invoke-direct {v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_param:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;

    const/4 v2, 0x0

    .line 192
    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    .line 193
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCapturing:Z

    .line 195
    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    .line 196
    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 489
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->REQUEST_CHOOSE_ACCOUNT:I

    .line 1091
    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    .line 257
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_callback:Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;

    .line 258
    iput-object p1, v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;->callback:Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;

    return-void
.end method

.method public static WipeLocalCache()V
    .locals 0

    .line 429
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->WipeLocalCache()V

    return-void
.end method

.method private blockEnd(Z)V
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1111
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->abort()V

    goto :goto_0

    .line 1113
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->release()V

    :goto_0
    const/4 p1, 0x0

    .line 1115
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    return-void
.end method

.method private blockStart()V
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    if-eqz v0, :cond_0

    return-void

    .line 1101
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->hideKeyboard()V

    .line 1102
    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity-IA;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    .line 1103
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->block()V

    return-void
.end method

.method private classNameComboBox_SelectionChanged(I)V
    .locals 2

    .line 2375
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2378
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 2379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2383
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2385
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2388
    :goto_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->getDetailMap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onClassSelected(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 2391
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setLoginButtonEnable()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static clearLoginResultFromUserInfo()V
    .locals 3

    .line 1330
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 1332
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 1333
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 1334
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 1335
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 1336
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 1337
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 1338
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1339
    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 1340
    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 1341
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    return-void
.end method

.method private clearQwd(Z)V
    .locals 2

    .line 2414
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qwd:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2415
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setTextFieldValue(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 2418
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 2419
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 2420
    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    .line 2421
    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 2422
    invoke-virtual {p1, v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 2425
    :cond_0
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qwd:Ljava/lang/String;

    return-void
.end method

.method private closeCamera()V
    .locals 2

    .line 1804
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1805
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 1806
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 1809
    const-string v1, "[QRCode] closeCamera Failed."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static createDisplayCoLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final decodeYUV420SP([I[BII)V
    .locals 12

    mul-int v0, p2, p3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_9

    shr-int/lit8 v4, v2, 0x1

    mul-int/2addr v4, p2

    add-int/2addr v4, v0

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v5, p2, :cond_8

    .line 1779
    aget-byte v8, p1, v3

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v8, v8, -0x10

    if-gez v8, :cond_0

    move v8, v1

    :cond_0
    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 1782
    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v7, v7, -0x80

    add-int/lit8 v4, v4, 0x2

    .line 1783
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x80

    :cond_1
    mul-int/lit16 v8, v8, 0x4a8

    mul-int/lit16 v9, v7, 0x662

    add-int/2addr v9, v8

    mul-int/lit16 v10, v7, 0x341

    sub-int v10, v8, v10

    mul-int/lit16 v11, v6, 0x190

    sub-int/2addr v10, v11

    mul-int/lit16 v11, v6, 0x812

    add-int/2addr v8, v11

    const v11, 0x3ffff

    if-gez v9, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    if-le v9, v11, :cond_3

    move v9, v11

    :cond_3
    :goto_2
    if-gez v10, :cond_4

    move v10, v1

    goto :goto_3

    :cond_4
    if-le v10, v11, :cond_5

    move v10, v11

    :cond_5
    :goto_3
    if-gez v8, :cond_6

    move v8, v1

    goto :goto_4

    :cond_6
    if-le v8, v11, :cond_7

    move v8, v11

    :cond_7
    :goto_4
    shl-int/lit8 v9, v9, 0x6

    const/high16 v11, 0xff0000

    and-int/2addr v9, v11

    const/high16 v11, -0x1000000

    or-int/2addr v9, v11

    shr-int/lit8 v10, v10, 0x2

    const v11, 0xff00

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    shr-int/lit8 v8, v8, 0xa

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v9

    .line 1795
    aput v8, p0, v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method private getCoLoginIdName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1392
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 1394
    const-string v1, "OrganizationIdList"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1399
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1402
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1405
    const-string v2, "id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "url"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1408
    const-string p1, "name"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p1

    .line 1412
    :try_start_2
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-object v1

    :catch_1
    move-exception p1

    .line 1422
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public static getRootServerUrlAndCoLoginId(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 1519
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1549
    aput-object v0, p1, v2

    .line 1550
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    goto :goto_2

    .line 1523
    :cond_1
    :goto_0
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1526
    array-length v0, p0

    if-lez v0, :cond_2

    .line 1528
    aget-object v0, p0, v2

    aput-object v0, p1, v2

    .line 1530
    :cond_2
    array-length v0, p0

    if-le v0, v1, :cond_4

    .line 1532
    aget-object p0, p0, v1

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1534
    array-length v0, p0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    .line 1536
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1537
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 1539
    aget-object v5, v4, v2

    .line 1540
    const-string v6, "cid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1541
    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1554
    :cond_4
    :goto_2
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p0

    .line 1555
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    return-void
.end method

.method private handleLoginButtonTap()V
    .locals 1

    const/4 v0, 0x0

    .line 1004
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->handleLoginButtonTap(Z)V

    return-void
.end method

.method private handleLoginButtonTap(Z)V
    .locals 1

    .line 1203
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->isBusy(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1207
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    if-nez v0, :cond_1

    .line 1208
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->loginNormal(Z)V

    return-void

    .line 1210
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->loginSimple()V

    return-void
.end method

.method private handleSettingButtonTap()V
    .locals 5

    .line 1217
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockStart()V

    .line 1218
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->hideGuruGuru()V

    .line 1220
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->loadFromUserDefaults()Ljava/util/List;

    move-result-object v0

    .line 1221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    .line 1226
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    .line 1228
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->createDisplayCoLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x2

    .line 1230
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 1231
    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getRootServerUrlAndCoLoginId(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1232
    aget-object v0, v1, v4

    .line 1233
    aget-object v2, v1, v2

    move-object v1, v0

    .line 1235
    :cond_0
    invoke-static {p0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialogEx;->openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1238
    :cond_1
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    .line 957
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 958
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 960
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private idNumberComboBox_selectionChanged(I)V
    .locals 0

    .line 2400
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2404
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    .line 2407
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setLoginButtonEnable()V

    return-void
.end method

.method public static isAlreadyLoggedIn()Z
    .locals 2

    .line 263
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isBlocking()Z
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loginNormal(Z)V
    .locals 8

    .line 1124
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qwd:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    .line 1125
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1128
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockStart()V

    .line 1129
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qwd:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p1

    .line 1131
    new-instance v1, Lcom/metamoji/cs/dc/params/CsLoginParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsLoginParam;-><init>()V

    .line 1132
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->getCoLoginId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    .line 1133
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->loginName:Ljava/lang/String;

    .line 1134
    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->password:Ljava/lang/String;

    .line 1135
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qwd:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1136
    iput-object v3, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->qwd:Ljava/lang/String;

    goto :goto_1

    .line 1138
    :cond_1
    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->password:Ljava/lang/String;

    .line 1140
    :goto_1
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->normalLogin(Lcom/metamoji/cs/dc/params/CsLoginParam;)V

    return-void
.end method

.method private loginSimple()V
    .locals 9

    .line 1151
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1152
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1155
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockStart()V

    .line 1156
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    iget-object v8, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object v0

    .line 1159
    new-instance v2, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;-><init>()V

    .line 1160
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->getCoLoginId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->coLoginId:Ljava/lang/String;

    .line 1161
    iget-object v4, v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_classGroupId:Ljava/lang/String;

    iput-object v4, v2, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->classGroupId:Ljava/lang/String;

    .line 1162
    iget-object v4, v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    iput-object v4, v2, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->idNumber:Ljava/lang/String;

    .line 1163
    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->password:Ljava/lang/String;

    .line 1165
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->simpleLogin(Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;)V

    return-void
.end method

.method private loginWithGoogleId(Ljava/lang/String;)V
    .locals 1

    .line 1031
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockStart()V

    const/4 v0, 0x0

    .line 1032
    invoke-static {p0, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object v0

    .line 1033
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->tryGoogleLogin(Ljava/lang/String;)V

    return-void
.end method

.method public static logoutWithClearPasscode(Ljava/lang/Boolean;)V
    .locals 2

    .line 360
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;-><init>(Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static logoutWithMessage(Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    .line 302
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 303
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-static {p0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 307
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Error_Sync_Stop:I

    invoke-static {p0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 313
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->stopSync()V

    .line 316
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoSync(Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->toDoSyncDrive(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 338
    :cond_2
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->logoutWithMessageFinal(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 317
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 318
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_Will_Lost_Change_For_Logout:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 322
    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_Alert_Logout:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$1;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 328
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Alert_Sync:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$2;

    invoke-direct {v4}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$2;-><init>()V

    invoke-virtual {v3, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 334
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private static logoutWithMessageFinal(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 345
    sget p0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Logout:I

    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$3;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$3;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private onClassSelected(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2300
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    .line 2301
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    .line 2302
    invoke-static {p2, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2305
    const-string p2, "idNumberList"

    invoke-static {p1, p2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 2306
    const-string p2, "id"

    invoke-static {p1, p2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_classGroupId:Ljava/lang/String;

    :cond_0
    const p1, 0x1090008

    if-eqz v0, :cond_2

    .line 2309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 2311
    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-direct {p2, p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p1, 0x1090009

    .line 2312
    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2313
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/metamoji/lib/commonui/SpinnerEx;->setEnabled(Z)V

    .line 2314
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/commonui/SpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-eqz p3, :cond_1

    .line 2315
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2316
    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 2318
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    .line 2319
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->setSelection(I)V

    :cond_1
    return-void

    .line 2324
    :cond_2
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_this:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p3, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2325
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/metamoji/lib/commonui/SpinnerEx;->setEnabled(Z)V

    .line 2326
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/commonui/SpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private onError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1180
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return-void

    .line 1183
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;->getResponse()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_1
    return-void
.end method

.method private openCamera(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1745
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1746
    sget v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_currentCameraDeviceIndex:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 1753
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setCameraDisplayOrientation()V

    .line 1756
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1757
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 1758
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V

    .line 1761
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewResized:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1762
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewResized:Ljava/lang/Boolean;

    .line 1763
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->resizeQrCodePreview()V

    .line 1767
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->setCameraResolution(Landroid/graphics/Point;)V

    .line 1770
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->isQRCodeForbidden(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1771
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->startQRCodeCapture()V

    :cond_3
    return-void
.end method

.method private parseParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2147
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    .line 2148
    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p1

    .line 2149
    array-length v1, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 2151
    sget-object v5, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_regexValue:Ljava/util/regex/Pattern;

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v5

    .line 2152
    array-length v7, v5

    if-ge v7, v6, :cond_0

    .line 2154
    const-string v4, "SKIP : no value..."

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 2158
    :cond_0
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2159
    aget-object v5, v5, v2

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private setLoginButtonEnable()V
    .locals 4

    .line 969
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 971
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {v0}, Lcom/metamoji/lib/commonui/SpinnerEx;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 977
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {v3}, Lcom/metamoji/lib/commonui/SpinnerEx;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 978
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 981
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnLogin:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method private setOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    .line 1354
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    .line 1355
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    .line 1357
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->createDisplayCoLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextIfChanged(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2473
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2474
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2475
    :goto_0
    invoke-static {v0, p2}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2476
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static showLoginPage()V
    .locals 6

    .line 437
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 438
    const-string v2, "isNeedStartup"

    const-class v3, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    if-eqz v0, :cond_0

    .line 440
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 441
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 442
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 455
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    invoke-virtual {v0, v4}, Landroidx/core/app/ComponentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 467
    invoke-virtual {v0, v4}, Landroidx/core/app/ComponentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static showLoginPageIfNeed()Z
    .locals 2

    .line 276
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->showLoginPage()V

    const/4 v0, 0x1

    return v0
.end method

.method public static showLoginPageWithoutLogout()V
    .locals 1

    .line 290
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->stopSync()V

    .line 293
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->showLoginPage()V

    return-void
.end method

.method private switchLoginMode(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2167
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->switchLoginMode(ZZ)V

    return-void
.end method

.method private switchLoginMode(ZZ)V
    .locals 6

    .line 2174
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2179
    new-instance p1, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;-><init>()V

    .line 2180
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p2

    .line 2181
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2184
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->createDisplayCoLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2185
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    iput-object v1, p1, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    .line 2186
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2187
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    goto :goto_0

    .line 2189
    :cond_0
    invoke-virtual {p2, v3}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    goto :goto_0

    .line 2194
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v2, 0x2

    .line 2195
    new-array v2, v2, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v0

    aput-object v5, v2, v4

    .line 2196
    invoke-static {v1, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getRootServerUrlAndCoLoginId(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2197
    aget-object v1, v2, v0

    invoke-virtual {p2, v1}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    .line 2198
    aget-object p2, v2, v4

    iput-object p2, p1, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    .line 2201
    :goto_0
    iget-object p2, p1, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 2209
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->stopQRCodeCapture()V

    .line 2211
    invoke-direct {p0, v4}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->updateControls(Z)V

    .line 2213
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setLoginButtonEnable()V

    .line 2216
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->load(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2218
    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    .line 2219
    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    :cond_3
    return-void

    .line 2203
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$string;->School_SimpleLogin_Msg_Empty_Organization_Id:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    .line 2204
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    return-void

    :cond_5
    if-eqz p2, :cond_6

    .line 2224
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->isQRCodeForbidden(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 2225
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->startQRCodeCapture()V

    .line 2228
    :cond_7
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->updateControls(Z)V

    .line 2230
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setLoginButtonEnable()V

    return-void
.end method

.method private updateControls(Z)V
    .locals 5

    .line 2337
    sget v0, Lcom/metamoji/noteanytime/R$id;->login_page_label_co_login_id:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2339
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2341
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiEditText;->setVisibility(I)V

    .line 2343
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnSetting:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2345
    sget v0, Lcom/metamoji/noteanytime/R$id;->login_page_label_login_name:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    .line 2347
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2349
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

    if-eqz p1, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiEditText;->setVisibility(I)V

    .line 2352
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_lblClassName:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    move v3, v2

    goto :goto_5

    :cond_7
    move v3, v1

    .line 2353
    :goto_5
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 2355
    :cond_8
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    if-eqz p1, :cond_9

    move v3, v2

    goto :goto_6

    :cond_9
    move v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Lcom/metamoji/lib/commonui/SpinnerEx;->setVisibility(I)V

    .line 2357
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_lblIdNumber:Lcom/metamoji/ui/common/UiTextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    move v3, v2

    goto :goto_7

    :cond_a
    move v3, v1

    .line 2358
    :goto_7
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 2360
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    if-eqz p1, :cond_c

    move v3, v2

    goto :goto_8

    :cond_c
    move v3, v1

    :goto_8
    invoke-virtual {v0, v3}, Lcom/metamoji/lib/commonui/SpinnerEx;->setVisibility(I)V

    if-eqz p1, :cond_d

    .line 2363
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_SimpleLogin_Go_Normal_Login:I

    goto :goto_9

    :cond_d
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_SimpleLogin_Go_Simple_Login:I

    .line 2364
    :goto_9
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_lblSwitchLoginMode:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 2367
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeReader:Landroid/view/View;

    if-eqz p1, :cond_e

    goto :goto_a

    :cond_e
    move v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static updateOrganizationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1440
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1444
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 1446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 1447
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v1

    .line 1449
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->createJSONStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1452
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 1454
    const-string v1, "OrganizationIdList"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1460
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1463
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1466
    const-string v5, "id"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "url"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1469
    invoke-interface {v2, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1472
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v5

    .line 1481
    :try_start_2
    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1486
    :cond_4
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    return-void

    :catch_1
    move-exception p0

    .line 1494
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void

    .line 1500
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method changeCameraDevice()V
    .locals 6

    .line 1818
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_cameraSwitchingBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1822
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->stopQRCodeCapture()V

    .line 1824
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_cameraSwitchingBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1826
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1827
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 1829
    new-instance v1, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;-><init>(FFFF)V

    .line 1830
    new-instance v3, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;-><init>(FFFF)V

    .line 1831
    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;

    invoke-direct {v0, p0, v3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1850
    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1870
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public downloadStateChanged(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V
    .locals 5

    .line 2485
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->get(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2489
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->getDlInfo()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

    move-result-object v0

    .line 2491
    sget-object v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    const/16 v2, 0xc0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->END:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 2504
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2505
    sget p1, Lcom/metamoji/noteanytime/R$id;->downloadPanel:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2506
    sget p1, Lcom/metamoji/noteanytime/R$id;->blockView:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2509
    sget p1, Lcom/metamoji/noteanytime/R$id;->downloadMessage:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2510
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2511
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setTextIfChanged(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2514
    sget p1, Lcom/metamoji/noteanytime/R$id;->downloadProgress:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->getPercent()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2516
    sget p1, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 2517
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->getCancelListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2518
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->getCancellable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    return-void

    .line 2494
    :cond_3
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2495
    sget p1, Lcom/metamoji/noteanytime/R$id;->downloadPanel:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2496
    sget p1, Lcom/metamoji/noteanytime/R$id;->blockView:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2498
    sget p1, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v0, 0x0

    .line 2499
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2500
    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    return-void
.end method

.method finalizeQRCodeCapture()V
    .locals 1

    const/4 v0, 0x1

    .line 1705
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->finalizeQRCodeCapture(Z)V

    return-void
.end method

.method finalizeQRCodeCapture(Z)V
    .locals 4

    .line 1709
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->stopQRCodeCapture()V

    .line 1712
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->closeCamera()V

    const/4 v0, 0x0

    .line 1714
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHandler:Landroid/os/Handler;

    .line 1715
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    if-eqz v1, :cond_0

    .line 1717
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1718
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1720
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1723
    :catch_0
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHasSurface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1727
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1732
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$19;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$19;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public getQRCodeHandler()Landroid/os/Handler;
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 879
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1603
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCapturing:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_3

    .line 1623
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 1610
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCapturing:Z

    if-eqz v0, :cond_3

    .line 1612
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->stopQRCodeCapture()V

    .line 1614
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QRCode] decoded ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->parseQRCode(Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->finalizeQRCodeCapture()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method initializeQRCodeCapture(Z)V
    .locals 2

    .line 1655
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->selectUseCamera(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1657
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->finalizeQRCodeCapture()V

    return-void

    .line 1663
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$18;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$18;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1676
    new-instance p1, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    .line 1677
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 1678
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHandler:Landroid/os/Handler;

    .line 1680
    new-instance p1, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderViewResultPointCallback;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderViewResultPointCallback;-><init>(Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;)V

    invoke-direct {p1, p0, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;-><init>(Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;Lcom/google/zxing/ResultPointCallback;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    .line 1681
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->start()V

    .line 1683
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 1684
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHasSurface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 1686
    :try_start_1
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->openCamera(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1688
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1691
    :cond_2
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x3

    .line 1692
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1695
    const-string v0, "[QRCode] initializeQRCodeCapture Failed."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1697
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->finalizeQRCodeCapture()V

    :goto_0
    return-void
.end method

.method public isQRCodeCapturing()Z
    .locals 1

    .line 1595
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCapturing:Z

    return v0
.end method

.method public loginWithGoogleLoginInfo(Lcom/metamoji/cs/dc/user/CsLoginInfo;)V
    .locals 3

    .line 1014
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->showGuruGuru()V

    .line 1015
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->get(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1018
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->cancel()V

    return-void

    .line 1020
    :cond_0
    iget-object v1, p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->coLoginId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->companyName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "loginWithGoogleLoginInfo: %S, %S"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->login(Lcom/metamoji/cs/dc/user/CsLoginInfo;)V

    return-void

    .line 1016
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "driver must"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 828
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->loginWithGoogleId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 836
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockEnd(Z)V

    .line 838
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClassListChanged(Ljava/util/List;Ljava/util/Map;Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;",
            ")V"
        }
    .end annotation

    .line 2252
    const-string v0, ""

    const v1, 0x1090008

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2270
    :cond_0
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_this:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p3, v2, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 2271
    invoke-virtual {p3, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2272
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/metamoji/lib/commonui/SpinnerEx;->setEnabled(Z)V

    .line 2273
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {v2, p3}, Lcom/metamoji/lib/commonui/SpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2277
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2278
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    .line 2279
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p3, p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->setSelection(I)V

    .line 2280
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onClassSelected(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    .line 2284
    :cond_1
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_this:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p2, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2285
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_1

    .line 2255
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/commonui/SpinnerEx;->setEnabled(Z)V

    .line 2256
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/commonui/SpinnerEx;->setEnabled(Z)V

    .line 2257
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_this:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p1, v2, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2258
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {v2, p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2259
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_this:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2260
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/commonui/SpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-eqz p3, :cond_3

    .line 2263
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    .line 2264
    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->switchLoginMode(Z)V

    return-void

    .line 2288
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setLoginButtonEnable()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 495
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 496
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/EntryActivity;->restorePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 498
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_this:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/4 v0, 0x0

    .line 665
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 500
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    .line 503
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v2

    .line 504
    const-string v3, "forSchoolSimpleLoginMode"

    invoke-virtual {v2, v3, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    .line 507
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 508
    const-string v3, "isNeedStartup"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_isNeedStartup:Z

    .line 510
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 512
    sget v2, Lcom/metamoji/noteanytime/R$layout;->activity_login_page:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setContentView(I)V

    .line 515
    sget v2, Lcom/metamoji/noteanytime/R$id;->login_page_button_change_root_server:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnChangeServer:Landroid/widget/Button;

    .line 518
    sget-boolean v2, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnChangeServer:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnChangeServer:Landroid/widget/Button;

    new-instance v3, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$5;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$5;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$id;->login_page_text_co_login_id:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiEditText;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    .line 541
    sget v2, Lcom/metamoji/noteanytime/R$id;->login_page_text_login_name:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiEditText;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

    .line 546
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v2

    .line 547
    invoke-virtual {v2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 550
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 552
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    .line 553
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    .line 555
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 558
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 562
    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    .line 565
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->createDisplayCoLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 569
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/common/UiEditText;->setEnabled(Z)V

    .line 573
    :cond_2
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 574
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

    iget-object v5, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :cond_3
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->classGroupId:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    .line 578
    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->idNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    .line 600
    :cond_4
    sget v2, Lcom/metamoji/noteanytime/R$id;->login_page_text_password:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiEditText;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    .line 602
    new-instance v3, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/common/UiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 626
    sget v2, Lcom/metamoji/noteanytime/R$id;->login_page_button_login:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButton;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnLogin:Lcom/metamoji/ui/common/UiButton;

    .line 628
    new-instance v3, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$7;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$7;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    sget v2, Lcom/metamoji/noteanytime/R$id;->login_page_button_setting:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnSetting:Landroid/widget/ImageButton;

    .line 640
    new-instance v3, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$8;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$8;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2, p0}, Lcom/metamoji/ui/common/UiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 661
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2, p0}, Lcom/metamoji/ui/common/UiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 662
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2, p0}, Lcom/metamoji/ui/common/UiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 665
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHasSurface:Ljava/lang/Boolean;

    .line 666
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewResized:Ljava/lang/Boolean;

    .line 667
    sget v1, Lcom/metamoji/noteanytime/R$id;->qrCodeReader:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeReader:Landroid/view/View;

    .line 668
    sget v1, Lcom/metamoji/noteanytime/R$id;->qrCodeErrorLabel:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeErrorLabel:Landroid/view/View;

    .line 669
    sget v1, Lcom/metamoji/noteanytime/R$id;->qrCodePreviewBase:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    .line 670
    sget v1, Lcom/metamoji/noteanytime/R$id;->qrCodeFinderView:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    .line 671
    sget v1, Lcom/metamoji/noteanytime/R$id;->qrCodePreviewGuard:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewGuard:Landroid/view/View;

    .line 672
    sget v1, Lcom/metamoji/noteanytime/R$id;->qrCodePreview:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeSurfaceView:Landroid/view/SurfaceView;

    .line 673
    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$9;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$9;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    sget v1, Lcom/metamoji/noteanytime/R$id;->camera_switching_btn:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_cameraSwitchingBtn:Landroid/widget/ImageView;

    .line 681
    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$10;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$10;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    sget v1, Lcom/metamoji/noteanytime/R$id;->login_page_label_class_name:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiTextView;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_lblClassName:Lcom/metamoji/ui/common/UiTextView;

    .line 692
    sget v1, Lcom/metamoji/noteanytime/R$id;->login_page_text_class_name:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/commonui/SpinnerEx;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnClassName:Lcom/metamoji/lib/commonui/SpinnerEx;

    .line 693
    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$11;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$11;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/commonui/SpinnerEx;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 703
    sget v1, Lcom/metamoji/noteanytime/R$id;->login_page_label_id_number:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiTextView;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_lblIdNumber:Lcom/metamoji/ui/common/UiTextView;

    .line 704
    sget v1, Lcom/metamoji/noteanytime/R$id;->login_page_text_id_number:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/commonui/SpinnerEx;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_spnIdNumber:Lcom/metamoji/lib/commonui/SpinnerEx;

    .line 705
    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$12;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$12;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/commonui/SpinnerEx;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 717
    sget v1, Lcom/metamoji/noteanytime/R$id;->login_view_version:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 718
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    sget v1, Lcom/metamoji/noteanytime/R$id;->switchLoginButton:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_lblSwitchLoginMode:Lcom/metamoji/ui/common/UiButton;

    .line 730
    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$13;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$13;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_5

    .line 739
    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->switchLoginMode(Z)V

    .line 745
    :cond_5
    sget v1, Lcom/metamoji/noteanytime/R$id;->expandPanelButton:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 746
    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$14;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$14;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    sget v1, Lcom/metamoji/noteanytime/R$id;->googleLoginButton:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    .line 763
    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$15;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$15;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_6

    .line 773
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    const-string v1, "forSchoolIsGoogleLogin"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 775
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 776
    iput-boolean v4, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_expandOtherPanel:Z

    .line 777
    new-array v7, v4, [Ljava/lang/String;

    const-string p1, "com.google"

    aput-object p1, v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x64

    .line 778
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 781
    :cond_6
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_expandOtherPanel:Z

    if-eqz p1, :cond_7

    .line 782
    sget p1, Lcom/metamoji/noteanytime/R$id;->otherPanel:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 794
    :cond_7
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->registerObserversIfNeed(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 798
    sget p1, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 799
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Cancel_J:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 800
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 805
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 806
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v0, 0x21c

    if-ge p1, v0, :cond_8

    .line 807
    sget p1, Lcom/metamoji/noteanytime/R$id;->login_logo:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    const/16 v0, 0x8

    .line 809
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 874
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onDestroy()V

    return-void
.end method

.method public onLoginCompleted()V
    .locals 3

    const/4 v0, 0x1

    .line 1169
    sput-boolean v0, Lcom/metamoji/noteanytime/StartupActivity;->onLogin:Z

    .line 1170
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 1171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/metamoji/noteanytime/StartupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1172
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1174
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockEnd(Z)V

    .line 1175
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->finish()V

    return-void
.end method

.method public onLoginFailed(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V
    .locals 0

    .line 1189
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onError(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    const/4 p1, 0x0

    .line 1190
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockEnd(Z)V

    return-void
.end method

.method public onOrganizationListChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2449
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->showGuruGuru()V

    const/4 p1, 0x0

    .line 2452
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockEnd(Z)V

    return-void
.end method

.method public onOrganizationSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2457
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->showGuruGuru()V

    const/4 p1, 0x0

    .line 2460
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockEnd(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 862
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 863
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 866
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 869
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->finalizeQRCodeCapture()V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 1635
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    if-eqz p2, :cond_0

    .line 1637
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    .line 1638
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    .line 1639
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    .line 1640
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    .line 1638
    invoke-virtual {p2, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1641
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2434
    :cond_0
    const-string v0, "android.permission.CAMERA"

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    .line 2436
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2437
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2443
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 894
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 896
    const-string v0, "coLoginId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    .line 897
    const-string v0, "coLoginIdName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    .line 898
    const-string v0, "coLoginIdUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    .line 902
    const-string/jumbo v0, "schoolClassName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    .line 903
    const-string/jumbo v0, "schoolIdNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    .line 904
    const-string/jumbo v0, "schoolClassGroupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_classGroupId:Ljava/lang/String;

    .line 905
    const-string/jumbo v0, "schoolExpandOthers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_expandOtherPanel:Z

    if-eqz v0, :cond_0

    .line 907
    sget v0, Lcom/metamoji/noteanytime/R$id;->otherPanel:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 909
    :cond_0
    const-string/jumbo v0, "schoolSimpleMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    const/4 v1, 0x1

    .line 910
    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->switchLoginMode(ZZ)V

    .line 912
    const-string/jumbo v0, "schoolBlocking"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 914
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->blockStart()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 843
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 846
    sget-boolean v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_isAlreadyCheckedPermission:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 847
    sput-boolean v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_isAlreadyCheckedPermission:Z

    .line 848
    const-string v2, "android.permission.CAMERA"

    invoke-static {p0, v2}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 849
    new-array v3, v0, [Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 854
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 857
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->initializeQRCodeCapture(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 921
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 923
    const-string v0, "coLoginId"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v0, "coLoginIdName"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v0, "coLoginIdUrl"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string/jumbo v0, "schoolClassName"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string/jumbo v0, "schoolIdNumber"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string/jumbo v0, "schoolClassGroupId"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_classGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string/jumbo v0, "schoolExpandOthers"

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_expandOtherPanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 933
    const-string/jumbo v0, "schoolBlocking"

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->isBlocking()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 934
    const-string/jumbo v0, "schoolSimpleMode"

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 937
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/EntryActivity;->savePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 950
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setLoginButtonEnable()V

    return-void
.end method

.method parseQRCode(Ljava/lang/String;)V
    .locals 8

    .line 2052
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2054
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2057
    :cond_0
    const-string v0, ","

    .line 2058
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->parseParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2059
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2060
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_1

    .line 2064
    :cond_2
    const-string v7, "cid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2065
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    aput-object v4, v3, v1

    .line 2066
    invoke-static {v6, v3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getRootServerUrlAndCoLoginId(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2067
    aget-object v4, v3, v1

    iput-object v4, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    .line 2068
    aget-object v3, v3, v5

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdUrl:Ljava/lang/String;

    .line 2069
    invoke-direct {p0, v4, v3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getCoLoginIdName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginIdName:Ljava/lang/String;

    .line 2070
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_coLoginId:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->createDisplayCoLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2071
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtCoLoginId:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setTextFieldValue(Landroid/widget/EditText;Ljava/lang/String;)V

    :goto_2
    move v3, v5

    goto :goto_1

    .line 2073
    :cond_3
    const-string/jumbo v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2074
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtLoginName:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p0, v3, v6}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setTextFieldValue(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_2

    .line 2076
    :cond_4
    const-string v7, "pwd"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2077
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p0, v3, v6}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setTextFieldValue(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_2

    .line 2079
    :cond_5
    const-string v7, "qwd"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2080
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_txtPassword:Lcom/metamoji/ui/common/UiEditText;

    const-string v4, "********"

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setTextFieldValue(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 2081
    iput-object v6, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qwd:Ljava/lang/String;

    goto :goto_2

    .line 2083
    :cond_6
    const-string/jumbo v7, "rootServer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2085
    sget-boolean v4, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v4, :cond_1

    .line 2086
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    .line 2087
    const-string v4, "DevDigitalCabinetRootServer"

    invoke-virtual {v3, v6, v4}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_9

    .line 2095
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeErrorLabel:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2096
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

    if-eqz p1, :cond_8

    .line 2097
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2099
    :cond_8
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

    .line 2100
    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {p1, v0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2117
    :cond_9
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->setLoginButtonEnable()V

    if-nez v3, :cond_a

    .line 2119
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_btnLogin:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2121
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->handleLoginButtonTap(Z)V

    return-void

    .line 2124
    :cond_a
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->clearQwd(Z)V

    .line 2125
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->startQRCodeCapture()V

    return-void
.end method

.method resizeQrCodePreview()V
    .locals 7

    .line 1950
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1951
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1952
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1953
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 1956
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1958
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->pxToDip(F)F

    move-result v0

    float-to-int v0, v0

    int-to-double v4, v0

    if-eqz v3, :cond_1

    mul-double/2addr v4, v1

    goto :goto_1

    :cond_1
    div-double/2addr v4, v1

    .line 1959
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-nez v3, :cond_2

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1966
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v0, v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1967
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float v1, v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1968
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodePreviewBase:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public selectFromLoginInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;)V"
        }
    .end annotation

    .line 1194
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->mUIBlocker:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->hideGuruGuru()V

    .line 1195
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolDialog;->openDialog(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/util/List;)V

    return-void
.end method

.method selectUseCamera(Z)Z
    .locals 6

    .line 1878
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 1880
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_cameraSwitchingBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ge v0, v3, :cond_1

    return v2

    .line 1886
    :cond_1
    sget v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_currentCameraDeviceIndex:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 1887
    sput v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_currentCameraDeviceIndex:I

    .line 1888
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_3

    .line 1890
    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1891
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v3, :cond_2

    .line 1892
    sput v4, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_currentCameraDeviceIndex:I

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 1900
    sget p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_currentCameraDeviceIndex:I

    add-int/2addr p1, v3

    sput p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_currentCameraDeviceIndex:I

    if-gt v0, p1, :cond_4

    .line 1902
    sput v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_currentCameraDeviceIndex:I

    :cond_4
    return v3
.end method

.method public setCameraDisplayOrientation()V
    .locals 5

    .line 1913
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    .line 1932
    :goto_0
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1933
    sget v4, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->s_currentCameraDeviceIndex:I

    invoke-static {v4, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1934
    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_4

    .line 1936
    iget v2, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v0

    rem-int/lit16 v2, v2, 0x168

    rsub-int v0, v2, 0x168

    .line 1937
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 1939
    :cond_4
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    move v1, v2

    .line 1942
    :goto_1
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1943
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    invoke-virtual {v2, v1, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->setCameraInfo(ZI)V

    return-void
.end method

.method setTextFieldValue(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .line 2135
    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2136
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method startQRCodeCapture()V
    .locals 7

    .line 1976
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1979
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCapturing:Z

    .line 1980
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 1982
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeFocusTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1983
    new-instance v1, Ljava/util/Timer;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeFocusTimer:Ljava/util/Timer;

    .line 1984
    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$22;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$22;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1996
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$23;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$23;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2002
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2004
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2006
    const-string v1, "[QRCode] startQRCodeCapture Failed."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method stopQRCodeCapture()V
    .locals 2

    .line 2015
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 2016
    :try_start_1
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCapturing:Z

    .line 2018
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2019
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2022
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeFocusTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 2023
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 2024
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeFocusTimer:Ljava/util/Timer;

    .line 2026
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2028
    const-string v1, "[QRCode] stopQRCodeCapture Failed."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1564
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHasSurface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1565
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHasSurface:Ljava/lang/Boolean;

    .line 1567
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->openCamera(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1569
    const-string v0, "[QRCode] openCamera at surfaceCreated Failed."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1570
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1576
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_qrCodeHasSurface:Ljava/lang/Boolean;

    return-void
.end method
