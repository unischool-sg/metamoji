.class public Lcom/metamoji/mazec/purchase/PurchaseManager;
.super Ljava/lang/Object;
.source "PurchaseManager.java"


# static fields
.field private static PRODUCTID_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SUPPORTED_LANGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSingleton:Lcom/metamoji/mazec/purchase/PurchaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    sget-boolean v2, Lcom/metamoji/mazec/BuildConfig;->SUPPORT_IN_APP_BILLING:Z

    if-eqz v2, :cond_0

    .line 35
    const-string v2, "ja_JP"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_JA:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v2, "en_US"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_EN:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v2, "es_ES"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ES:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v2, "fr_FR"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_FR:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v2, "de_DE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_DE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v2, "it_IT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_IT:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v2, "nl_NL"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_NL:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v2, "pt_BR"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PT:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v2, "pl_PL"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PL:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string/jumbo v2, "ru_RU"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_RU:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string/jumbo v2, "zh_CN"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ZH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-string/jumbo v2, "zh_TW"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ZH:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v2, "ko_KR"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_KO:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v2, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ALL:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/PurchaseManager;->SUPPORTED_LANGS:Ljava/util/List;

    .line 66
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/purchase/PurchaseManager;->PRODUCTID_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->initialize()V

    return-void
.end method

.method public static checkUpdateInfo(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    invoke-static {p0, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getUpdateInfo(Landroid/content/Context;Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static disposeIfExists()V
    .locals 1

    .line 159
    sget-object v0, Lcom/metamoji/mazec/purchase/PurchaseManager;->mSingleton:Lcom/metamoji/mazec/purchase/PurchaseManager;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/PurchaseManager;->dispose()V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/metamoji/mazec/purchase/PurchaseManager;
    .locals 2

    .line 80
    sget-boolean v0, Lcom/metamoji/mazec/BuildConfig;->SUPPORT_IN_APP_BILLING:Z

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/metamoji/mazec/purchase/PurchaseManager;->mSingleton:Lcom/metamoji/mazec/purchase/PurchaseManager;

    if-nez v0, :cond_1

    .line 82
    const-class v0, Lcom/metamoji/mazec/purchase/PurchaseManager;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/metamoji/mazec/purchase/PurchaseManager;->mSingleton:Lcom/metamoji/mazec/purchase/PurchaseManager;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/metamoji/mazec/purchase/PurchaseManager;

    invoke-direct {v1}, Lcom/metamoji/mazec/purchase/PurchaseManager;-><init>()V

    sput-object v1, Lcom/metamoji/mazec/purchase/PurchaseManager;->mSingleton:Lcom/metamoji/mazec/purchase/PurchaseManager;

    .line 86
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :cond_1
    :goto_0
    sget-object v0, Lcom/metamoji/mazec/purchase/PurchaseManager;->mSingleton:Lcom/metamoji/mazec/purchase/PurchaseManager;

    return-object v0
.end method


# virtual methods
.method public checkPurchaseInfomation(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->terminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPurchasedLanguages(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getSupportedLanguages(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    sget-object p1, Lcom/metamoji/mazec/purchase/PurchaseManager;->SUPPORTED_LANGS:Ljava/util/List;

    return-object p1
.end method

.method public isActiveProduct(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
