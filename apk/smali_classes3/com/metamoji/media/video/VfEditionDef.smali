.class public final Lcom/metamoji/media/video/VfEditionDef;
.super Ljava/lang/Object;
.source "VfEditionDef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0011\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000eR\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u00058FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0015\u0010\u0003\u001a\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0016\u001a\u00020\u00058FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0003\u001a\u0004\u0008\u0016\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfEditionDef;",
        "",
        "<init>",
        "()V",
        "isCursedByMediaFileManager",
        "",
        "isAuthHojin",
        "maxBitRate",
        "",
        "penetrateLayerOnTap",
        "accessTokenEnabled",
        "allowChairmansDirection",
        "hasManualAutoSyncButton",
        "getHasManualAutoSyncButton",
        "()Z",
        "hasLocalFileManageButton",
        "getHasLocalFileManageButton",
        "hasServerFileManageButton",
        "getHasServerFileManageButton",
        "allowPictureInPicture",
        "isCloudAvailable",
        "isCloudAvailable$annotations",
        "isMovieFeatureAvailable",
        "isMovieFeatureAvailable$annotations",
        "isPersonalLayer",
        "layer",
        "Lcom/metamoji/nt/NtLayerController;",
        "defaultSettingInfo",
        "",
        "settingInfo",
        "Lcom/metamoji/media/video/VfSettingInfo;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/media/video/VfEditionDef;

.field public static final accessTokenEnabled:Z = false

.field public static final allowChairmansDirection:Z = false

.field public static final allowPictureInPicture:Z = false

.field private static final hasLocalFileManageButton:Z

.field private static final hasManualAutoSyncButton:Z = false

.field public static final isAuthHojin:Z = true

.field public static final isCursedByMediaFileManager:Z = false

.field public static final maxBitRate:I = 0x2c1

.field public static final penetrateLayerOnTap:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/VfEditionDef;

    invoke-direct {v0}, Lcom/metamoji/media/video/VfEditionDef;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/VfEditionDef;->INSTANCE:Lcom/metamoji/media/video/VfEditionDef;

    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/metamoji/media/video/VfEditionDef;->hasLocalFileManageButton:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isCloudAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic isCloudAvailable$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isMovieFeatureAvailable()Z
    .locals 2

    .line 31
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableMovie:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic isMovieFeatureAvailable$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final defaultSettingInfo(Lcom/metamoji/media/video/VfSettingInfo;)V
    .locals 2

    const-string/jumbo v0, "settingInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/VfSettingInfo;->setNotUsePhotoAlbum(Z)V

    .line 48
    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/VfSettingInfo;->setUploadSynchronizeApp(Z)V

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1, v1}, Lcom/metamoji/media/video/VfSettingInfo;->setUploadOnIdle(Z)V

    .line 50
    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/VfSettingInfo;->setUploadOnIdleShareOnly(Z)V

    .line 51
    invoke-virtual {p1, v1}, Lcom/metamoji/media/video/VfSettingInfo;->setAllowCellularAccess(Z)V

    return-void
.end method

.method public final getHasLocalFileManageButton()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/metamoji/media/video/VfEditionDef;->hasLocalFileManageButton:Z

    return v0
.end method

.method public final getHasManualAutoSyncButton()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/metamoji/media/video/VfEditionDef;->hasManualAutoSyncButton:Z

    return v0
.end method

.method public final getHasServerFileManageButton()Z
    .locals 1

    .line 21
    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isCloudAvailable()Z

    move-result v0

    return v0
.end method

.method public final isPersonalLayer(Lcom/metamoji/nt/NtLayerController;)Z
    .locals 2

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6c6a00f2

    if-eq v0, v1, :cond_3

    const v1, -0x195d9818

    if-eq v0, v1, :cond_1

    const v1, 0x342adf2b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "system:personal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "system:teacher_personal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const-string/jumbo v0, "system:personal_template"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
