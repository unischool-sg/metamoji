.class public Lcom/metamoji/nt/NtFeatureManager;
.super Ljava/lang/Object;
.source "NtFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;
    }
.end annotation


# static fields
.field private static final MMJNT_FEATURE_CUSTOMIZE_DEF_QR_CODE_READER:Z = true

.field private static final MMJNT_FEATURE_CUSTOMIZE_DEF_SET_PASSWORD_TO_NOTE:Z = true

.field private static final MMJNT_FEATURE_CUSTOMIZE_DEF_STUDENT_CHANGE_PASSWORD:Z = false

.field private static final MMJNT_FEATURE_CUSTOMIZE_DEF_STUDENT_CREATE_SCHOOL_NOTE:Z = true

.field private static final MMJNT_FEATURE_CUSTOMIZE_DEF_STUDENT_EDIT_CLASSBOX_NOTE:Z = true

.field public static final MMJNT_FEATURE_CUSTOMIZE_DEF_WEB_UNIT_DEFAULT_URL:Ljava/lang/String; = "https://www.google.com"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_CLEAR_CAPTURE_IMAGE:Ljava/lang/String; = "MMJAppClearCaptureImage"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_CLEAR_COPIED_SHARE_NOTE:Ljava/lang/String; = "MMJAppClearCopiedShareNote"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_EDIT_WEB_UNIT_URL:Ljava/lang/String; = "MMJAppEditWebUnitUrl"

.field public static final MMJNT_FEATURE_CUSTOMIZE_KEY_MONITOR_SORT_ORDER:Ljava/lang/String; = "MMJAppMonitorSortOrder"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_PASSCODE_LOCK_TIME:Ljava/lang/String; = "MMJAppPasscodeLockTime"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_QR_CODE_READER:Ljava/lang/String; = "MMJAppUseQRCodeReader"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_SIMPLE_VIEW_MODE:Ljava/lang/String; = "MMJAppSimpleViewMode"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_STUDENT_CHANGE_PASSWORD:Ljava/lang/String; = "MMJAppStudentChangePassword"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_STUDENT_CREATE_SCHOOL_NOTE:Ljava/lang/String; = "MMJAppStudentCreateSchoolNote"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_STUDENT_EDIT_CLASSBOX_NOTE:Ljava/lang/String; = "MMJAppStudentEditClassboxNote"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_STUDENT_SET_PASSWORD_TO_NOTE:Ljava/lang/String; = "MMJAppStudentSetPassword"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_SUSPEND_ACTION:Ljava/lang/String; = "MMJAppSuspendAction"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_CLOUD_SERVICE:Ljava/lang/String; = "MMJAppUnavailableCloudService"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_CUSTOMIZE:Ljava/lang/String; = "MMJAppUnavailableCustomize"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_HISTORY_TAB:Ljava/lang/String; = "MMJAppUnavailableHistoryTab"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_IN_OUT_BOX:Ljava/lang/String; = "MMJAppUnavailableInOutBox"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_ITUNES:Ljava/lang/String; = "MMJAppUnavailableiTunes"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_MOVIE:Ljava/lang/String; = "MMJAppUnavailableMovie"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_SEND_BY_APP:Ljava/lang/String; = "MMJAppUnavailableSendByApp"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_SEND_BY_FILE:Ljava/lang/String; = "MMJAppUnavailableSendByFile"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_SEND_BY_MAIL:Ljava/lang/String; = "MMJAppUnavailableSendByMail"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_SEND_BY_PRINTER:Ljava/lang/String; = "MMJAppUnavailableSendByPrinter"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_VOICE:Ljava/lang/String; = "MMJAppUnavailableVoice"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_WEB_UNIT:Ljava/lang/String; = "MMJAppUnavailableWebUnit"

.field private static final MMJNT_FEATURE_CUSTOMIZE_KEY_UNAVAILABLE_WEVDAV:Ljava/lang/String; = "MMJAppUnavailableWebDAV"

.field public static final MMJNT_FEATURE_CUSTOMIZE_KEY_WEB_UNIT_DEFAULT_URL:Ljava/lang/String; = "MMJAppWebUnitDefaultUrl"

.field public static final MMJNT_FEATURE_CUSTOMIZE_MONITOR_SORT_ORDER_NAME:Ljava/lang/String; = "name"

.field public static final MMJNT_FEATURE_CUSTOMIZE_MONITOR_SORT_ORDER_USERID:Ljava/lang/String; = "userid"

.field private static final MMJNT_FEATURE_CUSTOMIZE_SUSPEND_ACTION_VALUE_NONE:Ljava/lang/String; = "None"

.field private static final MMJNT_FEATURE_CUSTOMIZE_SUSPEND_ACTION_VALUE_PASS_CODE:Ljava/lang/String; = "PassCode"

.field private static final MMJNT_FEATURE_CUSTOMIZE_VALUE_TRUE:Ljava/lang/String; = "true"

.field private static sInstance:Lcom/metamoji/nt/NtFeatureManager;


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/nt/NtFeature;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureChangedEvent:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/nt/NtFeatureManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/metamoji/nt/NtFeatureManager;

    invoke-direct {v0}, Lcom/metamoji/nt/NtFeatureManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtFeatureManager;->sInstance:Lcom/metamoji/nt/NtFeatureManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v0}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mFeatureChangedEvent:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method

.method private checkAvailable(Lcom/metamoji/nt/NtFeature;)Z
    .locals 3

    .line 201
    sget-object v0, Lcom/metamoji/nt/NtFeatureManager$1;->$SwitchMap$com$metamoji$nt$NtFeature:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFeature;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    .line 286
    :pswitch_1
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    .line 287
    iget p1, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    const/4 v2, 0x4

    if-lt p1, v2, :cond_0

    return v1

    :cond_0
    return v0

    .line 280
    :pswitch_2
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    return p1

    .line 277
    :pswitch_3
    const-string p1, "MMJAppWebUnitDefaultUrl"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0

    .line 273
    :pswitch_4
    const-string p1, "MMJAppEditWebUnitUrl"

    invoke-static {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :pswitch_5
    return v1

    :pswitch_6
    return v0

    .line 263
    :pswitch_7
    const-string p1, "MMJAppStudentSetPassword"

    invoke-static {p1, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 260
    :pswitch_8
    const-string p1, "MMJAppUseQRCodeReader"

    invoke-static {p1, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 257
    :pswitch_9
    const-string p1, "MMJAppUnavailableMovie"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 254
    :pswitch_a
    const-string p1, "MMJAppStudentChangePassword"

    invoke-static {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 251
    :pswitch_b
    const-string p1, "MMJAppStudentCreateSchoolNote"

    invoke-static {p1, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 248
    :pswitch_c
    const-string p1, "MMJAppStudentEditClassboxNote"

    invoke-static {p1, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 245
    :pswitch_d
    const-string p1, "MMJAppSimpleViewMode"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 242
    :pswitch_e
    const-string p1, "MMJAppUnavailableHistoryTab"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 239
    :pswitch_f
    const-string p1, "MMJAppUnavailableCustomize"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 236
    :pswitch_10
    const-string p1, "MMJAppUnavailableVoice"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 233
    :pswitch_11
    const-string p1, "MMJAppClearCopiedShareNote"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 230
    :pswitch_12
    const-string p1, "MMJAppClearCaptureImage"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 227
    :pswitch_13
    const-string p1, "MMJAppUnavailableWebUnit"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 224
    :pswitch_14
    const-string p1, "MMJAppUnavailableSendByFile"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 221
    :pswitch_15
    const-string p1, "MMJAppUnavailableSendByPrinter"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 218
    :pswitch_16
    const-string p1, "MMJAppUnavailableSendByApp"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 215
    :pswitch_17
    const-string p1, "MMJAppUnavailableInOutBox"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 212
    :pswitch_18
    const-string p1, "MMJAppUnavailableiTunes"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 209
    :pswitch_19
    const-string p1, "MMJAppUnavailableCloudService"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 206
    :pswitch_1a
    const-string p1, "MMJAppUnavailableWebDAV"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 203
    :pswitch_1b
    const-string p1, "MMJAppUnavailableSendByMail"

    invoke-static {p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailableCustomizeSetting(Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 179
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static getInstance()Lcom/metamoji/nt/NtFeatureManager;
    .locals 2

    .line 92
    sget-object v0, Lcom/metamoji/nt/NtFeatureManager;->sInstance:Lcom/metamoji/nt/NtFeatureManager;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/metamoji/nt/NtFeatureManager;->sInstance:Lcom/metamoji/nt/NtFeatureManager;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFeatureManager;->init()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()Lcom/metamoji/nt/NtFeatureManager;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mCache:Ljava/util/HashMap;

    :cond_0
    return-object p0
.end method

.method private static isAvailableCustomizeSetting(Ljava/lang/String;)Z
    .locals 3

    .line 136
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 139
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    if-nez v2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 148
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isAvailableCustomizeSetting(Ljava/lang/String;Z)Z
    .locals 2

    .line 158
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method public addFeatureChangedEventListener(Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mFeatureChangedEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public addFeatureChangedEventListener(Ljava/lang/Object;Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mFeatureChangedEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public isAvailable(Lcom/metamoji/nt/NtFeature;)Z
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtFeatureManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtFeatureManager;->checkAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    .line 108
    iget-object v2, p0, Lcom/metamoji/nt/NtFeatureManager;->mCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 112
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyConditionChanged()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtFeatureManager;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mFeatureChangedEvent:Lcom/metamoji/cm/CmEventListener;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 122
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeFeatureChangedEventListener(Ljava/lang/Object;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/metamoji/nt/NtFeatureManager;->mFeatureChangedEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method
