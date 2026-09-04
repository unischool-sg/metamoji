.class public final Lcom/metamoji/mazec/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.metamoji.mazec"

.field public static final APP_ID:Ljava/lang/String; = "com.metamoji.mazec"

.field public static final APP_ID_7NOTES:Ljava/lang/String; = "com.sevenknowledge.sevennotesproduct"

.field public static final APP_ID_BETA:Ljava/lang/String; = "com.metamoji.mazecbeta"

.field public static final APP_ID_PRODUCT:Ljava/lang/String; = "com.metamoji.mazec"

.field public static final APP_ID_TRIAL:Ljava/lang/String; = "com.metamoji.mazectrial"

.field public static final BASE_PACKAGE:Ljava/lang/String; = "com.metamoji.noteanytime"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final CDN_SERVER_HOST:Ljava/lang/String; = "https://cdn-test.metamoji.com/"

.field public static final DEBUG:Z = false

.field public static final DEVELOP_MODE:Z = false

.field public static final DEVICE_NAME:Lcom/metamoji/mazec/BuildOption$DeviceName;

.field public static final DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

.field public static final EMBEDDED_LANG_PACK:Z = false

.field public static final EMBEDDED_MAZEC:Z = true

.field public static final ENGLISH_AVAILABLE:Z = false

.field public static final EXPIRE_BY_DATE:Z = false

.field public static final EXPIRE_BY_PERIOD:Z = false

.field public static final EXPIRE_DATE_FORMAT:Ljava/lang/String; = ""

.field public static final EXPIRE_DATE_STR:Ljava/lang/String; = ""

.field public static final EXPIRE_DAYS:I = 0x0

.field public static final FLAVOR:Ljava/lang/String; = "ja"

.field public static final FOR_SCHOOL:Z = true

.field public static final GLOBAL_MODE:Z = false

.field public static final HELP_URI:Ljava/lang/String; = "https://product.metamoji.com/android_top/mazec3/support/help/"

.field public static final JAPANESE_AVAILABLE:Z = true

.field public static final PRODUCT_NAME:Ljava/lang/String; = "Android-Share-G-ClassRoom"

.field public static final PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

.field public static final PRODUCT_VERSION_CODE:I = 0x12

.field public static final PRODUCT_VERSION_NAME:Ljava/lang/String; = "2.0.0"

.field public static final SHOW_TESTMENU:Z = false

.field public static final STORE_SERVER_HOST:Ljava/lang/String; = "https://cabinet-test.7knowledge.com/"

.field public static final SUPPORT_IN_APP_BILLING:Z

.field public static final SUPPORT_MULTI_LANGUAGE:Z = false

.field public static final VERSION_CODE:I = 0x12

.field public static final VERSION_NAME:Ljava/lang/String; = "2.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceName;->NONE:Lcom/metamoji/mazec/BuildOption$DeviceName;

    sput-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_NAME:Lcom/metamoji/mazec/BuildOption$DeviceName;

    .line 28
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->NONE:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sput-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    .line 39
    sget-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->PREMIUM:Lcom/metamoji/mazec/BuildOption$ProductType;

    sput-object v0, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    .line 42
    sget-object v0, Lcom/metamoji/noteanytime/BuildConfig;->PURCHASED_MAZEC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/metamoji/mazec/BuildConfig;->SUPPORT_IN_APP_BILLING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
