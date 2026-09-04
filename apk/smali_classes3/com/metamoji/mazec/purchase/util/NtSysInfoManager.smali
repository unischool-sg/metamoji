.class public Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;
.super Ljava/lang/Object;
.source "NtSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$State;,
        Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;
    }
.end annotation


# static fields
.field public static final CHECK_VERSION_ANDLOCALE_FORMAT:Ljava/lang/String; = "%s_%s"

.field public static final INFODIC_KEY_ABOUT:Ljava/lang/String; = "about"

.field public static final INFODIC_KEY_ABOUT_CABINET:Ljava/lang/String; = "about_cabinet"

.field public static final INFODIC_KEY_DC_SUPPORTED_LOCALE:Ljava/lang/String; = "dc_supported_locale"

.field public static final INFODIC_KEY_GALLERY:Ljava/lang/String; = "gallery"

.field public static final INFODIC_KEY_GOOGLEPLAY_MAZEC2:Ljava/lang/String; = "googleplay_mazec2"

.field public static final INFODIC_KEY_GUIDEMOVIES:Ljava/lang/String; = "introduction"

.field public static final INFODIC_KEY_GUIDEMOVIES_INTRODUCTION:Ljava/lang/String; = "guidemovies_introduction"

.field public static final INFODIC_KEY_HELP_DCLOGIN:Ljava/lang/String; = "help_dclogin"

.field public static final INFODIC_KEY_MANUAL:Ljava/lang/String; = "manual"

.field public static final INFODIC_KEY_MAZEC_DIC:Ljava/lang/String; = "mazec.dic"

.field public static final INFODIC_KEY_NOTIFY:Ljava/lang/String; = "notify"

.field public static final INFODIC_KEY_PRIVACY:Ljava/lang/String; = "privacy"

.field public static final INFODIC_KEY_SAMPLE_NOTE:Ljava/lang/String; = "sample_note"

.field public static final INFODIC_KEY_SUPEN:Ljava/lang/String; = "supen"

.field public static final INFODIC_KEY_SUPPORT:Ljava/lang/String; = "support"

.field public static final INFODIC_KEY_TOS:Ljava/lang/String; = "tos"

.field public static final JSON_KEY_ALMIGHTY:Ljava/lang/String; = "*"

.field public static final JSON_KEY_DC_SUPPORTED_LOCALE:Ljava/lang/String; = "DigitalCabinet.supported_locale"

.field public static final JSON_KEY_GOOGLEPLAY_MAZEC2:Ljava/lang/String; = "GooglePlay.mazec2"

.field public static final JSON_KEY_SAMPLE_NOTE:Ljava/lang/String; = "sample.note"

.field public static final JSON_KEY_WEBSITE_ABOUT:Ljava/lang/String; = "WebSite.about"

.field public static final JSON_KEY_WEBSITE_ABOUT_CABINET:Ljava/lang/String; = "WebSite.about_cabinet"

.field public static final JSON_KEY_WEBSITE_GALLERY:Ljava/lang/String; = "WebSite.gallery"

.field public static final JSON_KEY_WEBSITE_GUIDEMOVIES:Ljava/lang/String; = "WebSite.introduction"

.field public static final JSON_KEY_WEBSITE_GUIDEMOVIES_INTRODUCTION:Ljava/lang/String; = "WebSite.guidemovies.introduction"

.field public static final JSON_KEY_WEBSITE_HELP_DCLOGIN:Ljava/lang/String; = "WebSite.help_DCLogin"

.field public static final JSON_KEY_WEBSITE_MANUAL:Ljava/lang/String; = "WebSite.manual"

.field public static final JSON_KEY_WEBSITE_NOTIFY:Ljava/lang/String; = "WebSite.notify"

.field public static final JSON_KEY_WEBSITE_NOTIFY_SERIAL:Ljava/lang/String; = "serial"

.field public static final JSON_KEY_WEBSITE_NOTIFY_URL:Ljava/lang/String; = "url"

.field public static final JSON_KEY_WEBSITE_PRIVACY:Ljava/lang/String; = "WebSite.privacy"

.field public static final JSON_KEY_WEBSITE_SUPEN:Ljava/lang/String; = "WebSite.supen"

.field public static final JSON_KEY_WEBSITE_SUPPORT:Ljava/lang/String; = "WebSite.support"

.field public static final JSON_KEY_WEBSITE_TOS:Ljava/lang/String; = "WebSite.tos"

.field public static final URL_FORMAT:Ljava/lang/String; = "%ssysinfo_%s.json"

.field private static s_sharedInstance:Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;


# instance fields
.field protected m_http:Lokhttp3/OkHttpClient;

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

    .line 92
    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    invoke-direct {v0}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;-><init>()V

    sput-object v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->s_sharedInstance:Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_state:I

    .line 181
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_http:Lokhttp3/OkHttpClient;

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

    .line 160
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->getInstance()Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 163
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->getInstance()Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 164
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-static {v0}, Lcom/metamoji/mazec/util/JSONUtil;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    .line 173
    :cond_1
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static GetState()I
    .locals 1

    .line 140
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->getInstance()Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    move-result-object v0

    .line 141
    iget v0, v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_state:I

    return v0
.end method

.method public static GetStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->getInstance()Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->getInstance()Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static executeAsyncTask(Landroid/os/AsyncTask;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 294
    :try_start_0
    const-class v2, Landroid/os/AsyncTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 295
    const-class v3, Landroid/os/AsyncTask;

    const-string v4, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 298
    instance-of v4, v3, Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_0

    .line 299
    check-cast v3, Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v4, v0

    .line 302
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 303
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "executeOnExecutor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    aget-object v2, v2, v4

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v0

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 310
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    return-void

    .line 314
    :catch_1
    :cond_2
    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 316
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static getCDNServer()Ljava/lang/String;
    .locals 1

    .line 426
    const-string v0, "https://cdn-test.metamoji.com/"

    return-object v0
.end method

.method protected static getInstance()Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;
    .locals 1

    .line 107
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->s_sharedInstance:Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    return-object v0
.end method

.method public static getProductVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 413
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 415
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getProductVersionToMinor(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 392
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->getProductVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 393
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 395
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v1, v0

    :cond_0
    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static getStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 435
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 436
    new-array p1, p1, [B

    .line 437
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 438
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 439
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static updateStateAsync(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-static {p0, v0}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->updateStateAsync(Landroid/content/Context;Z)V

    return-void
.end method

.method public static updateStateAsync(Landroid/content/Context;Z)V
    .locals 1

    .line 122
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->getInstance()Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->updateStateInnerAsync(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method connectionAbort()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_http:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_http:Lokhttp3/OkHttpClient;

    :cond_0
    return-void
.end method

.method declared-synchronized connectionDidFinishLoading(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 233
    :try_start_0
    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 235
    invoke-static {p1}, Lcom/metamoji/mazec/util/JSONUtil;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 236
    const-string v0, "[NtSysInfoManager]responce============================================================"

    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 237
    invoke-static {p2}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 238
    const-string p2, "================================================================================="

    invoke-static {p2}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 245
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    .line 246
    const-string p2, "mazec.dic"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 247
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 248
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 249
    iget-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    const-string v0, "mazec.dic"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    .line 259
    :try_start_1
    iput p1, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    :try_start_2
    const-string p2, "[GetAllPages] JSON parse FAILED!!"

    invoke-static {p1, p2}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 254
    iput p1, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method protected downloadSysInfo(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .line 335
    const-string v0, "NtSysInfoManager#DonloadTask"

    .line 337
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 338
    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 339
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p2

    .line 340
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    const/4 v1, 0x0

    .line 343
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_http:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 347
    invoke-static {p2, v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 345
    invoke-static {p2, v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    move-object p2, v1

    :goto_1
    const/4 v0, 0x2

    if-eqz p2, :cond_5

    .line 349
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_5

    .line 352
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 353
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    :goto_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 359
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 367
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    if-eqz p2, :cond_2

    .line 372
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->connectionDidFinishLoading(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->connectionAbort()V

    const/4 p1, 0x1

    move v0, p1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    .line 362
    :try_start_3
    const-string p2, "[NtSysInfoManager] Request FAILED!!"

    invoke-static {p1, p2}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 367
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 374
    :catch_4
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->connectionAbort()V

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_4

    .line 367
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 374
    :catch_5
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->connectionAbort()V

    .line 375
    throw p1

    .line 377
    :cond_5
    const-string p1, "[NtSysInfoManager] Not SuccessStatusCode..."

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    :goto_4
    return v0
.end method

.method protected downloadSysInfoAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 384
    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;-><init>(Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;Landroid/content/Context;)V

    .line 385
    invoke-static {v0, p2}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->executeAsyncTask(Landroid/os/AsyncTask;Ljava/lang/String;)V

    return-void
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

    .line 272
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 273
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 276
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 277
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1

    .line 280
    const-string p2, "*"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 281
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 284
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 285
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_infoDic:Ljava/util/Map;

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method declared-synchronized updateStateInnerAsync(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "[NtSysInfoManager] SysInfo URL="

    monitor-enter p0

    .line 200
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x3

    .line 201
    iput p1, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 206
    :try_start_1
    iget p2, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_state:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 207
    const-string p1, "[NtSysInfoManager] already loaded."

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 213
    :cond_1
    :try_start_2
    const-string p2, "%ssysinfo_%s.json"

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->getCDNServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/AddonStoreUtil;->getProductName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->connectionAbort()V

    .line 217
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    .line 218
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 219
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->m_http:Lokhttp3/OkHttpClient;

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->downloadSysInfoAsync(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
