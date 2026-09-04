.class public final Lcom/metamoji/noteanytime/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.metamoji.share_classroom"

.field public static final BUILD_PRODUCT_NAME:Ljava/lang/String; = "Android-Share-G-ClassRoom"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final CDN_SERVER_URL_BASE:Ljava/lang/String; = "https://cdn.metamoji.com/"

.field public static final DEBUG:Z = false

.field public static final DOWNLOAD_SERVER_URL_BASE:Ljava/lang/String; = "https://download.metamoji.com/"

.field public static final EMBEDDING_MAZEC:Ljava/lang/Boolean;

.field public static final EVAL_EDITION:Ljava/lang/Boolean;

.field public static final FLAVOR:Ljava/lang/String; = "share_classroom"

.field public static final FOR_BIZ:Ljava/lang/Boolean;

.field public static final FOR_CLASSROOM:Ljava/lang/Boolean;

.field public static final FOR_KIGYO:Ljava/lang/Boolean;

.field public static final FOR_SEMINAR:Ljava/lang/Boolean;

.field public static final FREE:Ljava/lang/Boolean;

.field public static final MMJ_SERVER_URL_BASE:Ljava/lang/String; = "https://cabinet.7knowledge.com/"

.field public static final MMJ_SERVER_URL_BASE_BIZ:Ljava/lang/String; = "https://mps.metamoji.com/"

.field public static final PURCHASED_MAZEC:Ljava/lang/Boolean;

.field public static final SHARE:Ljava/lang/Boolean;

.field public static final URL_SCHEME:Ljava/lang/String; = "metamojiclassroom"

.field public static final VERSION_CODE:I = 0x2b

.field public static final VERSION_NAME:Ljava/lang/String; = "3.15.1.0"

.field public static final VOICE_ENABLED:Ljava/lang/Boolean;

.field public static final VOICE_PLAY_ONLY:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/metamoji/noteanytime/BuildConfig;->EMBEDDING_MAZEC:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/metamoji/noteanytime/BuildConfig;->EVAL_EDITION:Ljava/lang/Boolean;

    .line 24
    sput-object v1, Lcom/metamoji/noteanytime/BuildConfig;->FOR_BIZ:Ljava/lang/Boolean;

    .line 26
    sput-object v0, Lcom/metamoji/noteanytime/BuildConfig;->FOR_CLASSROOM:Ljava/lang/Boolean;

    .line 28
    sput-object v1, Lcom/metamoji/noteanytime/BuildConfig;->FOR_KIGYO:Ljava/lang/Boolean;

    .line 30
    sput-object v1, Lcom/metamoji/noteanytime/BuildConfig;->FOR_SEMINAR:Ljava/lang/Boolean;

    .line 32
    sput-object v1, Lcom/metamoji/noteanytime/BuildConfig;->FREE:Ljava/lang/Boolean;

    .line 38
    sput-object v0, Lcom/metamoji/noteanytime/BuildConfig;->PURCHASED_MAZEC:Ljava/lang/Boolean;

    .line 40
    sput-object v0, Lcom/metamoji/noteanytime/BuildConfig;->SHARE:Ljava/lang/Boolean;

    .line 44
    sput-object v0, Lcom/metamoji/noteanytime/BuildConfig;->VOICE_ENABLED:Ljava/lang/Boolean;

    .line 46
    sput-object v1, Lcom/metamoji/noteanytime/BuildConfig;->VOICE_PLAY_ONLY:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
