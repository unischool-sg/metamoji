.class public Lcom/metamoji/noteanytime/ModelInfo;
.super Ljava/lang/Object;
.source "ModelInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;
    }
.end annotation


# static fields
.field public static final isBeta:Z = false

.field public static final isBeta2:Z = false

.field public static final isDefaultValueChangeCollaboDispPrivateModeType:Z = false

.field public static final isDefaultValueChangeCollaboDistributeCommand:Z = false

.field public static final isDefaultValueChangeOpenDate:Z = false

.field public static final isEvalEdition:Z

.field public static final isForBiz:Z = true

.field public static final isForConsumer:Z = false

.field public static final isForKigyo:Z = false

.field public static final isForSchool:Z = true

.field public static final isForSeminar:Z = false

.field public static final isFree:Z = false

.field public static final isKindle:Z = false

.field public static isMediaFilesGlobalExportEnabled:Z = false

.field public static isMediaFilesNotUsePhotoEnabled:Z = false

.field public static final isPreOwl:Z = false

.field public static final isPremium:Z = false

.field public static final isPresenterOnPrivateModeEnabled:Z = false

.field public static final isPresenterViewingPageIconEnabled:Z = false

.field public static final isShare:Z = true

.field public static final isShareExecActionAfterReceiveAllDataEnabled:Z = true

.field public static final isShareForMeetingEnabled:Z = false

.field public static final isShareNoteFromShareNoteEnabled:Z = true

.field public static final isShareOpenInPrivateModeOptionEnabled:Z = false

.field public static isTextVerticalWritingEnabled:Z = false

.field public static final isThirdDmEnabled:Z = true

.field public static isVideoUnitEnabled:Z = false

.field public static final isVoiceEnabled:Z = true

.field public static final isVoicePlayOnly:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/noteanytime/BuildConfig;->EVAL_EDITION:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    const/4 v0, 0x1

    .line 126
    sput-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isMediaFilesNotUsePhotoEnabled:Z

    .line 128
    sput-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isMediaFilesGlobalExportEnabled:Z

    .line 132
    sput-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isVideoUnitEnabled:Z

    .line 134
    sput-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProductVersion()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductVersionToMinor()Ljava/lang/String;
    .locals 5

    .line 149
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 152
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    move v2, v1

    :cond_0
    if-eq v2, v3, :cond_1

    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
