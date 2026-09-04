.class public Lcom/metamoji/nt/notify/NtSysInfoManager;
.super Ljava/lang/Object;
.source "NtSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/notify/NtSysInfoManager$State;,
        Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CHECK_VERSION_ANDLOCALE_FORMAT:Ljava/lang/String; = "%s_%s"

.field public static final INFODIC_KEY_ABOUT:Ljava/lang/String; = "about"

.field public static final INFODIC_KEY_ABOUT_CABINET:Ljava/lang/String; = "about_cabinet"

.field public static final INFODIC_KEY_DC_SUPPORTED_LOCALE:Ljava/lang/String; = "dc_supported_locale"

.field public static final INFODIC_KEY_FONT_CR:Ljava/lang/String; = "font.cr"

.field public static final INFODIC_KEY_GOOGLEPLAY_MAZEC2:Ljava/lang/String; = "googleplay_mazec2"

.field public static final INFODIC_KEY_HELP_DCLOGIN:Ljava/lang/String; = "help_dclogin"

.field public static final INFODIC_KEY_MANUAL:Ljava/lang/String; = "manual"

.field public static final INFODIC_KEY_MANUAL_HINTHELP:Ljava/lang/String; = "manual_hinthelp"

.field public static final INFODIC_KEY_MAZEC_DIC:Ljava/lang/String; = "mazec.dic"

.field public static final INFODIC_KEY_NOTIFY:Ljava/lang/String; = "notify"

.field public static final INFODIC_KEY_PRIVACY:Ljava/lang/String; = "privacy"

.field public static final INFODIC_KEY_PROMO_NA:Ljava/lang/String; = "promo_na"

.field public static final INFODIC_KEY_PROMO_SAFREE:Ljava/lang/String; = "promo_safree"

.field public static final INFODIC_KEY_PROMO_SHARED_DRIVE:Ljava/lang/String; = "promo_shared_drive"

.field public static final INFODIC_KEY_SAMPLE_NOTE:Ljava/lang/String; = "sample_note"

.field public static final INFODIC_KEY_SHARE_EULA:Ljava/lang/String; = "share_EULA"

.field public static final INFODIC_KEY_SHARE_EULA_VERSION:Ljava/lang/String; = "share_EULA_version"

.field public static final INFODIC_KEY_SUPEN:Ljava/lang/String; = "supen"

.field public static final INFODIC_KEY_SUPPORT:Ljava/lang/String; = "support"

.field public static final INFODIC_KEY_TOS:Ljava/lang/String; = "tos"

.field public static final JSON_KEY_ALMIGHTY:Ljava/lang/String; = "*"

.field public static final JSON_KEY_DC_SUPPORTED_LOCALE:Ljava/lang/String; = "DigitalCabinet.supported_locale"

.field public static final JSON_KEY_FONT_CR:Ljava/lang/String; = "font.cr"

.field public static final JSON_KEY_GOOGLEPLAY_MAZEC2:Ljava/lang/String; = "GooglePlay.mazec2"

.field public static final JSON_KEY_MAZEC_DIC:Ljava/lang/String; = "mazec.dic"

.field public static final JSON_KEY_SAMPLE_NOTE:Ljava/lang/String; = "sample.note"

.field public static final JSON_KEY_SHARE_WEBSITE_EULA:Ljava/lang/String; = "Share.WebSite.EULA"

.field public static final JSON_KEY_SHARE_WEBSITE_EULA_VERSION:Ljava/lang/String; = "Share.WebSite.EULA.version"

.field public static final JSON_KEY_WEBSITE_ABOUT:Ljava/lang/String; = "WebSite.about"

.field public static final JSON_KEY_WEBSITE_ABOUT_CABINET:Ljava/lang/String; = "WebSite.about_cabinet"

.field public static final JSON_KEY_WEBSITE_HELP_DCLOGIN:Ljava/lang/String; = "WebSite.help_DCLogin"

.field public static final JSON_KEY_WEBSITE_MANUAL:Ljava/lang/String; = "WebSite.manual"

.field public static final JSON_KEY_WEBSITE_MANUAL_HINTHELP:Ljava/lang/String; = "WebSite.manual.hinthelp"

.field public static final JSON_KEY_WEBSITE_NOTIFY:Ljava/lang/String; = "WebSite.notify"

.field public static final JSON_KEY_WEBSITE_NOTIFY_SERIAL:Ljava/lang/String; = "serial"

.field public static final JSON_KEY_WEBSITE_NOTIFY_URL:Ljava/lang/String; = "url"

.field public static final JSON_KEY_WEBSITE_PRIVACY:Ljava/lang/String; = "WebSite.privacy"

.field public static final JSON_KEY_WEBSITE_PROMO_NA:Ljava/lang/String; = "WebSite.promo.NA"

.field public static final JSON_KEY_WEBSITE_PROMO_SAFREE:Ljava/lang/String; = "WebSite.promo.SAFree"

.field public static final JSON_KEY_WEBSITE_PROMO_SHARED_DRIVE:Ljava/lang/String; = "WebSite.promo.SharedDrive"

.field public static final JSON_KEY_WEBSITE_SUPEN:Ljava/lang/String; = "WebSite.supen"

.field public static final JSON_KEY_WEBSITE_SUPPORT:Ljava/lang/String; = "WebSite.support"

.field public static final JSON_KEY_WEBSITE_TOS:Ljava/lang/String; = "WebSite.tos"

.field private static final KEY_VERSION_FOR_CLASSROOM_202007:Ljava/lang/String; = "3.11.5"

.field private static final KEY_VERSION_FOR_CLASSROOM_CURRENT:Ljava/lang/String; = "3.11.5"

.field public static final URL_FORMAT:Ljava/lang/String; = "%ssysinfo_%s.json?last=%s"

.field private static s_sharedInstance:Lcom/metamoji/nt/notify/NtSysInfoManager;


# instance fields
.field m_host:Ljava/lang/String;

.field protected m_httpCall:Lokhttp3/Call;

.field protected m_infoDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m_state:I

.field protected sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/metamoji/nt/notify/NtSysInfoManager;

    invoke-direct {v0}, Lcom/metamoji/nt/notify/NtSysInfoManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->s_sharedInstance:Lcom/metamoji/nt/notify/NtSysInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I

    .line 234
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_httpCall:Lokhttp3/Call;

    .line 236
    iput-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_host:Ljava/lang/String;

    return-void
.end method

.method public static GetDictionaryData(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 215
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 216
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 219
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    .line 225
    :cond_1
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static GetState()I
    .locals 1

    .line 192
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;

    move-result-object v0

    .line 193
    iget v0, v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I

    return v0
.end method

.method public static GetStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 201
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 204
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static clearNotifyFlag()V
    .locals 3

    .line 181
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 182
    const-string v1, "SysInfoExistNotify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static existNotifyFlag()Z
    .locals 3

    .line 168
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;

    move-result-object v0

    .line 169
    iget-object v0, v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "notify"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 173
    const-string v2, "SysInfoExistNotify"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected static getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;
    .locals 1

    .line 131
    sget-object v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->s_sharedInstance:Lcom/metamoji/nt/notify/NtSysInfoManager;

    return-object v0
.end method

.method public static updateStateAsync()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync(Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    return-void
.end method

.method public static updateStateAsync(Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V
    .locals 2

    .line 148
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateExec(ZLcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    return-void
.end method

.method public static updateStateSync()V
    .locals 3

    .line 157
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getInstance()Lcom/metamoji/nt/notify/NtSysInfoManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateExec(ZLcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    return-void
.end method

.method public static updateSysInfo()V
    .locals 3

    .line 762
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 763
    const-string v1, "SysInfoLastCheckDate"

    const-string v2, "*****"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkKeyVersionForClassRoom(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 473
    const-string v0, "3.11.5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method connectionAbort()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_httpCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 248
    const-string v1, "[NtSysInfoManager] URLConnection request cancel FAILED!!"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_httpCall:Lokhttp3/Call;

    return-void
.end method

.method declared-synchronized connectionDidFinishLoading(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 489
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 491
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 492
    const-string v0, "[NtSysInfoManager]responce============================================================"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 493
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 494
    const-string p1, "================================================================================="

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v4

    .line 499
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersionToMinor()Ljava/lang/String;

    move-result-object v3

    .line 505
    const-string p1, "WebSite.notify"

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 506
    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 507
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 511
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 512
    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 516
    const-string v0, "*"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 517
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    :cond_0
    if-eqz v0, :cond_2

    .line 520
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 523
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 524
    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    .line 528
    const-string p1, "*"

    .line 529
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 530
    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    .line 536
    sget-object p1, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    invoke-static {p1}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 538
    check-cast p1, Ljava/util/Map;

    :cond_1
    if-eqz p1, :cond_2

    .line 546
    const-string/jumbo v0, "serial"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 547
    check-cast v0, Ljava/lang/String;

    .line 548
    const-string/jumbo v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 549
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x0

    move-object p1, v0

    .line 554
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    .line 555
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 556
    iget-object v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const-string v5, "notify"

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    :cond_3
    :try_start_4
    const-string v5, "WebSite.support"

    const-string/jumbo v6, "support"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, p0

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 559
    :try_start_6
    const-string v5, "WebSite.supen"

    const-string/jumbo v6, "supen"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v1, p0

    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 560
    :try_start_8
    const-string v5, "WebSite.tos"

    const-string/jumbo v6, "tos"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v1, p0

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 561
    :try_start_a
    const-string v5, "WebSite.privacy"

    const-string v6, "privacy"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v1, p0

    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 562
    :try_start_c
    const-string v5, "WebSite.about"

    const-string v6, "about"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v1, p0

    :try_start_d
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 563
    :try_start_e
    const-string v5, "WebSite.about_cabinet"

    const-string v6, "about_cabinet"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v1, p0

    :try_start_f
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 564
    :try_start_10
    const-string v5, "WebSite.help_DCLogin"

    const-string v6, "help_dclogin"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object v1, p0

    :try_start_11
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string p1, "DigitalCabinet.supported_locale"

    const-string v5, "dc_supported_locale"

    invoke-virtual {p0, v2, v3, p1, v5}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseDicFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string/jumbo v5, "sample.note"

    const-string/jumbo v6, "sample_note"

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 567
    :try_start_12
    const-string v5, "WebSite.manual"

    const-string v6, "manual"
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v1, p0

    :try_start_13
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 568
    :try_start_14
    const-string v5, "WebSite.manual.hinthelp"

    const-string v6, "manual_hinthelp"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object v1, p0

    :try_start_15
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 569
    :try_start_16
    const-string v5, "GooglePlay.mazec2"

    const-string v6, "googleplay_mazec2"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    move-object v1, p0

    :try_start_17
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 570
    :try_start_18
    const-string v5, "Share.WebSite.EULA"

    const-string/jumbo v6, "share_EULA"
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move-object v1, p0

    :try_start_19
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 571
    :try_start_1a
    const-string v5, "Share.WebSite.EULA.version"

    const-string/jumbo v6, "share_EULA_version"
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-object v1, p0

    :try_start_1b
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 572
    :try_start_1c
    const-string v5, "WebSite.promo.SAFree"

    const-string v6, "promo_safree"
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    move-object v1, p0

    :try_start_1d
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 573
    :try_start_1e
    const-string v5, "WebSite.promo.NA"

    const-string v6, "promo_na"
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    move-object v1, p0

    :try_start_1f
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 574
    :try_start_20
    const-string v5, "WebSite.promo.SharedDrive"

    const-string v6, "promo_shared_drive"
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move-object v1, p0

    :try_start_21
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string p1, "mazec.dic"

    const-string v5, "mazec.dic"

    invoke-virtual {p0, v2, p1, v5}, Lcom/metamoji/nt/notify/NtSysInfoManager;->copyDicFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v5, "font.cr"

    const-string v6, "font.cr"

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/nt/notify/NtSysInfoManager;->parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    .line 580
    const-string v0, ""

    .line 583
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 590
    const-string v2, "SysInfoSerial_%s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->setUserDefaults(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 603
    :try_start_22
    iput v2, v1, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 604
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p1, v0

    .line 597
    :goto_3
    :try_start_23
    const-string v0, "[GetAllPages] JSON parse FAILED!!"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 598
    iput p1, v1, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 599
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_4
    :try_start_24
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    throw p1
.end method

.method copyDicFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 727
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 728
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 729
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 730
    iget-object p2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method getContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 407
    :try_start_0
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 408
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 409
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_httpCall:Lokhttp3/Call;

    .line 410
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 412
    :try_start_1
    const-string v1, "NtSysInfoManager#DonloadTask"

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    :goto_0
    const/4 v1, 0x2

    if-eqz p1, :cond_2

    .line 414
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v2, :cond_2

    .line 415
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 416
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 417
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 422
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 423
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_1
    move-exception v4

    .line 415
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :try_start_9
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v2

    :try_start_b
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catch_1
    move-exception v2

    .line 424
    :try_start_c
    const-string v3, "[NtSysInfoManager] Request FAILED!!"

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 425
    iput v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I

    goto :goto_4

    .line 428
    :cond_2
    const-string v2, "[NtSysInfoManager] Not SuccessStatusCode..."

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 429
    iput v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_3
    :goto_4
    if-eqz p1, :cond_4

    .line 433
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    :cond_4
    return-object v0

    :catchall_5
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    .line 435
    :cond_5
    throw p1
.end method

.method getContentsCompleted(Ljava/lang/String;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_httpCall:Lokhttp3/Call;

    .line 442
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/notify/NtSysInfoManager;->connectionDidFinishLoading(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 444
    invoke-virtual {p2}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->updateImage()V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->connectionAbort()V

    return-void
.end method

.method public isSameDate(Ljava/lang/String;Ljava/util/Date;)Z
    .locals 2

    .line 457
    :try_start_0
    const-string v0, "NtSysInfoManager.isSameDate: last=%s, current=%s"

    invoke-static {p2}, Lcom/metamoji/cm/TimeUtils;->dateToISOString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 459
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 461
    iget-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 462
    iget-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 463
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method parseDicFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 701
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 702
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 703
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 706
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 707
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1

    .line 711
    const-string p2, "*"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 712
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 715
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 716
    iget-object p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method parseUrlFromJsonDic(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 653
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 654
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 655
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p4

    if-lez p4, :cond_3

    .line 658
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 659
    check-cast p2, Ljava/util/Map;

    .line 660
    const-string p4, "*"

    if-nez p2, :cond_0

    .line 663
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 664
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    :cond_0
    if-eqz p2, :cond_3

    .line 667
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 670
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 671
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    .line 675
    :cond_1
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 676
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 677
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    .line 680
    :cond_2
    sget-object p1, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    invoke-static {p1}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 681
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 686
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    .line 687
    iget-object p2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method setUserDefaults(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 615
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 620
    const-string p1, "SysInfoExistNotify"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 625
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->dateToISOString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SysInfoLastCheckDate"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string p1, "%s_%s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 629
    const-string p2, "SysInfoLastCheckVersionAndLocale"

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string p1, "SysInfoSerial_%s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string p1, "SysInfoLastCheckInfos"

    iget-object p2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    .line 638
    const-string p1, "SysInfoLastCheckKeyVersionForClassRoom"

    const-string p2, "3.11.5"

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized updateStateExec(ZLcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V
    .locals 9

    const-string v0, "[NtSysInfoManager] SysInfo URL="

    monitor-enter p0

    if-nez p1, :cond_0

    .line 261
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string p1, "NtSysinfoManager#updateStateExec(false) : This method should be called on back thread"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 268
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_httpCall:Lokhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 269
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 277
    iget v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    goto/16 :goto_2

    .line 282
    :cond_2
    iget-boolean v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    if-eqz v1, :cond_3

    .line 284
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_3
    const-string v1, "https://cdn.metamoji.com/"

    .line 297
    :goto_0
    iget-object v2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_host:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 298
    iget-object v2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 299
    iput v3, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I

    .line 300
    invoke-virtual {p0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->connectionAbort()V

    .line 302
    :cond_4
    iput-object v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_host:Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 p1, 0x3

    .line 306
    iput p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 311
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersionToMinor()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v4

    .line 314
    const-string v5, "%s_%s"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v4

    .line 318
    const-string v5, "SysInfoLastCheckVersionAndLocale"

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    const-string v6, "SysInfoLastCheckDate"

    invoke-virtual {v4, v6}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 320
    const-string v7, "SysInfoLastCheckKeyVersionForClassRoom"

    invoke-virtual {v4, v7}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v5, :cond_a

    .line 321
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v6, :cond_a

    .line 322
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 334
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v6, v2}, Lcom/metamoji/nt/notify/NtSysInfoManager;->isSameDate(Ljava/lang/String;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v7}, Lcom/metamoji/nt/notify/NtSysInfoManager;->checkKeyVersionForClassRoom(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 336
    iget p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I

    if-eq p1, v8, :cond_6

    .line 337
    iget-object p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const-string v0, "SysInfoLastCheckInfos"

    invoke-virtual {v4, v0}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 338
    iput v8, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I

    .line 340
    :cond_6
    const-string p1, "[NtSysInfoManager] date check. skip."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 342
    invoke-virtual {p2}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->updateImage()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    :cond_7
    monitor-exit p0

    return-void

    .line 346
    :cond_8
    :try_start_4
    iget-object v2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 347
    iget-object v2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const-string v5, "SysInfoLastCheckInfos"

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_9
    if-eqz p2, :cond_a

    .line 350
    invoke-virtual {p2}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->updateImage()V

    .line 356
    :cond_a
    const-string v2, "%ssysinfo_%s.json?last=%s"

    const-string v4, "Android-Share-G-ClassRoom"

    filled-new-array {v1, v4, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->connectionAbort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_b

    .line 367
    :try_start_5
    new-instance p1, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;

    invoke-direct {p1, p0, p2}, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;-><init>(Lcom/metamoji/nt/notify/NtSysInfoManager;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v8, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 370
    :catch_0
    :try_start_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 371
    new-instance v0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;

    invoke-direct {v0, p0, p2, v1}, Lcom/metamoji/nt/notify/NtSysInfoManager$1;-><init>(Lcom/metamoji/nt/notify/NtSysInfoManager;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 384
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 390
    :cond_b
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/notify/NtSysInfoManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/notify/NtSysInfoManager$2;-><init>(Lcom/metamoji/nt/notify/NtSysInfoManager;Ljava/lang/String;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 399
    :goto_1
    monitor-exit p0

    return-void

    :cond_c
    :goto_2
    const/4 p1, 0x2

    .line 279
    :try_start_7
    iput p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method
