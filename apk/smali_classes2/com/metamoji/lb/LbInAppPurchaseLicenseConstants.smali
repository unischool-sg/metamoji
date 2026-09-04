.class public Lcom/metamoji/lb/LbInAppPurchaseLicenseConstants;
.super Ljava/lang/Object;
.source "LbInAppPurchaseLicenseConstants.java"


# static fields
.field public static final LICENSEID_ANYTIMESERVICE_TRIAL:Ljava/lang/String; = ".anytimeservice.trial"

.field public static final LICENSEID_FOR_BIZ_MAZEC_DE:Ljava/lang/String; = "MZ_DE"

.field public static final LICENSEID_FOR_BIZ_MAZEC_EN:Ljava/lang/String; = "MZ_EN"

.field public static final LICENSEID_FOR_BIZ_MAZEC_ES:Ljava/lang/String; = "MZ_ES"

.field public static final LICENSEID_FOR_BIZ_MAZEC_FR:Ljava/lang/String; = "MZ_FR"

.field public static final LICENSEID_FOR_BIZ_MAZEC_IT:Ljava/lang/String; = "MZ_IT"

.field public static final LICENSEID_FOR_BIZ_MAZEC_JA:Ljava/lang/String; = "MZ"

.field public static final LICENSEID_FOR_BIZ_MAZEC_KO:Ljava/lang/String; = "MZ_KO"

.field public static final LICENSEID_FOR_BIZ_MAZEC_NL:Ljava/lang/String; = "MZ_NL"

.field public static final LICENSEID_FOR_BIZ_MAZEC_PL:Ljava/lang/String; = "MZ_PL"

.field public static final LICENSEID_FOR_BIZ_MAZEC_PT:Ljava/lang/String; = "MZ_PT"

.field public static final LICENSEID_FOR_BIZ_MAZEC_RU:Ljava/lang/String; = "MZ_RU"

.field public static final LICENSEID_FOR_BIZ_MAZEC_ZH:Ljava/lang/String; = "MZ_ZH"

.field public static final LICENSEID_FOR_BIZ_NOTEANYTIME:Ljava/lang/String; = "NA"

.field public static final LICENSEID_FOR_BIZ_OFFICE_FILE_CONVERT:Ljava/lang/String; = "CV"

.field public static final LICENSEID_FOR_BIZ_SHAREANYTIME:Ljava/lang/String; = "SA"

.field public static final LICENSEID_FOR_SCHOOL:Ljava/lang/String; = "CR"

.field public static final LICENSEID_FOR_SCHOOL_TEACHER:Ljava/lang/String; = "TEACHER"

.field public static final LICENSEID_FOR_SEMINAR:Ljava/lang/String; = "ZM"

.field public static final LICENSEID_GOLD_SERVICE:Ljava/lang/String; = ".goldservice.base1"

.field public static final LICENSEID_USE_NOTE_ANYTIME:Ljava/lang/String; = "Android.noteanytime.paid"

.field public static final MAZEC_LICENSE_IDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MZ_EN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MZ_FR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MZ_DE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MZ_IT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MZ_ES"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MZ_RU"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MZ_PT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MZ_NL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MZ_PL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MZ_ZH"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MZ_KO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/lb/LbInAppPurchaseLicenseConstants;->MAZEC_LICENSE_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
