.class public Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;
.super Ljava/lang/Object;
.source "ModelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/ModelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuildOptions"
.end annotation


# static fields
.field public static final APP_BUNDLE_ID:Ljava/lang/String; = "com.metamoji.shareanytime"

.field public static final AUTHORITY:Ljava/lang/String; = "com.metamoji.share_classroom.provider"

.field public static final BUILD_PRODUCT_NAME:Ljava/lang/String; = "Android-Share-G-ClassRoom"

.field public static final CDN_SERVER_URL_BASE:Ljava/lang/String; = "https://cdn.metamoji.com/"

.field public static DIGITAL_CABINET_URL_ROOT:Ljava/lang/String; = "https://mps.metamoji.com/"

.field public static final DOWNLOAD_SERVER_URL_BASE:Ljava/lang/String; = "https://download.metamoji.com/"

.field public static final LICENSE_SERVER_BASE_PATH:Ljava/lang/String; = "mmjeditor2"

.field public static final MAINT_CHECK_PATH:Ljava/lang/String; = "maintenance2_common.txt"

.field public static final REST_BASE_PATH:Ljava/lang/String; = "mmjeditor2/2.0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DIGITAL_CABINET_URL_BASE()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRestHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
