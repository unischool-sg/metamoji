.class public Lcom/metamoji/lc/LicenseUtil;
.super Ljava/lang/Object;
.source "LicenseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lc/LicenseUtil$LicenseType;,
        Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;,
        Lcom/metamoji/lc/LicenseUtil$ActivateCallback;
    }
.end annotation


# static fields
.field static final ABORTED:Ljava/util/Date;

.field private static final BASE_URL:Ljava/lang/String;

.field private static final CONNECT_TIMEOUT:I = 0xbb8

.field static final EXPIRED_CACHE:J = -0x1L

.field static final INFINITE_LICENSE_SPAN:I = 0x1c84

.field public static final INFINIT_DATE:Ljava/util/Date;

.field static final INVALID_DATE:Ljava/util/Date;

.field static final KEY_LEN:I = 0x1d

.field private static final PARAM_DAYS:Ljava/lang/String; = "i_days"

.field private static final PARAM_DEVICEID:Ljava/lang/String; = "tt_deviceid"

.field private static final PARAM_DEVICENAME:Ljava/lang/String; = "tt_devicename"

.field private static final PARAM_HASH:Ljava/lang/String; = "tt_hash"

.field private static final PARAM_LICENSEKEY:Ljava/lang/String; = "tt_licensekey"

.field private static final PARAM_PRODUCTID:Ljava/lang/String; = "tt_productid"

.field private static final PARAM_RESULT:Ljava/lang/String; = "i_result"

.field private static final PARAM_STATUS:Ljava/lang/String; = "i_status"

.field static final PREFKEY_DEVICEID:Ljava/lang/String; = "mmjlc_deviceid"

.field static final PREFKEY_EXPIRETION_DATE:Ljava/lang/String; = "mmjlc_LicenseExpirationDate"

.field static final PREFKEY_INSTALLDATE:Ljava/lang/String; = "mmjlc_LicenseInstalledDate"

.field static final PREFKEY_LAST_CHECKED_DATE_OF_VALID_ONLINE_LICENSE:Ljava/lang/String; = "mmjlc_lastCheckedDateOfValidOnlineLicense"

.field static final PREFKEY_LICENSEKEY:Ljava/lang/String; = "mmjlc_licenseKey"

.field static final PREFKEY_LICENSE_ACTOIN:Ljava/lang/String; = "mmjlc_licenseAction"

.field static final PREFKEY_LICENSE_SPAN:Ljava/lang/String; = "mmjlc_licenseSpan"

.field private static final PRODUCT_ID:Ljava/lang/String; = "Android-Note-Business_3.1.8"

.field static final SHORT_KEY:I = 0x5a

.field static final SHORT_WARN_BEFORE:I = 0x7

.field private static final SOCKET_TIMEOUT:I = 0xbb8

.field static final TRY_OFFLINE:I = 0x168

.field static final TRY_PACKAGE:I = 0x78

.field static final WARN_BEFORE:I = 0x1e


# instance fields
.field mAvailable:I

.field mChecking:Z

.field mExpire:Ljava/util/Date;

.field mKey:Ljava/lang/String;

.field mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

.field mPublished:Ljava/util/Date;

.field mSerial:I

.field mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_0

    const-string v0, "https://license-test.metamoji.com/mmjlicense/"

    goto :goto_0

    :cond_0
    const-string v0, "https://license.metamoji.com/mmjlicense/"

    :goto_0
    sput-object v0, Lcom/metamoji/lc/LicenseUtil;->BASE_URL:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Ljava/util/Date;-><init>(III)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    .line 67
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x3e8

    invoke-direct {v0, v4, v1, v3}, Ljava/util/Date;-><init>(III)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil;->INFINIT_DATE:Ljava/util/Date;

    .line 68
    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v2, v1}, Ljava/util/Date;-><init>(III)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil;->ABORTED:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/metamoji/lc/LicenseUtil;->mSerial:I

    .line 77
    iput v0, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    .line 81
    iput-boolean v0, p0, Lcom/metamoji/lc/LicenseUtil;->mChecking:Z

    .line 90
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    iput-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mExpire:Ljava/util/Date;

    .line 99
    sget-object v0, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mPublished:Ljava/util/Date;

    .line 101
    new-instance v0, Lcom/metamoji/lc/LicenseProperties;

    invoke-direct {v0, p1}, Lcom/metamoji/lc/LicenseProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    .line 102
    const-string v1, "mmjlc_licenseKey"

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/lc/LicenseProperties;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->setKey(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_1
    :goto_0
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    iput-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    return-void
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 5

    .line 398
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    int-to-long p0, p1

    mul-long/2addr p0, v3

    add-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private static varargs createHash([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 634
    const-string v0, "mmj"

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {v0}, Lcom/metamoji/lc/StringUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 611
    new-instance v0, Lcom/metamoji/lc/LicenseProperties;

    invoke-direct {v0, p0}, Lcom/metamoji/lc/LicenseProperties;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 612
    const-string v2, "mmjlc_deviceid"

    invoke-virtual {v0, p0, v2, v1}, Lcom/metamoji/lc/LicenseProperties;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 614
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {v0, p0, v2, v1}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 2

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getProductId()Ljava/lang/String;
    .locals 1

    .line 625
    const-string v0, "Android-Note-Business_3.1.8"

    return-object v0
.end method

.method protected static getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/metamoji/lc/LicenseUtil;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static invokeServiceAPI(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 648
    invoke-static {p0}, Lcom/metamoji/lc/LicenseUtil;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/lc/HttpUtil;->postJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 651
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 415
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 416
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 418
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 420
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private setLastCheckedDateOfValidOnlineLicense(Landroid/content/Context;Ljava/util/Date;)V
    .locals 4

    .line 768
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    const-string v1, "mmjlc_lastCheckedDateOfValidOnlineLicense"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static showActivateErrorDialog(Landroid/content/Context;ILcom/metamoji/lc/LicenseUtil$ActivateCallback;)V
    .locals 2

    .line 491
    sget v0, Lcom/metamoji/noteanytime/R$string;->lisence_title_input_licensekey:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 493
    invoke-static {p0, v0, p1, p2, v1}, Lcom/metamoji/lc/LicenseUtil;->showActivateResultDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lc/LicenseUtil$ActivateCallback;Z)V

    return-void
.end method

.method static showActivateResultDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lc/LicenseUtil$ActivateCallback;Z)V
    .locals 1

    .line 454
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$2;

    invoke-direct {v0, p3, p4}, Lcom/metamoji/lc/LicenseUtil$2;-><init>(Lcom/metamoji/lc/LicenseUtil$ActivateCallback;Z)V

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/lc/LicenseUtil;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static showActivateSuccessDialog(Landroid/content/Context;Ljava/util/Date;Lcom/metamoji/lc/LicenseUtil$ActivateCallback;)V
    .locals 2

    .line 483
    sget-object v0, Lcom/metamoji/lc/LicenseUtil;->INFINIT_DATE:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    sget v0, Lcom/metamoji/noteanytime/R$string;->licensekey_activated_expiration_date:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy/MM/dd"

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "%@"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-static {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    .line 487
    invoke-interface {p2, p0}, Lcom/metamoji/lc/LicenseUtil$ActivateCallback;->onResult(Z)V

    return-void
.end method

.method public static showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 426
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/lc/LicenseUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v0, p0}, Lcom/metamoji/lc/LicenseUtil;->runOnUiThread(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 464
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$3;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/lc/LicenseUtil$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/metamoji/lc/LicenseUtil;->runOnUiThread(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public activate(Landroid/content/Context;Ljava/lang/String;Lcom/metamoji/lc/LicenseUtil$ActivateCallback;)Z
    .locals 10

    const/4 v0, 0x1

    .line 504
    new-array v1, v0, [Z

    .line 505
    invoke-virtual {p0, p2, v1}, Lcom/metamoji/lc/LicenseUtil;->getKeyType(Ljava/lang/String;[Z)Lcom/metamoji/lc/LicenseUtil$LicenseType;

    move-result-object v2

    const/4 v3, 0x0

    .line 506
    aget-boolean v1, v1, v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v1, :cond_0

    .line 510
    iget-object v2, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v7, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-eq v2, v7, :cond_2

    .line 511
    sget p2, Lcom/metamoji/noteanytime/R$string;->licensekey_err_unsuitable_key:I

    invoke-static {p1, p2, p3}, Lcom/metamoji/lc/LicenseUtil;->showActivateErrorDialog(Landroid/content/Context;ILcom/metamoji/lc/LicenseUtil$ActivateCallback;)V

    return v3

    .line 514
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/lc/LicenseUtil$LicenseType;->ordinal()I

    move-result v2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    .line 523
    sget p2, Lcom/metamoji/noteanytime/R$string;->licensekey_err_invalid_key:I

    invoke-static {p1, p2, p3}, Lcom/metamoji/lc/LicenseUtil;->showActivateErrorDialog(Landroid/content/Context;ILcom/metamoji/lc/LicenseUtil$ActivateCallback;)V

    return v3

    .line 520
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$string;->licensekey_err_unsuitable_key:I

    invoke-static {p1, p2, p3}, Lcom/metamoji/lc/LicenseUtil;->showActivateErrorDialog(Landroid/content/Context;ILcom/metamoji/lc/LicenseUtil$ActivateCallback;)V

    return v3

    .line 527
    :cond_2
    invoke-virtual {p0, p2}, Lcom/metamoji/lc/LicenseUtil;->setKey(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v6

    .line 531
    :goto_0
    sget-object v2, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    .line 533
    iget-object v7, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    invoke-virtual {v7}, Lcom/metamoji/lc/LicenseUtil$LicenseType;->ordinal()I

    move-result v7

    if-eq v7, v6, :cond_9

    const/16 v6, 0x1c84

    if-eq v7, v5, :cond_6

    if-eq v7, v4, :cond_4

    move-object v4, v2

    :goto_1
    move v5, v3

    goto :goto_3

    .line 550
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/lc/LicenseUtil;->today()Ljava/util/Date;

    move-result-object v2

    .line 551
    iget v4, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    if-lt v4, v6, :cond_5

    .line 553
    sget-object v5, Lcom/metamoji/lc/LicenseUtil;->INFINIT_DATE:Ljava/util/Date;

    goto :goto_2

    .line 555
    :cond_5
    invoke-static {v2, v4}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    :goto_2
    move v9, v4

    move-object v4, v2

    move-object v2, v5

    move v5, v9

    goto :goto_3

    .line 536
    :cond_6
    iget-object v4, p0, Lcom/metamoji/lc/LicenseUtil;->mPublished:Ljava/util/Date;

    invoke-virtual {v4, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    .line 539
    :cond_7
    iget-object v2, p0, Lcom/metamoji/lc/LicenseUtil;->mPublished:Ljava/util/Date;

    .line 540
    iget v4, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    if-lt v4, v6, :cond_8

    .line 544
    sget-object v5, Lcom/metamoji/lc/LicenseUtil;->INFINIT_DATE:Ljava/util/Date;

    goto :goto_2

    .line 546
    :cond_8
    invoke-static {v2, v4}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v5

    goto :goto_2

    .line 560
    :cond_9
    iput-boolean v0, p0, Lcom/metamoji/lc/LicenseUtil;->mChecking:Z

    .line 562
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lc/LicenseUtil;->onlineActivate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 563
    sget p2, Lcom/metamoji/noteanytime/R$string;->licensekey_err_invalid_key:I

    invoke-static {p1, p2, p3}, Lcom/metamoji/lc/LicenseUtil;->showActivateErrorDialog(Landroid/content/Context;ILcom/metamoji/lc/LicenseUtil$ActivateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    iput-boolean v3, p0, Lcom/metamoji/lc/LicenseUtil;->mChecking:Z

    return v3

    .line 566
    :cond_a
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lc/LicenseUtil;->getExpirationDateFromServer(Landroid/content/Context;Z)Ljava/util/Date;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    iput-boolean v3, p0, Lcom/metamoji/lc/LicenseUtil;->mChecking:Z

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    goto :goto_1

    .line 577
    :goto_3
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-ltz v6, :cond_b

    .line 580
    sget p2, Lcom/metamoji/noteanytime/R$string;->licensekey_err_expired:I

    invoke-static {p1, p2, p3}, Lcom/metamoji/lc/LicenseUtil;->showActivateErrorDialog(Landroid/content/Context;ILcom/metamoji/lc/LicenseUtil$ActivateCallback;)V

    return v3

    .line 584
    :cond_b
    iget-object v3, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    const-string v6, "mmjlc_licenseAction"

    int-to-long v7, v1

    invoke-virtual {v3, p1, v6, v7, v8}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;J)V

    .line 585
    iget-object v1, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    const-string v3, "mmjlc_licenseKey"

    invoke-virtual {v1, p1, v3, p2}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object p2, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    const-string v1, "mmjlc_licenseSpan"

    int-to-long v5, v5

    invoke-virtual {p2, p1, v1, v5, v6}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;J)V

    .line 588
    iget-object p2, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    .line 593
    iget-object v3, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    if-ne p2, v1, :cond_c

    .line 590
    const-string p2, "mmjlc_LicenseExpirationDate"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;J)V

    .line 591
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/metamoji/lc/LicenseUtil;->setLastCheckedDateOfValidOnlineLicense(Landroid/content/Context;Ljava/util/Date;)V

    goto :goto_4

    .line 593
    :cond_c
    const-string p2, "mmjlc_LicenseInstalledDate"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_4
    const/4 p2, -0x1

    .line 595
    invoke-static {v2, p2}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/metamoji/lc/LicenseUtil;->showActivateSuccessDialog(Landroid/content/Context;Ljava/util/Date;Lcom/metamoji/lc/LicenseUtil$ActivateCallback;)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 568
    :catch_0
    :try_start_2
    sget p2, Lcom/metamoji/noteanytime/R$string;->licensekey_err_network:I

    invoke-static {p1, p2, p3}, Lcom/metamoji/lc/LicenseUtil;->showActivateErrorDialog(Landroid/content/Context;ILcom/metamoji/lc/LicenseUtil$ActivateCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 571
    iput-boolean v3, p0, Lcom/metamoji/lc/LicenseUtil;->mChecking:Z

    return v3

    :goto_5
    iput-boolean v3, p0, Lcom/metamoji/lc/LicenseUtil;->mChecking:Z

    .line 572
    throw p1
.end method

.method public canActivate(Landroid/content/Context;)Z
    .locals 3

    .line 379
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->getExpirationDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object p1

    .line 380
    iput-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mExpire:Ljava/util/Date;

    .line 382
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne v0, v1, :cond_0

    .line 384
    iget-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mExpire:Ljava/util/Date;

    sget-object v0, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lc/LicenseUtil;->isTrial()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lc/LicenseUtil;->today()Ljava/util/Date;

    move-result-object v0

    const/16 v2, 0x1e

    .line 391
    invoke-static {v0, v2}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 392
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public checkExpirationDate(Landroid/content/Context;)Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;
    .locals 3

    .line 266
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->getExpirationDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object p1

    .line 267
    iput-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mExpire:Ljava/util/Date;

    .line 268
    sget-object v0, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne p1, v0, :cond_0

    .line 270
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->NoRegistryKey:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-object p1

    .line 272
    :cond_0
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Expired:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-object p1

    .line 276
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 277
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 287
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Expired:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-object p1

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v2, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Offline:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v2, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Package:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne v1, v2, :cond_4

    .line 293
    :cond_3
    iget v1, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_4

    const/4 v1, 0x7

    goto :goto_0

    :cond_4
    const/16 v1, 0x1e

    .line 299
    :goto_0
    invoke-static {v0, v1}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_6

    .line 300
    iget-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne p1, v0, :cond_5

    .line 301
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->UpdateWarning:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-object p1

    .line 303
    :cond_5
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->ExpiredWarning:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-object p1

    .line 306
    :cond_6
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Valid:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-object p1
.end method

.method protected checkTrialKey(Lcom/metamoji/lc/LicenseUtil$LicenseType;I)Z
    .locals 1

    .line 176
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Package:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x78

    if-le p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Offline:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne p1, v0, :cond_2

    const/16 p1, 0x168

    if-gt p2, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public clearCache(Landroid/content/Context;)V
    .locals 4

    .line 800
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    const-string v1, "mmjlc_LicenseExpirationDate"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method protected decode(Ljava/lang/String;)[B
    .locals 14

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x4d

    if-eq v1, v3, :cond_1

    return-object v2

    :cond_1
    const/4 v1, 0x2

    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x9

    .line 194
    new-array v4, v3, [B

    const/16 v5, 0x16

    move v6, v0

    move v8, v6

    move v9, v8

    move v10, v9

    move v7, v1

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_a

    .line 203
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_2

    goto :goto_2

    .line 209
    :cond_2
    const-string v12, "BCDFGHJKMPQRTVWXY2346789"

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_3

    return-object v2

    :cond_3
    const/4 v12, 0x4

    if-ne v7, v12, :cond_5

    .line 215
    rem-int/lit8 v8, v8, 0x18

    if-eq v8, v11, :cond_4

    return-object v2

    :cond_4
    move v7, v0

    goto :goto_2

    :cond_5
    add-int/2addr v11, v5

    .line 221
    rem-int/lit8 v11, v11, 0x18

    const/16 v12, 0xf

    if-le v11, v12, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v5, v5, 0x17

    .line 225
    rem-int/lit8 v5, v5, 0x18

    add-int/lit8 v12, v7, 0x1

    if-eqz v7, :cond_9

    const/4 v13, 0x1

    if-eq v7, v13, :cond_7

    if-eq v7, v1, :cond_9

    const/4 v13, 0x3

    if-eq v7, v13, :cond_7

    :goto_1
    move v7, v12

    goto :goto_2

    :cond_7
    shl-int/lit8 v7, v9, 0x4

    or-int v9, v7, v11

    if-lt v10, v3, :cond_8

    return-object v2

    :cond_8
    add-int/lit8 v7, v10, 0x1

    int-to-byte v11, v9

    .line 241
    aput-byte v11, v4, v10

    add-int/2addr v8, v9

    move v10, v7

    goto :goto_1

    :cond_9
    int-to-byte v9, v11

    goto :goto_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    return-object v4
.end method

.method getCachedExpirationDate(Landroid/content/Context;)Ljava/util/Date;
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "mmjlc_LicenseExpirationDate"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/metamoji/lc/LicenseProperties;->getProperty(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 365
    sget-object p1, Lcom/metamoji/lc/LicenseUtil;->ABORTED:Ljava/util/Date;

    return-object p1

    .line 370
    :cond_1
    :try_start_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 372
    :catch_0
    sget-object p1, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    return-object p1
.end method

.method public getExpirationDate(Landroid/content/Context;)Ljava/util/Date;
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mExpire:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 312
    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mExpire:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Unknown:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lc/LicenseUtil;->getExpirationDateFromServer(Landroid/content/Context;Z)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 321
    :cond_2
    iget v0, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    const/16 v1, 0x1c84

    if-lt v0, v1, :cond_3

    .line 324
    sget-object p1, Lcom/metamoji/lc/LicenseUtil;->INFINIT_DATE:Ljava/util/Date;

    return-object p1

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Offline:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne v0, v1, :cond_4

    .line 329
    iget-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mPublished:Ljava/util/Date;

    iget v0, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    invoke-static {p1, v0}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "mmjlc_LicenseInstalledDate"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/metamoji/lc/LicenseProperties;->getProperty(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 334
    new-instance p1, Ljava/util/Date;

    iget v2, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/4 v0, 0x1

    .line 335
    invoke-static {p1, v0}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 315
    :cond_5
    :goto_0
    sget-object p1, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    return-object p1
.end method

.method public getExpirationDateFromServer(Landroid/content/Context;Z)Ljava/util/Date;
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 346
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->queryRestDays(Landroid/content/Context;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 349
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->getCachedExpirationDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object p2

    .line 350
    sget-object v0, Lcom/metamoji/lc/LicenseUtil;->ABORTED:Ljava/util/Date;

    invoke-virtual {p2, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 351
    sget-object p1, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    return-object p1

    .line 354
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->queryRestDays(Landroid/content/Context;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected getKeyType(Ljava/lang/String;[Z)Lcom/metamoji/lc/LicenseUtil$LicenseType;
    .locals 4

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 140
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    return-object p1

    .line 143
    :cond_0
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Unknown:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v3, "MA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    goto :goto_0

    .line 147
    :cond_1
    const-string v3, "MD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Offline:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    goto :goto_0

    .line 149
    :cond_2
    const-string v3, "MP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Package:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    .line 153
    :cond_3
    :goto_0
    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Unknown:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-eq v0, v1, :cond_5

    .line 154
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->decode(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_4

    .line 158
    sget-object p1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    return-object p1

    :cond_4
    const/4 v1, 0x3

    .line 161
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x5

    aget-byte p1, p1, v3

    or-int/2addr p1, v1

    if-eqz p2, :cond_5

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/lc/LicenseUtil;->checkTrialKey(Lcom/metamoji/lc/LicenseUtil$LicenseType;I)Z

    move-result p1

    aput-boolean p1, p2, v2

    :cond_5
    return-object v0
.end method

.method public getLastCheckedDateOfValidOnlineLicense(Landroid/content/Context;)Ljava/util/Date;
    .locals 5

    .line 764
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    sget-object v2, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "mmjlc_lastCheckedDateOfValidOnlineLicense"

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/metamoji/lc/LicenseProperties;->getProperty(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public isOnlineLicenseCacheExpiring(Landroid/content/Context;)Z
    .locals 3

    .line 792
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->getCachedExpirationDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 793
    sget-object v1, Lcom/metamoji/lc/LicenseUtil;->ABORTED:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public isOnlineLicenseCacheValid(Landroid/content/Context;)Z
    .locals 2

    .line 778
    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->getCachedExpirationDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 779
    sget-object v1, Lcom/metamoji/lc/LicenseUtil;->ABORTED:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public isTrial()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    iget v1, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/lc/LicenseUtil;->checkTrialKey(Lcom/metamoji/lc/LicenseUtil$LicenseType;I)Z

    move-result v0

    return v0
.end method

.method onlineActivate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 726
    const-string v0, "tt_hash"

    .line 0
    const-string v1, "network error - "

    const/4 v2, 0x0

    .line 729
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 730
    invoke-static {p1}, Lcom/metamoji/lc/LicenseUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 731
    invoke-direct {p0}, Lcom/metamoji/lc/LicenseUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 732
    invoke-static {}, Lcom/metamoji/lc/LicenseUtil;->getProductId()Ljava/lang/String;

    move-result-object v5

    .line 733
    const-string v6, "tt_deviceid"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string v6, "tt_productid"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    const-string v6, "tt_licensekey"

    invoke-virtual {v3, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v6, "tt_devicename"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x4

    .line 737
    new-array v7, v6, [Ljava/lang/String;

    aput-object p1, v7, v2

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v9, 0x2

    aput-object p2, v7, v9

    const/4 p2, 0x3

    aput-object v4, v7, p2

    invoke-static {v7}, Lcom/metamoji/lc/LicenseUtil;->createHash([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    const-string v4, "license/activate2"

    invoke-static {v4, v3}, Lcom/metamoji/lc/LicenseUtil;->invokeServiceAPI(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 741
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    const-string v4, "i_status"

    const/4 v7, -0x1

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 743
    const-string v10, "i_result"

    invoke-virtual {v3, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 747
    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v2

    aput-object v5, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, p2

    invoke-static {v6}, Lcom/metamoji/lc/LicenseUtil;->createHash([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    move v11, v8

    move v8, v2

    move v2, v11

    goto :goto_1

    .line 746
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move p1, v2

    move v2, v8

    goto :goto_2

    :catch_0
    move p1, v2

    :goto_2
    if-nez v2, :cond_3

    return p1

    .line 757
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queryRestDays(Landroid/content/Context;)Ljava/util/Date;
    .locals 14

    .line 664
    const-string v0, "tt_hash"

    .line 0
    const-string v1, "network error - "

    const/4 v2, 0x0

    .line 666
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 667
    invoke-static {p1}, Lcom/metamoji/lc/LicenseUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 668
    invoke-direct {p0}, Lcom/metamoji/lc/LicenseUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    .line 669
    invoke-static {}, Lcom/metamoji/lc/LicenseUtil;->getProductId()Ljava/lang/String;

    move-result-object v6

    .line 670
    const-string v7, "tt_deviceid"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v7, "tt_productid"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    const-string v7, "tt_licensekey"

    iget-object v8, p0, Lcom/metamoji/lc/LicenseUtil;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    const-string v7, "tt_devicename"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v7, 0x4

    .line 674
    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v10, 0x1

    aput-object v6, v8, v10

    iget-object v11, p0, Lcom/metamoji/lc/LicenseUtil;->mKey:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v11, v8, v12

    const/4 v11, 0x3

    aput-object v5, v8, v11

    invoke-static {v8}, Lcom/metamoji/lc/LicenseUtil;->createHash([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    const-string v5, "license/getremainingdays"

    invoke-static {v5, v3}, Lcom/metamoji/lc/LicenseUtil;->invokeServiceAPI(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 678
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string v5, "i_status"

    const/4 v8, -0x1

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 680
    const-string v13, "i_result"

    invoke-virtual {v3, v13, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 681
    const-string v13, "i_days"

    invoke-virtual {v3, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v8, :cond_5

    const/4 v1, 0x5

    .line 687
    new-array v13, v1, [Ljava/lang/String;

    aput-object v4, v13, v9

    aput-object v6, v13, v10

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v12

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v11

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v7

    invoke-static {v13}, Lcom/metamoji/lc/LicenseUtil;->createHash([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq v5, v7, :cond_1

    if-ne v5, v1, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    sget-object v0, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    goto :goto_1

    .line 694
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lc/LicenseUtil;->today()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/metamoji/lc/LicenseUtil;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 699
    iget-boolean v0, p0, Lcom/metamoji/lc/LicenseUtil;->mChecking:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    if-eq v5, v12, :cond_3

    .line 701
    const-string v0, "mmjlc_LicenseExpirationDate"

    if-eq v5, v7, :cond_2

    if-eq v5, v1, :cond_2

    .line 714
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    const-wide/16 v3, -0x1

    invoke-virtual {v1, p1, v0, v3, v4}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;J)V

    return-object v2

    .line 705
    :cond_2
    iget-object v1, p0, Lcom/metamoji/lc/LicenseUtil;->mLicenseProp:Lcom/metamoji/lc/LicenseProperties;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, p1, v0, v3, v4}, Lcom/metamoji/lc/LicenseProperties;->setProperty(Landroid/content/Context;Ljava/lang/String;J)V

    .line 706
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/metamoji/lc/LicenseUtil;->setLastCheckedDateOfValidOnlineLicense(Landroid/content/Context;Ljava/util/Date;)V

    :cond_3
    return-object v2

    .line 688
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "network error - invalid hash"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 684
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    return-object v2
.end method

.method protected setKey(Ljava/lang/String;)V
    .locals 5

    .line 117
    iput-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lc/LicenseUtil;->getKeyType(Ljava/lang/String;[Z)Lcom/metamoji/lc/LicenseUtil$LicenseType;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    .line 120
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mType:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Unknown:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseUtil;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 127
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/metamoji/lc/LicenseUtil;->mSerial:I

    const/4 v0, 0x3

    .line 128
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/metamoji/lc/LicenseUtil;->mAvailable:I

    .line 130
    :try_start_0
    new-instance v0, Ljava/util/Date;

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    add-int/lit8 v2, v2, 0x64

    const/4 v4, 0x7

    aget-byte v4, p1, v4

    sub-int/2addr v4, v1

    aget-byte p1, p1, v3

    invoke-direct {v0, v2, v4, p1}, Ljava/util/Date;-><init>(III)V

    iput-object v0, p0, Lcom/metamoji/lc/LicenseUtil;->mPublished:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 132
    :catch_0
    sget-object p1, Lcom/metamoji/lc/LicenseUtil;->INVALID_DATE:Ljava/util/Date;

    iput-object p1, p0, Lcom/metamoji/lc/LicenseUtil;->mPublished:Ljava/util/Date;

    :cond_1
    :goto_0
    return-void
.end method

.method today()Ljava/util/Date;
    .locals 2

    .line 402
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    .line 403
    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 404
    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 405
    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    return-object v0
.end method
