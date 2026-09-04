.class public Lcom/metamoji/lb/LbInAppPurchaseUtils;
.super Ljava/lang/Object;
.source "LbInAppPurchaseUtils.java"


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/lb/LbInAppPurchaseUtils;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static baseURL()Ljava/lang/String;
    .locals 2

    .line 107
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;->DIGITAL_CABINET_URL_BASE()Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v1, :cond_2

    .line 111
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 112
    const-string v1, "DevStoreServer"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 115
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->dcServerURL()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static baseURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->baseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 225
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xffe5

    if-ne v2, v3, :cond_0

    const/16 v2, 0x5c

    :cond_0
    sub-int/2addr v2, p1

    int-to-char v2, v2

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 206
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNetworkAvailable()Z
    .locals 2

    .line 37
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPurchaseProduct(Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPurchasedAnyMazec()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 54
    :goto_0
    sget-object v2, Lcom/metamoji/lb/LbInAppPurchaseConstants;->FUNCTION_MAZEC2_PRODUCT_IDS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 55
    sget-object v2, Lcom/metamoji/lb/LbInAppPurchaseConstants;->FUNCTION_MAZEC2_PRODUCT_IDS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isPurchaseProduct(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static loginURL()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Login"

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->storeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?id=guest&pass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->postParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static postParameter()Ljava/lang/String;
    .locals 14

    .line 165
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 167
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 168
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 170
    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemCurrentLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "Android-Share-G-ClassRoom"

    .line 175
    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemPreferredLanguageString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "Android"

    .line 187
    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 192
    const-string v1, "%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "wifi"

    .line 194
    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d*%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v3 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 173
    const-string v1, "&product=%s&version=%s&clientLocale=%s&osLocale1=%s&osLocale2=%s&timezone=%s&os=%s&osVersion=%s&device=%s&network=%s&resolution=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static purchaseURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mmjeditor2"

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static storeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "store"

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static systemCurrentLocaleString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static systemPreferredLanguageString()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static systemTimeZone()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
