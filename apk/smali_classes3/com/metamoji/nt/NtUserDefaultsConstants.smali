.class public Lcom/metamoji/nt/NtUserDefaultsConstants;
.super Ljava/lang/Object;
.source "NtUserDefaultsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtUserDefaultsConstants$Keys;,
        Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;
    }
.end annotation


# static fields
.field public static final USER_DEFAULT_KEYS_MUST_NOT_CLEAR:[Ljava/lang/String;

.field public static final USER_DEFAULT_KEYS_MUST_NOT_RESTORE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/16 v0, 0x1a

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DetailWindowSettings"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DevStoreServer"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "DevLobbyServer"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "DevEditItServer"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "DevDigitalCabinetServer"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "DevDigitalCabinetRootServer"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "DevDigitalCabinetServerCheckMaintInfo"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "TrialMode"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "MMJTextLineExtEngineVersion"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "MMJTextLineExtDicVersion"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "CollaboDeviceId"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "CollaboDeviceCode"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "CollaboNickName"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "CollaboConfirmEULAVersion"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "LastPdfDir"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "LastAtdocDir"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "LastJpegDir"

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-string v1, "LastTextDir"

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-string v1, "MMJDriveGroupsInfomation"

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const-string v1, "MMJMediaUploadFilesData"

    move/from16 v21, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x14

    const-string v22, "MMJMediaUploadTitlesData"

    aput-object v22, v0, v1

    const/16 v1, 0x15

    const-string v22, "forSchoolAttentionUserInfoDic"

    aput-object v22, v0, v1

    const/16 v1, 0x16

    const-string v22, "forSchoolAttentionSelectedGroupId"

    aput-object v22, v0, v1

    const/16 v1, 0x17

    const-string v22, "FatalErrorOnEditing"

    aput-object v22, v0, v1

    const/16 v1, 0x18

    const-string v22, "DocumentEditorRestoringCount"

    aput-object v22, v0, v1

    const/16 v1, 0x19

    const-string v22, "MMJNtSchoolMonitoringDisplayType"

    aput-object v22, v0, v1

    sput-object v0, Lcom/metamoji/nt/NtUserDefaultsConstants;->USER_DEFAULT_KEYS_MUST_NOT_RESTORE:[Ljava/lang/String;

    .line 50
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "LastVersion"

    aput-object v1, v0, v21

    const-string v1, "IsShowedIntroductionMessage"

    aput-object v1, v0, v3

    const-string v1, "LibraryBgImageVersion"

    aput-object v1, v0, v4

    const-string v1, "LibraryDocumentTemplateVersion"

    aput-object v1, v0, v5

    const-string v1, "LibraryItemVersion"

    aput-object v1, v0, v6

    const-string v1, "LibraryTemplateVersion"

    aput-object v1, v0, v7

    const-string v1, "SampleDocumentsVersion"

    aput-object v1, v0, v8

    const-string v1, "forSchoolSimpleLoginMode"

    aput-object v1, v0, v9

    const-string v1, "forSchoolIsGoogleLogin"

    aput-object v1, v0, v10

    const-string v1, "OrganizationIdList"

    aput-object v1, v0, v11

    const-string v1, "OrganizationIdInfo"

    aput-object v1, v0, v12

    const-string v1, "MMJProxyAuthenticationInfomation"

    aput-object v1, v0, v13

    const-string v1, "CollaboProxySettingUseProxy"

    aput-object v1, v0, v14

    const-string v1, "CollaboProxySettingHost"

    aput-object v1, v0, v15

    const-string v1, "CollaboProxySettingPort"

    aput-object v1, v0, v16

    const-string v1, "CollaboProxySettingRequireAuth"

    aput-object v1, v0, v17

    const-string v1, "CollaboProxySettingUserName"

    aput-object v1, v0, v18

    const-string v1, "CollaboProxySettingPassword"

    aput-object v1, v0, v19

    const-string v1, "MMJNtDLEnvSpDebugMode"

    aput-object v1, v0, v20

    sput-object v0, Lcom/metamoji/nt/NtUserDefaultsConstants;->USER_DEFAULT_KEYS_MUST_NOT_CLEAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
