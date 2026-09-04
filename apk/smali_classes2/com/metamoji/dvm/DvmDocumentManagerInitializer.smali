.class public Lcom/metamoji/dvm/DvmDocumentManagerInitializer;
.super Ljava/lang/Object;
.source "DvmDocumentManagerInitializer.java"


# static fields
.field public static final DEFAULT_VER:I = 0x0

.field private static final DMV3MGR_DLV2:I = 0x1

.field private static final DMV3MGR_NOT:I = 0x0

.field private static final DMV3MGR_UPV3:I = 0x2

.field public static final DMV3_LIB_VER:I = 0x4

.field public static final DMV3_VER:I = 0x3

.field private static _DocumentManagerVersion:I

.field private static m_status:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelMigration()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    return-void
.end method

.method private static currentVer()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static endMigration()V
    .locals 2

    .line 81
    sget v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->existMigrationData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 84
    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    .line 87
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->currentVer()I

    move-result v0

    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->_DocumentManagerVersion:I

    .line 88
    invoke-static {v0}, Lcom/metamoji/nt/NtClientSettingsStore;->storeDocumentManagerVersionToServer(I)V

    :cond_0
    return-void
.end method

.method public static endV2LocalDataDL()Z
    .locals 2

    .line 67
    sget v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->migration()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static existMigrationData()Z
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->hasFromV2Documents()Z

    move-result v0

    return v0
.end method

.method public static init()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    .line 38
    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->_DocumentManagerVersion:I

    return-void
.end method

.method public static isMigrationDone()Z
    .locals 2

    .line 125
    sget v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->_DocumentManagerVersion:I

    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->currentVer()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static migration()Z
    .locals 2

    .line 137
    sget v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->_DocumentManagerVersion:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 138
    invoke-static {}, Lcom/metamoji/lb/LbPartsUtils;->migrationV2Library()Z

    const/4 v0, 0x2

    .line 139
    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static onMigration()Z
    .locals 1

    .line 107
    sget v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onV2LocalDataDL()Z
    .locals 2

    .line 59
    sget v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setDocumentManagerVersion(I)V
    .locals 0

    .line 24
    sput p0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->_DocumentManagerVersion:I

    return-void
.end method

.method public static startMigration()Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->isMigrationDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 48
    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static unneedMigration()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->m_status:I

    .line 160
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->currentVer()I

    move-result v0

    sput v0, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->_DocumentManagerVersion:I

    .line 161
    invoke-static {v0}, Lcom/metamoji/nt/NtClientSettingsStore;->storeDocumentManagerVersionToServer(I)V

    return-void
.end method
