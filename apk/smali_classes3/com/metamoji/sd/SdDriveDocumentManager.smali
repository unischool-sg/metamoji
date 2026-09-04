.class public Lcom/metamoji/sd/SdDriveDocumentManager;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTENTS_DIR:Ljava/lang/String; = "/.sdcontents"

.field private static final MAX_TAGORDER_BYTES:I = 0xfa00

.field private static final MMJSD_NOMALIZED_NUMBER_CACHE_SPAN:I = 0x5265c00

.field private static final MMJSD_NON_NUMBER_CACHE_SPAN:I = 0x5265c00

.field private static final MMJSD_NUMBER_CASHE_SPAN:I = 0x0

.field private static final NUMBER_OF_MANAGEDOBJECT_PROCESSED_AT_SAVE:I = 0x3e8

.field private static final SHAREVIEW_DEFAULT_LAST_SEQUENCE:Ljava/lang/String; = "-1"

.field private static final SHAREVIEW_PRIVATE_DRIVE_ID:Ljava/lang/String; = "0"

.field private static final THUMBNAIL_DIR:Ljava/lang/String; = "/.sdthumbnails"

.field public static final m_lockObject:Ljava/lang/Object;


# instance fields
.field protected m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

.field protected m_locked:Z

.field protected m_lockedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

.field protected m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field protected m_members:Lcom/metamoji/sd/SdDriveMembers;

.field protected m_mergingLockObject:Ljava/lang/Object;

.field protected m_needSyncFlag:Ljava/lang/Boolean;

.field protected m_nonMembers:Lcom/metamoji/sd/SdDriveMembers;

.field protected m_normalizedMembers:Lcom/metamoji/sd/SdDriveMembers;

.field private m_updateMemberWaiting:Z


# direct methods
.method static bridge synthetic -$$Nest$fputm_updateMemberWaiting(Lcom/metamoji/sd/SdDriveDocumentManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_updateMemberWaiting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgenerateDocumentId(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/SdDriveContentsMOCManager;Lcom/metamoji/sd/cs/SdCloudServiceContext;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockedIds:Ljava/util/HashMap;

    .line 176
    new-instance v0, Lcom/metamoji/sd/SdDriveMembers;

    invoke-direct {v0}, Lcom/metamoji/sd/SdDriveMembers;-><init>()V

    iput-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    .line 177
    new-instance v0, Lcom/metamoji/sd/SdDriveMembers;

    invoke-direct {v0}, Lcom/metamoji/sd/SdDriveMembers;-><init>()V

    iput-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_normalizedMembers:Lcom/metamoji/sd/SdDriveMembers;

    .line 178
    new-instance v0, Lcom/metamoji/sd/SdDriveMembers;

    invoke-direct {v0}, Lcom/metamoji/sd/SdDriveMembers;-><init>()V

    iput-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_nonMembers:Lcom/metamoji/sd/SdDriveMembers;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_mergingLockObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_updateMemberWaiting:Z

    .line 184
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    .line 185
    new-instance v0, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v0, p1}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    iput-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 186
    new-instance p1, Lcom/metamoji/sd/cs/SdCloudService;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/cs/SdCloudService;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    return-void
.end method

.method private callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 7452
    :cond_0
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/SdFailureBlock;->setArgument(Ljava/lang/Object;)V

    .line 7455
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/sd/SdFailureBlock;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7457
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[SdDriveDocumentManager] :: ERROR failureCall: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 7436
    :cond_0
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/SdSuccessBlock;->setArgument(Ljava/lang/Object;)V

    .line 7439
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/sd/SdSuccessBlock;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7441
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[SdDriveDocumentManager] :: ERROR callSuccess: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static dirNameForDrive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 167
    const-string v0, "%s_%s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 1938
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/TimeUtils;->getDateStringNowForTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1939
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide v1

    .line 1940
    const-string/jumbo v3, "title"

    invoke-interface {p0, v3, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1941
    const-string/jumbo v0, "template"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1942
    const-string v0, "create"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1943
    const-string/jumbo v0, "update"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1944
    const-string/jumbo v0, "tags"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1947
    invoke-interface {p0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;

    move-result-object p0

    .line 1948
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setThumbnailType(Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;)V

    const/4 v0, 0x0

    .line 1949
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->setThumbnail(Lcom/metamoji/cm/Blob;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 1955
    throw p0

    :catch_0
    move-exception p0

    .line 1951
    const-string v0, "[SdDriveDocumentManager] :: ERROR doInitMetaData : %s"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1952
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "ERROR doInitMetaData"

    invoke-direct {v0, v1, p0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static documentContensRootDir()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.sdcontents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static documentContentsDirPathWithName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 143
    invoke-static {}, Lcom/metamoji/sd/SdDriveDocumentManager;->documentContensRootDir()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static documentThumbnailDirPathWithName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 155
    invoke-static {}, Lcom/metamoji/sd/SdDriveDocumentManager;->documentThumbnailRootDir()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static documentThumbnailRootDir()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.sdthumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private duplicateDocumentTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "^(.*)"

    .line 1635
    sget-object v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1642
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1643
    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_DocInfo_Copied_Title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "([0-9]{1,10})$"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1650
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1651
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 1658
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1659
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1660
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v3

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v5

    .line 1664
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x40

    if-le v2, v3, :cond_1

    .line 1666
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1669
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 1670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6737
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getChangedShareNoteInfoList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 1100
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedShareDocumentIds(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 1109
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, "0"

    .line 1110
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1111
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1112
    const-string v6, "driveId"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string v6, "documentId"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    :try_start_1
    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v6, v4, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v6
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_3

    .line 1123
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getRoomId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 1127
    :cond_4
    const-string/jumbo v7, "roomId"

    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getRoomId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getLastSequence()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getLastSequence()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    const-string v6, "-1"

    .line 1130
    :goto_2
    const-string v7, "lastSequence"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    invoke-virtual {p0, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1135
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsAttribute()I

    move-result v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 1137
    :goto_3
    const-string v6, "contentsAttribute"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v4

    .line 1120
    invoke-virtual {v4}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1

    :cond_7
    :goto_4
    return-object v0

    :catch_1
    move-exception v1

    .line 1102
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0
.end method

.method private isDisplayedMultiFoldersCore(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 6120
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6124
    :cond_0
    invoke-static {p3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6126
    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 6130
    :cond_1
    invoke-virtual {p0, p3}, Lcom/metamoji/sd/SdDriveDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 6132
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6133
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 6134
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6137
    :cond_2
    invoke-static {p2, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 6139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-ne p1, p2, :cond_5

    add-int/2addr p4, v2

    return p4

    .line 6143
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 6144
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6145
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/metamoji/sd/SdDriveDocumentManager;->isDisplayedMultiFoldersCore(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;I)I

    move-result p4

    if-le p4, v2, :cond_4

    :cond_5
    :goto_1
    return p4
.end method

.method private isUpdatedDocumentContents(Ljava/lang/String;)Z
    .locals 3

    .line 3295
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3300
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3302
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 3313
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return v1

    .line 3306
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 3313
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return p1

    :cond_4
    if-eqz v0, :cond_5

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3309
    :try_start_2
    const-string v2, "[SdDriveDocumentManager] :: ERROR isUpdatedDocumentContents: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :goto_2
    if-eqz v0, :cond_6

    .line 3313
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3315
    :cond_6
    throw p1
.end method

.method private openReadOnlyQuickEditor(Ljava/lang/String;Ljava/io/File;)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;
    .locals 4

    .line 1448
    sget-object v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1449
    :try_start_0
    new-instance v1, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditorForReadonlyQuickEdit;

    invoke-direct {v1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditorForReadonlyQuickEdit;-><init>()V

    .line 1450
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, p2, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 1452
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1453
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private saveDocumentInArchive(Ljava/io/File;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 6861
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    :cond_0
    const/4 v2, 0x0

    .line 6872
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 6874
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v4, v2

    move-object v10, v4

    .line 6876
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6877
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 6878
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 6879
    const-string v7, "meta.json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v11, "archive data:%s %s"

    const-string v12, "CRC Error %s"

    const-wide/16 v13, -0x1

    if-eqz v7, :cond_5

    .line 6881
    :try_start_3
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {v9, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v15, Ljava/util/zip/CRC32;

    invoke-direct {v15}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v2, v7, v15}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 6882
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 6883
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 6886
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v15

    cmp-long v13, v15, v13

    if-eqz v13, :cond_3

    .line 6887
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v15

    cmp-long v2, v13, v15

    if-eqz v2, :cond_3

    .line 6888
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 7105
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :catch_0
    if-eqz v10, :cond_2

    .line 7110
    :try_start_5
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 7119
    :cond_2
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return v8

    .line 6893
    :cond_3
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xff

    if-le v2, v5, :cond_4

    const/16 v2, 0xfe

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v7

    :goto_1
    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6894
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6895
    :cond_5
    const-string v7, "contents"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez v10, :cond_1

    .line 6898
    const-string v7, "mmj.sd.drivedocumentmanager.contents."

    const-string v11, ".tmp"

    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v15

    invoke-static {v7, v11, v15}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 6899
    :try_start_7
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 6900
    new-instance v11, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {v9, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v15

    move-wide/from16 v16, v13

    new-instance v13, Ljava/util/zip/CRC32;

    invoke-direct {v13}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v11, v15, v13}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    const/16 v13, 0x2000

    .line 6902
    new-array v13, v13, [B

    .line 6904
    :goto_2
    invoke-virtual {v11, v13}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 6905
    invoke-virtual {v10, v13, v8, v14}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 6908
    :cond_6
    invoke-virtual {v11}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 6909
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 6910
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 6913
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    cmp-long v10, v13, v16

    if-eqz v10, :cond_8

    .line 6914
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    invoke-virtual {v11}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v10

    cmp-long v5, v13, v10

    if-eqz v5, :cond_8

    .line 6915
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 7105
    :try_start_8
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catch_1
    if-eqz v7, :cond_7

    .line 7110
    :try_start_9
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 7119
    :cond_7
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return v8

    :cond_8
    move-object v10, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v7

    goto/16 :goto_5

    :cond_9
    move-wide/from16 v16, v13

    .line 6920
    :try_start_a
    const-string/jumbo v7, "search.xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6922
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {v9, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v13, Ljava/util/zip/CRC32;

    invoke-direct {v13}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v7, v13}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 6923
    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 6924
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 6927
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    cmp-long v13, v13, v16

    if-eqz v13, :cond_b

    .line 6928
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    cmp-long v4, v13, v4

    if-eqz v4, :cond_b

    .line 6929
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 7105
    :try_start_b
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catch_2
    if-eqz v10, :cond_a

    .line 7110
    :try_start_c
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 7119
    :cond_a
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return v8

    .line 6933
    :cond_b
    :try_start_d
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v7

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_1b

    if-nez v10, :cond_d

    goto/16 :goto_4

    .line 6940
    :cond_d
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6941
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v5

    if-nez v5, :cond_10

    if-eqz v5, :cond_e

    .line 7099
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 7105
    :cond_e
    :try_start_e
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catch_3
    if-eqz v10, :cond_f

    .line 7110
    :try_start_f
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 7119
    :cond_f
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return v8

    :cond_10
    move-object v6, v5

    .line 6947
    :try_start_10
    new-instance v5, Lcom/metamoji/sd/SdValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v0}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 6948
    new-instance v0, Lcom/metamoji/sd/SdValue;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object v2, v6

    .line 6949
    :try_start_11
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6, v4}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    move-object v4, v0

    .line 6951
    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$29;

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager$29;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdValue;Ljava/io/File;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 7085
    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v0, :cond_13

    if-eqz v2, :cond_11

    .line 7099
    :try_start_12
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 7105
    :cond_11
    :try_start_13
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catch_4
    if-eqz v10, :cond_12

    .line 7110
    :try_start_14
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 7119
    :cond_12
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return v8

    .line 7089
    :cond_13
    :try_start_15
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    .line 7090
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 7093
    :cond_14
    invoke-virtual {v10, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-nez v0, :cond_17

    if-eqz v2, :cond_15

    .line 7099
    :try_start_16
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 7105
    :cond_15
    :try_start_17
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :catch_5
    if-eqz v10, :cond_16

    .line 7110
    :try_start_18
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 7119
    :cond_16
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return v8

    :cond_17
    if-eqz v2, :cond_18

    .line 7099
    :try_start_19
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 7105
    :cond_18
    :try_start_1a
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :catch_6
    if-eqz v10, :cond_19

    .line 7110
    :try_start_1b
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 7119
    :cond_19
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_1a

    .line 7099
    :try_start_1c
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 7101
    :cond_1a
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 7105
    :cond_1b
    :goto_4
    :try_start_1d
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :catch_7
    if-eqz v10, :cond_1c

    .line 7110
    :try_start_1e
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 7119
    :cond_1c
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return v8

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v10, v2

    :goto_5
    move-object v2, v9

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v10, v2

    :goto_6
    if-eqz v2, :cond_1d

    .line 7105
    :try_start_1f
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    :cond_1d
    :goto_7
    if-eqz v10, :cond_1e

    .line 7110
    :try_start_20
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 7112
    :cond_1e
    throw v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_8
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 7116
    :goto_8
    :try_start_21
    const-string v2, "[SdDriveDocumentManager] :: ERROR saveDocumentInArchive: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 7119
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return v8

    :goto_9
    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 7120
    throw v0
.end method

.method private updateMembers()V
    .locals 5

    .line 6753
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 6755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 6761
    iput-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_updateMemberWaiting:Z

    .line 6762
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$28;

    invoke-direct {v1, p0}, Lcom/metamoji/sd/SdDriveDocumentManager$28;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    .line 6795
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_updateMemberWaiting:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    .line 6797
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected cacheDirPath()Ljava/lang/String;
    .locals 3

    .line 7421
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->getLocalCacheId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->dirNameForDrive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->documentThumbnailDirPathWithName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7422
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7423
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7424
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public checkUpdate()Z
    .locals 3

    .line 6583
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->isDiscarded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6587
    :cond_0
    new-instance v0, Lcom/metamoji/sd/cs/params/SdGetDriveLastUpdateRevisionParams;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/params/SdGetDriveLastUpdateRevisionParams;-><init>()V

    .line 6588
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;

    if-eqz v0, :cond_2

    .line 6590
    iget v2, v0, Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;->errorCode:I

    if-nez v2, :cond_2

    .line 6591
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveLastUpdateRevision()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6592
    iget-object v0, v0, Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;->lastUpdateRevision:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public clearMembers()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    .line 291
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v2, v1, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;

    .line 292
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v2, v1, Lcom/metamoji/sd/SdDriveMembers;->memberList:Ljava/util/List;

    .line 293
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearNeedSyncFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_needSyncFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 10

    .line 2610
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 2613
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 2618
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2620
    const-string p2, "[SdDriveDocumentManager] :: WARN closeDocument \"Save document id is nil!!! close editor wit Discard...\""

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 2621
    sget-object p2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {p1, p2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-void

    .line 2626
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2628
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 2634
    :cond_2
    :try_start_0
    new-instance v9, Lcom/metamoji/sd/SdValue;

    invoke-direct {v9}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 2635
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide v7

    .line 2636
    invoke-static {v7, v8}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2639
    :try_start_1
    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$11;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p0

    move-object v6, p1

    move-object v4, p2

    :try_start_2
    invoke-direct/range {v0 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager$11;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/dm/DmDocumentManagerCloseMode;Ljava/util/Date;Lcom/metamoji/dvm/fw/IDvmDocumentEditor;DLcom/metamoji/sd/SdValue;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 2810
    invoke-interface {v6, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 2812
    sget-object p1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    if-eq p1, v4, :cond_3

    .line 2814
    invoke-interface {v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->isReadOnly()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->isUpdatedDocumentContents(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2815
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/sd/SdDriveDocumentManager$12;

    invoke-direct {p2, p0, v3}, Lcom/metamoji/sd/SdDriveDocumentManager$12;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2824
    :cond_3
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {v9}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2828
    invoke-virtual {v9}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    goto :goto_0

    .line 2830
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_0
    if-eqz v2, :cond_5

    .line 2839
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    .line 2824
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 2825
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_3
    move-object p1, v0

    .line 2834
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR closeDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2835
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_5

    .line 2839
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return-void

    :catchall_3
    move-exception v0

    goto :goto_2

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2841
    :cond_6
    throw p1
.end method

.method public contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->getLocalCacheId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->dirNameForDrive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->documentContentsDirPathWithName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public copyChangedDocumentsToLocal()V
    .locals 11

    .line 6548
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_3

    .line 6561
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 6555
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedDocumentIdsWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 6561
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 6557
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR copyChangedDocumentsToLocal: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 6561
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 6566
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v1

    .line 6567
    invoke-virtual {v1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v5

    .line 6569
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 6571
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;ZZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    goto :goto_1

    :cond_3
    return-void

    :goto_2
    if-eqz v1, :cond_4

    .line 6561
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6563
    :cond_4
    throw v0
.end method

.method public copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/sd/SdDriveDocumentManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 1683
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;ZZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;ZZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/sd/SdDriveDocumentManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 1697
    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;ZZZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;ZZZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/sd/SdDriveDocumentManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p8

    .line 1700
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-eqz v13, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1707
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 1710
    iget-boolean v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    if-eqz v0, :cond_1

    if-nez p5, :cond_1

    .line 1711
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1715
    :cond_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1716
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 1717
    new-instance v4, Lcom/metamoji/sd/SdValue;

    invoke-direct {v4}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 1718
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 1720
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v15

    if-nez v15, :cond_2

    .line 1723
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v15, :cond_f

    .line 1923
    invoke-virtual {v15}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1728
    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_4

    .line 1731
    :try_start_2
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 1912
    :try_start_3
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    if-eqz v15, :cond_f

    .line 1923
    invoke-virtual {v15}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1736
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1737
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1740
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    .line 1912
    :try_start_5
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz v15, :cond_f

    .line 1923
    invoke-virtual {v15}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1745
    :cond_6
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1746
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->LocalDocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_7

    .line 1912
    :try_start_7
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    if-eqz v15, :cond_f

    .line 1923
    invoke-virtual {v15}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1752
    :cond_8
    :try_start_8
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0, v13, v15}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v9

    if-nez v9, :cond_a

    .line 1755
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->LocalDocumentMetaNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1907
    :try_start_9
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_9

    .line 1912
    :try_start_a
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_9
    if-eqz v15, :cond_f

    .line 1923
    invoke-virtual {v15}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1759
    :cond_a
    :try_start_b
    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$7;

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    move/from16 v10, p6

    invoke-direct/range {v0 .. v12}, Lcom/metamoji/sd/SdDriveDocumentManager$7;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdValue;Ljava/io/File;Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;ZZLjava/util/List;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1907
    :try_start_c
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v2, :cond_b

    .line 1912
    :try_start_d
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_b
    if-eqz v15, :cond_c

    .line 1923
    invoke-virtual {v15}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1927
    :cond_c
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1928
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1929
    const-string v2, "documentId"

    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p7

    .line 1930
    invoke-direct {v1, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    return-void

    .line 1932
    :cond_d
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1907
    :try_start_e
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 1908
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_e

    .line 1912
    :try_start_f
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1914
    :cond_e
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1917
    :try_start_10
    const-string v2, "[SdDriveDocumentManager] :: ERROR copyDocument: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1918
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v15, :cond_f

    .line 1923
    invoke-virtual {v15}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_f
    return-void

    :goto_0
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1925
    :cond_10
    throw v0

    .line 1703
    :cond_11
    :goto_1
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v14, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void
.end method

.method public copyDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 2122
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 2125
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2132
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2261
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 2136
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 2137
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 2138
    new-instance v8, Lcom/metamoji/sd/SdValue;

    invoke-direct {v8}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 2140
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$8;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p0

    move-object v7, p1

    move-object v4, p2

    move-object v6, p3

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager$8;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdValue;Ljava/util/Date;)V

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 2249
    invoke-virtual {v8}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 2250
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 2252
    :cond_3
    invoke-virtual {v8}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v5, :cond_4

    .line 2261
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 2256
    :goto_3
    :try_start_3
    const-string p2, "[SdDriveDocumentManager] :: ERROR copyDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2257
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_4

    .line 2261
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2263
    :cond_5
    throw p1
.end method

.method public copyDocumentAsNew(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdDriveDocumentManager;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 706
    new-instance v6, Lcom/metamoji/sd/SdDriveDocumentManager$5;

    invoke-direct {v6, p0, p3, p4, p5}, Lcom/metamoji/sd/SdDriveDocumentManager$5;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v2, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalCopyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;ZLjava/util/List;Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public copyDocumentAsNew(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 667
    new-instance v6, Lcom/metamoji/sd/SdDriveDocumentManager$3;

    invoke-direct {v6, p0, p3, p4}, Lcom/metamoji/sd/SdDriveDocumentManager$3;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalCopyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;ZLjava/util/List;Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public copyDocumentAsNew(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8

    xor-int/lit8 v3, p2, 0x1

    .line 686
    new-instance v6, Lcom/metamoji/sd/SdDriveDocumentManager$4;

    invoke-direct {v6, p0, p3, p4}, Lcom/metamoji/sd/SdDriveDocumentManager$4;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalCopyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;ZLjava/util/List;Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public copyDocumentFromSheetTemplate(Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 1973
    const-string/jumbo v0, "sheettemplate"

    if-nez p1, :cond_0

    .line 1974
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1979
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    .line 1982
    :try_start_0
    invoke-direct {p0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1985
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1986
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 2021
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1990
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;

    move-result-object v3

    .line 1992
    invoke-virtual {v3, p1, v0}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->existsContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1993
    invoke-virtual {p0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 1994
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 2021
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1999
    :cond_2
    :try_start_3
    invoke-virtual {v3, p1, v0}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2002
    new-instance v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;-><init>()V

    .line 2003
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 2004
    invoke-static {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V

    if-eqz p2, :cond_3

    .line 2007
    const-string/jumbo p1, "tags"

    invoke-interface {v0, p1, p2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2010
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2011
    const-string p2, "editor"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 2021
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 2015
    :catch_1
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 2016
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotOpenError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    .line 2021
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return-void

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2023
    :cond_5
    throw p1
.end method

.method public copyFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p6

    .line 5706
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 5708
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v6

    if-nez v6, :cond_0

    .line 5711
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v10, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 5983
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 5715
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    if-eqz v0, :cond_1

    .line 5716
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v10, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 5983
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 5720
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 5721
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 5722
    new-instance v4, Lcom/metamoji/sd/SdValue;

    invoke-direct {v4}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 5724
    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$26;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager$26;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/Date;Ljava/util/List;Z)V

    invoke-virtual {v6, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 5971
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v2, p5

    invoke-direct {p0, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 5974
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, v10, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v6, :cond_3

    .line 5983
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5978
    :try_start_3
    const-string v2, "[SdDriveDocumentManager] :: ERROR copyFolderFrom: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5979
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v10, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    .line 5983
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-void

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 5985
    :cond_4
    throw v0
.end method

.method public createFolder(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8

    .line 4632
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-eqz p1, :cond_7

    .line 4634
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 4639
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4642
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 4773
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 4646
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 4647
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 4773
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 4651
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 4652
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 4653
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 4655
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$21;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v4, p1

    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager$21;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/dvm/fw/bean/DvmFolderBean;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdValue;Ljava/util/Date;)V

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 4761
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 4762
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 4764
    :cond_4
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v3, :cond_5

    .line 4773
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 4768
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR createFolder: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4769
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_5

    .line 4773
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4775
    :cond_6
    throw p1

    :cond_7
    :goto_6
    move-object v2, p0

    .line 4635
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void
.end method

.method public createTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 3

    .line 3472
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-eqz p1, :cond_6

    .line 3474
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3479
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3482
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 3586
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 3486
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    if-eqz v1, :cond_2

    .line 3487
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 3586
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 3491
    :cond_2
    :try_start_2
    new-instance v1, Lcom/metamoji/sd/SdValue;

    invoke-direct {v1}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 3493
    new-instance v2, Lcom/metamoji/sd/SdDriveDocumentManager$16;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/metamoji/sd/SdDriveDocumentManager$16;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/dvm/fw/bean/DvmTagBean;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 3575
    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 3576
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 3578
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_4

    .line 3586
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3581
    :try_start_3
    const-string p2, "[SdDriveDocumentManager] :: ERROR createTag: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3582
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 3586
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return-void

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3588
    :cond_5
    throw p1

    .line 3475
    :cond_6
    :goto_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void
.end method

.method public deleteDocument(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8

    .line 2460
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 2463
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 2467
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2470
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2591
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_4

    .line 2474
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_3

    .line 2475
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 2591
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 2479
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 2480
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 2481
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 2483
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v0, :cond_4

    .line 2484
    :try_start_4
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    .line 2591
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 2489
    :cond_4
    :try_start_5
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$10;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v2, p0

    move-object v5, p1

    :try_start_6
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager$10;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Ljava/util/Date;)V

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2576
    :try_start_7
    invoke-virtual {p0, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    .line 2580
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 2582
    :cond_5
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_0
    if-eqz v3, :cond_6

    .line 2591
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, p0

    move-object v5, p1

    :goto_1
    move-object p1, v0

    .line 2576
    :try_start_8
    invoke-virtual {p0, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 2577
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_3
    move-object p1, v0

    .line 2586
    :goto_4
    :try_start_9
    const-string p2, "[SdDriveDocumentManager] :: ERROR deleteDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2587
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v3, :cond_6

    .line 2591
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_6
    :goto_5
    return-void

    :catchall_4
    move-exception v0

    goto :goto_2

    :goto_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2593
    :cond_7
    throw p1
.end method

.method public deleteFolder(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8

    .line 4786
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 4789
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 4793
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v6

    if-nez v6, :cond_2

    .line 4796
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 4917
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 4800
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 4801
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    .line 4917
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 4805
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 4806
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 4807
    new-instance v4, Lcom/metamoji/sd/SdValue;

    invoke-direct {v4}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 4809
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$22;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v3, p1

    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager$22;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/Date;)V

    invoke-virtual {v6, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 4905
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 4906
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 4908
    :cond_4
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v6, :cond_5

    .line 4917
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 4912
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR deleteFolder: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4913
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_5

    .line 4917
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4919
    :cond_6
    throw p1
.end method

.method public deleteTags(Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 3687
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 3690
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 3694
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v5

    if-nez v5, :cond_2

    .line 3697
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 3893
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 3701
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 3702
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    .line 3893
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 3706
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 3707
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 3708
    new-instance v7, Lcom/metamoji/sd/SdValue;

    invoke-direct {v7}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 3710
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v3, p1

    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager$18;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/Date;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 3881
    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 3882
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 3884
    :cond_4
    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v5, :cond_5

    .line 3893
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 3888
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR deleteTags: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3889
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_5

    .line 3893
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3895
    :cond_6
    throw p1
.end method

.method public editCopiedDocument(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 11

    .line 1470
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 1471
    sget-object v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    .line 1473
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    .line 1474
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_c

    .line 1478
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-nez v4, :cond_1

    .line 1480
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    .line 1481
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 1485
    :cond_1
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1487
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-nez v0, :cond_3

    .line 1489
    :try_start_4
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1627
    :cond_2
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_8

    .line 1493
    :cond_3
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-nez v0, :cond_4

    .line 1494
    :try_start_7
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_2

    .line 1627
    :goto_1
    :try_start_8
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1501
    :cond_4
    :try_start_9
    invoke-direct {p0, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v6

    .line 1503
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0, p1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-nez v8, :cond_5

    .line 1505
    :try_start_a
    new-instance p2, Lcom/metamoji/sd/SdError;

    sget-object v0, Lcom/metamoji/dvm/DvmErrCode;->LocalDocumentMetaNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p2, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1619
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v4, :cond_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p2, v0

    move-object v3, p0

    goto/16 :goto_5

    .line 1509
    :cond_5
    :try_start_c
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0, p1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v9

    .line 1512
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v0, :cond_6

    .line 1514
    :try_start_d
    invoke-direct {p0, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->duplicateDocumentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_6
    move-object v7, v0

    .line 1518
    :try_start_e
    invoke-virtual {p0, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-nez v0, :cond_7

    .line 1519
    :try_start_f
    new-instance p2, Lcom/metamoji/sd/SdError;

    sget-object v0, Lcom/metamoji/dvm/DvmErrCode;->DocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p2, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1619
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1524
    :cond_7
    :try_start_11
    new-instance v10, Lcom/metamoji/sd/SdValue;

    invoke-direct {v10}, Lcom/metamoji/sd/SdValue;-><init>()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 1527
    :try_start_12
    invoke-virtual {p0, v2, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V

    .line 1529
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1535
    new-instance v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-object v3, p0

    :try_start_13
    invoke-direct/range {v2 .. v10}, Lcom/metamoji/sd/SdDriveDocumentManager$6;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1598
    :try_start_14
    invoke-virtual {v10}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1600
    invoke-virtual {p0, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 1605
    :cond_8
    invoke-virtual {p0, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1607
    new-instance v2, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;-><init>()V

    .line 1608
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v2, v6, v5, v7, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 1611
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide v5

    .line 1612
    const-string v0, "lastaccess"

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1615
    const-string v5, "editor"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    invoke-direct {p0, p2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 1619
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-eqz v4, :cond_a

    .line 1627
    :goto_2
    :try_start_16
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, p0

    :goto_3
    move-object p2, v0

    .line 1598
    :try_start_17
    invoke-virtual {v10}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1600
    invoke-virtual {p0, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 1602
    :cond_9
    throw p2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v3, p0

    :goto_4
    move-object p2, v0

    .line 1619
    :goto_5
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 1620
    throw p2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v3, p0

    :goto_6
    move-object p1, v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v3, p0

    :goto_7
    move-object p1, v0

    .line 1622
    :goto_8
    :try_start_19
    const-string p2, "[SdDriveDocumentManager] :: ERROR editCopiedDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1623
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-eqz v4, :cond_a

    goto :goto_2

    .line 1630
    :cond_a
    :goto_9
    :try_start_1a
    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    goto :goto_6

    :goto_a
    if-eqz v4, :cond_b

    .line 1627
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1629
    :cond_b
    throw p1

    :catchall_9
    move-exception v0

    move-object v3, p0

    :goto_b
    move-object p1, v0

    .line 1630
    :goto_c
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    throw p1

    :catchall_a
    move-exception v0

    goto :goto_b
.end method

.method public editDocument(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1247
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1252
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1253
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1260
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1262
    new-instance p2, Lcom/metamoji/sd/SdError;

    sget-object p3, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p2, p3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1267
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1269
    new-instance p2, Lcom/metamoji/sd/SdError;

    sget-object p3, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p2, p3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1273
    :cond_3
    new-instance v1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;-><init>()V

    .line 1274
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3, v2, p2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 1276
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide v2

    .line 1278
    const-string p2, "lastaccess"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1280
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {p2}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1282
    new-instance p2, Lcom/metamoji/sd/SdError;

    sget-object p3, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p2, p3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 1313
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1286
    :cond_4
    :try_start_1
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    invoke-virtual {p2}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 1293
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1297
    :cond_5
    const-string/jumbo v3, "title"

    invoke-virtual {p2}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1299
    const-string/jumbo p2, "tags"

    invoke-interface {v1, p2, v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1302
    :cond_6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1303
    const-string v2, "editor"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    invoke-direct {p0, p3, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    .line 1313
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1307
    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 1308
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotOpenError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 1313
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_7
    return-void

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1315
    :cond_8
    throw p1
.end method

.method public existsFolder(Ljava/lang/String;)Z
    .locals 3

    .line 6164
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 6183
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v1

    .line 6170
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6172
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-eqz v0, :cond_3

    .line 6183
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return p1

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6179
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR existsFolder: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 6183
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_6
    return v1

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6185
    :cond_7
    throw p1
.end method

.method public exportDocumentBinaryFromStorage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2

    .line 2097
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2098
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 2103
    :cond_0
    invoke-static {v0, p2}, Lcom/metamoji/dm/fw/DmUtils;->copyFile(Ljava/io/File;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2105
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "exportDocumentBinaryFromStorage: copying %s to %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public exportDocumentBinaryFromStorage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2076
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2077
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2078
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 2082
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2084
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2087
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/dm/fw/DmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2089
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "exportDocumentBinaryFromStorage: copying %s to %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public generateDocumentId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6727
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    .line 6728
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6043
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_8

    .line 6085
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 6049
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6050
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6051
    sget-object v4, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6055
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 6057
    :cond_2
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v4, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 6058
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 6061
    :cond_3
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v5, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFoldersWithoutDeletedByParentPath(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v5

    .line 6062
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 6063
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 6064
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMOFolder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6066
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6067
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 6069
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6070
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMOFolder;

    if-eqz v8, :cond_5

    .line 6071
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6072
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6073
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 6074
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6078
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 6085
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6081
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getAbsPathMatchTags: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    .line 6085
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    return-object v0

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6087
    :cond_9
    throw p1
.end method

.method public getChangedShareNoteInfoListInJsonString()Ljava/lang/String;
    .locals 2

    .line 1151
    invoke-direct {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getChangedShareNoteInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1155
    :try_start_0
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createJsonValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object v1

    .line 1165
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 1157
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public getCloudService()Lcom/metamoji/sd/cs/SdCloudService;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    return-object v0
.end method

.method public getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 6

    .line 725
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/cs/SdCloudService;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/cs/SdCloudService;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v5, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 743
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 744
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v7}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v7

    if-nez v7, :cond_1

    .line 747
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v5, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_22

    .line 923
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 753
    :cond_1
    :try_start_1
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v8, v0, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 754
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 755
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v5, v0}, Lcom/metamoji/sd/SdFailureBlock;->setArgument(Ljava/lang/Object;)V

    .line 756
    invoke-virtual {v5}, Lcom/metamoji/sd/SdFailureBlock;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_22

    .line 923
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_2
    const/4 v10, 0x1

    if-eqz v8, :cond_3

    .line 759
    :try_start_2
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v10

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    .line 762
    :goto_0
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    if-nez v11, :cond_4

    goto :goto_1

    .line 914
    :cond_4
    invoke-direct {v1, v4, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto/16 :goto_9

    .line 767
    :cond_5
    :goto_1
    new-instance v11, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;

    invoke-direct {v11}, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;-><init>()V

    .line 768
    invoke-virtual {v11, v2}, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;->setRequestCanceller(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 769
    invoke-virtual {v3, v11}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetMaintenanceInfoWithParams(Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;)Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;

    move-result-object v11

    if-eqz v2, :cond_6

    .line 770
    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdRequestCanceller;->isCancel()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 771
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->RequestCancelError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v5, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_22

    .line 923
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_6
    const/4 v13, 0x0

    if-eqz v11, :cond_20

    .line 778
    :try_start_3
    iget-boolean v14, v11, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;->isUnderMaintenance:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v15, "isOffline"

    if-nez v14, :cond_1e

    const/16 v11, 0x2b03

    const/16 v14, 0x2aff

    const/16 v16, 0x0

    const/16 v9, 0x2af9

    if-eqz v12, :cond_11

    .line 784
    :try_start_4
    new-instance v12, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;

    invoke-direct {v12}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;-><init>()V

    .line 785
    iput-object v0, v12, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->documentId:Ljava/lang/String;

    .line 786
    invoke-virtual {v12, v2}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->setRequestCanceller(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 787
    iput-boolean v10, v12, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->contentsRevisionOnly:Z

    .line 789
    invoke-virtual {v3, v12}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v12

    check-cast v12, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;

    if-eqz v12, :cond_c

    move/from16 v17, v10

    .line 792
    iget v10, v12, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-nez v10, :cond_8

    .line 793
    iget-object v10, v12, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->documentId:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v12, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    if-eqz v10, :cond_d

    .line 794
    iget-object v10, v12, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    const-string v12, "contentsRevision"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 796
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 797
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_2

    .line 799
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_2
    move-object/from16 v18, v13

    move-object v13, v8

    move-object/from16 v8, v18

    goto :goto_4

    .line 803
    :cond_8
    iget v8, v12, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-eq v8, v9, :cond_b

    if-eq v8, v14, :cond_a

    if-eq v8, v11, :cond_9

    move-object v8, v13

    goto :goto_3

    .line 808
    :cond_9
    new-instance v8, Lcom/metamoji/sd/SdError;

    sget-object v10, Lcom/metamoji/dvm/DvmErrCode;->DriveAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v8, v10}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_3

    .line 811
    :cond_a
    new-instance v8, Lcom/metamoji/sd/SdError;

    sget-object v10, Lcom/metamoji/dvm/DvmErrCode;->DriveAccessDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v8, v10}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_3

    .line 805
    :cond_b
    new-instance v8, Lcom/metamoji/sd/SdError;

    sget-object v10, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v8, v10}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    :goto_3
    if-eqz v8, :cond_e

    .line 817
    invoke-direct {v1, v5, v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_22

    .line 923
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_c
    move/from16 v17, v10

    :cond_d
    move-object v8, v13

    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    .line 823
    :try_start_5
    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdRequestCanceller;->isCancel()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 824
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->RequestCancelError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v5, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_22

    .line 923
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_f
    if-eqz v13, :cond_10

    .line 829
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 832
    :cond_10
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v10, v16

    :goto_5
    move-object v13, v8

    goto :goto_6

    :cond_11
    move/from16 v17, v10

    :goto_6
    if-eqz v10, :cond_20

    .line 840
    new-instance v8, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;

    invoke-direct {v8}, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;-><init>()V

    .line 841
    iput-object v0, v8, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;->documentId:Ljava/lang/String;

    .line 842
    invoke-virtual {v8, v2}, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;->setRequestCanceller(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 844
    invoke-virtual {v3, v8}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/cs/response/SdFileResult;

    if-eqz v2, :cond_1d

    .line 847
    iget v3, v2, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v3, :cond_14

    .line 849
    iget-object v3, v2, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    if-eqz v3, :cond_13

    .line 851
    iget-object v3, v2, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-direct {v1, v3, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentInArchive(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 852
    new-instance v13, Lcom/metamoji/sd/SdError;

    sget-object v0, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotRetrievedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v13, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    .line 856
    :cond_12
    iget-object v0, v2, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_8

    .line 858
    :cond_13
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto/16 :goto_7

    .line 861
    :cond_14
    iget v0, v2, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    const/16 v2, -0x66

    if-eq v0, v2, :cond_1c

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1b

    if-eq v0, v9, :cond_1a

    const/16 v2, 0x2afc

    if-eq v0, v2, :cond_19

    if-eq v0, v14, :cond_18

    const/16 v2, 0x2b00

    if-eq v0, v2, :cond_17

    const/16 v2, 0x2b02

    if-eq v0, v2, :cond_16

    if-eq v0, v11, :cond_15

    .line 887
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 878
    :cond_15
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 875
    :cond_16
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->LicenseExpiryDateError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 872
    :cond_17
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->OperationDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 881
    :cond_18
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveAccessDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 869
    :cond_19
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 863
    :cond_1a
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 866
    :cond_1b
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->NetworkError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 884
    :cond_1c
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->RequestCancelError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    goto :goto_7

    .line 892
    :cond_1d
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    :goto_7
    move-object v13, v0

    goto :goto_8

    :cond_1e
    move/from16 v17, v10

    if-eqz v12, :cond_1f

    .line 898
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 901
    :cond_1f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 902
    const-string v2, "maintMessage"

    iget-object v3, v11, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;->maintMessage:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    new-instance v13, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ServerMaintenanceError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v13, v2, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;Ljava/util/Map;)V

    :cond_20
    :goto_8
    if-nez v13, :cond_21

    .line 909
    invoke-direct {v1, v4, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_9

    .line 911
    :cond_21
    invoke-direct {v1, v5, v13}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_9
    if-eqz v7, :cond_22

    .line 923
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 918
    :try_start_7
    const-string v2, "[SdDriveDocumentManager] :: ERROR getDocumentContents: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v5, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_22

    .line 923
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_22
    return-void

    :goto_a
    if-eqz v7, :cond_23

    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 925
    :cond_23
    throw v0
.end method

.method public getDocumentCountInFolder(Ljava/util/List;Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_2

    .line 1225
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-wide v1

    .line 1219
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v3, p1, p2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentCountWithoutDeletedInFolder(Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1225
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1221
    :try_start_1
    const-string p2, "[SdDriveDocumentManager] :: ERROR getDocumentCountInFolder: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1225
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-wide v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1227
    :cond_3
    throw p1
.end method

.method public getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_0

    .line 3272
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_2

    .line 3283
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 3277
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentIdsFromRoom(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 3283
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3279
    :try_start_1
    const-string p2, "[SdDriveDocumentManager] :: ERROR getDocumentIDsFromRoom: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 3283
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    :goto_0
    return-object v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3285
    :cond_3
    throw p1
.end method

.method public getDocumentIconImagePath(Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 6271
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 6273
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsAttribute()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    return-object v0

    .line 6277
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v2

    .line 6278
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsUpdateFlag()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsUpdate()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 6279
    :goto_0
    invoke-virtual {p0, v1, v2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 6280
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6281
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 6285
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6287
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_7

    .line 6292
    :try_start_1
    new-instance v5, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v5}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6293
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v1, v6, v4, v7}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 6294
    const-string v4, "protected"

    invoke-interface {v5, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    .line 6305
    :try_start_3
    sget-object p1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v5, p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    .line 6298
    :cond_4
    :try_start_4
    const-string/jumbo v4, "thumbnail"

    invoke-interface {v5, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/cm/Blob;

    if-eqz v4, :cond_5

    .line 6300
    invoke-virtual {v4}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_5
    move-object v4, v0

    .line 6305
    :goto_1
    :try_start_5
    sget-object v6, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v5, v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 6309
    invoke-virtual {p0, v4, v1, v2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_2
    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_6

    .line 6305
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v5, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 6307
    :cond_6
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 6314
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[SdDriveDocumentManager] :: ERROR getDocumentIconImagePath: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method public getDocumentIconImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 6196
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 6252
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v1

    .line 6201
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 6202
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 6206
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_4

    if-eqz v0, :cond_3

    .line 6252
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    .line 6210
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v3

    .line 6211
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    .line 6212
    :goto_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 6213
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6214
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_6

    if-eqz v0, :cond_a

    .line 6252
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v4

    .line 6218
    :cond_6
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6220
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_c

    .line 6225
    :try_start_3
    new-instance v6, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v6}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6226
    :try_start_4
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, p1, v7, v5, v8}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 6227
    const-string v5, "protected"

    invoke-interface {v6, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_8

    .line 6238
    :try_start_5
    sget-object p1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v6, p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_7

    .line 6252
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_7
    return-object v1

    .line 6231
    :cond_8
    :try_start_6
    const-string/jumbo v5, "thumbnail"

    invoke-interface {v6, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/cm/Blob;

    if-eqz v5, :cond_9

    .line 6233
    invoke-virtual {v5}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_9
    move-object v5, v1

    .line 6238
    :goto_1
    :try_start_7
    sget-object v7, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v6, v7}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 6242
    invoke-virtual {p0, v5, p1, v3, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_c

    if-eqz v0, :cond_a

    .line 6252
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_a
    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_b

    .line 6238
    :try_start_8
    sget-object v2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v6, v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 6240
    :cond_b
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_c
    if-eqz v0, :cond_f

    goto :goto_4

    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    .line 6252
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_e
    return-object v1

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 6248
    :try_start_9
    const-string v2, "[SdDriveDocumentManager] :: ERROR getDocumentIconImagePath: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_f

    .line 6252
    :goto_4
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_f
    return-object v1

    :goto_5
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6254
    :cond_10
    throw p1
.end method

.method public getDocumentIdFromEntityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6744
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    .line 6745
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentIdFromLibraryId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentIds(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/dvm/DvmDocumentSearchConditions;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v9

    if-nez v9, :cond_0

    if-eqz v9, :cond_2

    .line 1015
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 1009
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentIdsWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_1

    .line 1015
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1011
    :try_start_1
    const-string p2, "[SdDriveDocumentManager] :: ERROR getDocumentIds: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    .line 1015
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    :goto_0
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1017
    :cond_3
    throw p1
.end method

.method public getDocumentIdsInFolder(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1175
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIdsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentIdsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_2

    .line 1198
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 1192
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentIdsWithoutDeletedInFolder(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1198
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1194
    :try_start_1
    const-string p2, "[SdDriveDocumentManager] :: ERROR getDocumentIdsInFolder: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 1198
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1200
    :cond_3
    throw p1
.end method

.method public getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;
    .locals 3

    .line 971
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 987
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 976
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 978
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 979
    new-instance v2, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-direct {v2, p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;-><init>(Lcom/metamoji/sd/entities/SdMODocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 987
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 983
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getDocumentInfo: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 987
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 989
    :cond_4
    throw p1
.end method

.method public getDocumentSearchData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3240
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 3254
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 3245
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3247
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 3254
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3250
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getDocumentSearchData: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 3254
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3256
    :cond_4
    throw p1
.end method

.method public getDocumentThumbnailCachePathWithDocId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 6397
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 6414
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v1

    .line 6402
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6404
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, p1, v3, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 6405
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 6414
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6410
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getDocumentThumbnailCachePathWithDocId: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :goto_2
    if-eqz v0, :cond_5

    .line 6414
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6416
    :cond_5
    throw p1
.end method

.method public getDocumentsInfo(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;",
            ">;"
        }
    .end annotation

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 937
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_3

    .line 956
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 942
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentsByIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    .line 944
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMODocument;

    if-eqz v2, :cond_1

    .line 945
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 946
    new-instance v3, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-direct {v3, v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;-><init>(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 947
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 956
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 952
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getDocumentsInfo: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 956
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 958
    :cond_4
    throw p1
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 7129
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocked()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    return v0
.end method

.method public getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    return-object v0
.end method

.method public getMergingLockObject()Ljava/lang/Object;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_mergingLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getRoomId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1027
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1034
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-object v1

    .line 1044
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getRoomId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 1036
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v1
.end method

.method public getRoomInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1059
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-object v1

    .line 1067
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getRoomId()Ljava/lang/String;

    move-result-object v0

    .line 1068
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getCompanyId()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 1072
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1073
    const-string v2, "companyId"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string/jumbo p1, "roomId"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 1061
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v1
.end method

.method public getSubFolderList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmFolderBean;",
            ">;"
        }
    .end annotation

    .line 5995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5996
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_7

    .line 6029
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 6001
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6002
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 6005
    :cond_1
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v3, p1, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFoldersWithoutDeletedByParentPath(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    .line 6006
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6007
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 6008
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6010
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 6011
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6012
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOFolder;

    if-eqz v4, :cond_3

    .line 6014
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6015
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->beanWithAbsPath(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6019
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 6021
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->beanWithAbsPath(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_7

    .line 6029
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 6025
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getSubFolderList: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    .line 6029
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_7
    return-object v0

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6031
    :cond_8
    throw p1
.end method

.method public getTag(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;
    .locals 3

    .line 4395
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 4409
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 4400
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagWithoutDeletedByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTag;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4402
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 4409
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4405
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getTag: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4409
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4411
    :cond_4
    throw p1
.end method

.method public getTagList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation

    .line 4456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4457
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_6

    .line 4493
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 4462
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_6

    .line 4493
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 4467
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4468
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOTag;

    .line 4469
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4472
    :cond_2
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v2

    .line 4473
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 4475
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4476
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/sd/entities/SdMOTag;

    if-eqz v5, :cond_3

    .line 4478
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4479
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4483
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMOTag;

    .line 4485
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 4493
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 4489
    :try_start_2
    const-string v3, "[SdDriveDocumentManager] :: ERROR getTagList: %s"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    .line 4493
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_6
    return-object v0

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4495
    :cond_7
    throw v0
.end method

.method public getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3328
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_4

    .line 3345
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 3333
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3334
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3337
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object p1

    invoke-interface {p1}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 3338
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 3345
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3341
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getTagNameListForDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 3345
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return-object v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3347
    :cond_5
    throw p1
.end method

.method public getTags(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation

    .line 4423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4424
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_3

    .line 4443
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 4429
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagsByIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    .line 4431
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMOTag;

    .line 4432
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 4435
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 4443
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4439
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR getTags: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 4443
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4445
    :cond_4
    throw p1
.end method

.method public getTagsForRenameAtFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation

    .line 4507
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4508
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v9

    if-nez v9, :cond_0

    if-eqz v9, :cond_9

    .line 4561
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 4513
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v9, :cond_9

    .line 4561
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 4517
    :cond_1
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4518
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMOTag;

    .line 4519
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4522
    :cond_2
    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4524
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 4527
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4528
    invoke-interface {v10, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4530
    :cond_3
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0, v2, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 4531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4532
    invoke-interface {v10, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4536
    :cond_4
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    .line 4538
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 4539
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4542
    :cond_5
    iget-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {p1, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object p1

    .line 4543
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4545
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4546
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMOTag;

    if-eqz v2, :cond_6

    .line 4548
    invoke-interface {v10, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4549
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4552
    :cond_7
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/entities/SdMOTag;

    .line 4554
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_8
    if-eqz v9, :cond_9

    .line 4561
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4557
    :try_start_2
    const-string v0, "[SdDriveDocumentManager] :: ERROR getTagsForRenameInFolder: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_9

    .line 4561
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_9
    return-object v1

    :goto_6
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4563
    :cond_a
    throw p1
.end method

.method public getTagsInFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation

    .line 4574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4575
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_8

    .line 4618
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 4580
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_8

    .line 4618
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 4584
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4585
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOTag;

    .line 4586
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4590
    :cond_2
    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4591
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4592
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4594
    :cond_3
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    .line 4595
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4596
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4599
    :cond_4
    iget-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {p1, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object p1

    .line 4600
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4602
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4603
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOTag;

    if-eqz v4, :cond_5

    .line 4605
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4606
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4609
    :cond_6
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMOTag;

    .line 4611
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->beanWithTagName(Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 4618
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 4614
    :try_start_2
    const-string v2, "[SdDriveDocumentManager] :: ERROR getTagsInFolder: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_8

    .line 4618
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    return-object v0

    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4620
    :cond_9
    throw p1
.end method

.method public hasChangedContents(Z)Z
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v1

    .line 209
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedTags(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    .line 213
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->isChangedTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return v3

    .line 217
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedFolders(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_6
    return v3

    .line 221
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedChildrenOrders(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    return v3

    .line 235
    :cond_9
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    if-eqz p1, :cond_c

    .line 227
    :try_start_4
    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedDocumentIdsWithoutSendingData(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockedIds:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_a

    if-eqz v0, :cond_b

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_b
    return v3

    .line 235
    :cond_c
    :try_start_5
    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedDocuments(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_e

    if-eqz v0, :cond_d

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_d
    return v3

    .line 240
    :cond_e
    :try_start_6
    iget-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedTitleOrTagOrOptionDocumentsWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_10

    if-eqz v0, :cond_f

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_f
    return v3

    :cond_10
    if-eqz v0, :cond_11

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 245
    :try_start_7
    const-string v2, "[SdDriveDocumentManager] :: ERROR hasChangedContents: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_11

    .line 249
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_11
    return v1

    :goto_1
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 251
    :cond_12
    throw p1
.end method

.method public hasFromV2Documents()Z
    .locals 4

    .line 6606
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_2

    .line 6618
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return v1

    .line 6612
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasFromV2Documents(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6618
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6614
    :try_start_1
    const-string v3, "[SdDriveDocumentManager] :: ERROR hasFromV2Documents: %s"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 6618
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6620
    :cond_3
    throw v1
.end method

.method public importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 2885
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->importDocumentBinaryToStorageById(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public importDocumentBinaryToStorageById(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p7

    .line 2896
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 2898
    const-string v2, "[SdDriveDocumentManager] :: START : Importing binary file as document. file path:%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 2900
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v12, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 2905
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2907
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v12, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 2911
    :cond_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 2912
    new-instance v5, Lcom/metamoji/sd/SdValue;

    invoke-direct {v5}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 2913
    new-instance v3, Lcom/metamoji/sd/SdValue;

    invoke-direct {v3}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 2914
    iget-object v7, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 2916
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2919
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v12, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    .line 3122
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 2923
    :cond_2
    :try_start_1
    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$13;

    move-object v1, p0

    move-object v9, p2

    move-object/from16 v11, p3

    move/from16 v10, p4

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v11}, Lcom/metamoji/sd/SdDriveDocumentManager$13;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/Map;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/io/File;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/Date;Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 3122
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3126
    :cond_3
    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3128
    const-string v2, "documentId"

    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p6

    .line 3129
    invoke-direct {p0, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    return-void

    .line 3131
    :cond_4
    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, v12, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3116
    :try_start_2
    const-string v2, "[SdDriveDocumentManager] :: ERROR importDocumentBinaryToStorage: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3117
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v12, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    .line 3122
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return-void

    :goto_0
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3124
    :cond_6
    throw v0
.end method

.method protected internalCopyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;ZLjava/util/List;Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/sd/SdDriveDocumentManager;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/nt/NtNoteTemplateSettings;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v2, p7

    .line 7174
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez v15, :cond_0

    .line 7177
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 7181
    :cond_0
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 7182
    new-instance v5, Lcom/metamoji/sd/SdValue;

    invoke-direct {v5}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 7183
    new-instance v0, Lcom/metamoji/sd/SdValue;

    invoke-direct {v0}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 7184
    new-instance v7, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 7186
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v3}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7189
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v3, :cond_f

    .line 7403
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 7194
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v4, :cond_3

    .line 7197
    :try_start_2
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v5, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v5}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v4, :cond_2

    .line 7392
    :try_start_3
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :cond_2
    if-eqz v3, :cond_f

    .line 7403
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 7202
    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7203
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7205
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 7206
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v5, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v5}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v4, :cond_4

    .line 7392
    :try_start_5
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_4
    if-eqz v3, :cond_f

    .line 7403
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 7211
    :cond_5
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 7212
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v5, Lcom/metamoji/dvm/DvmErrCode;->LocalDocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v5}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v4, :cond_6

    .line 7392
    :try_start_7
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_6
    if-eqz v3, :cond_f

    .line 7403
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 7218
    :cond_7
    :try_start_8
    iget-object v6, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v6, v15, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v6

    if-nez v6, :cond_9

    .line 7221
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v5, Lcom/metamoji/dvm/DvmErrCode;->LocalDocumentMetaNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v5}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 7387
    :try_start_9
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v4, :cond_8

    .line 7392
    :try_start_a
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_8
    if-eqz v3, :cond_f

    .line 7403
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 7225
    :cond_9
    :try_start_b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 7228
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v10

    invoke-interface {v10}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 7229
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7232
    :cond_a
    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v10, v15, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v2, v0

    .line 7234
    :try_start_c
    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$30;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v10, v9

    move-object v9, v6

    move-object v6, v10

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v10, p5

    move-object/from16 v15, p7

    move-object/from16 v16, v3

    move-object/from16 v3, p2

    :try_start_d
    invoke-direct/range {v0 .. v14}, Lcom/metamoji/sd/SdDriveDocumentManager$30;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/io/File;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/nt/NtNoteTemplateSettings;ZLjava/util/List;Ljava/util/List;Lcom/metamoji/sd/entities/SdMODocumentSearchData;)V

    invoke-virtual {v4, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 7387
    :try_start_e
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v4, :cond_b

    .line 7392
    :try_start_f
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_b
    if-eqz v16, :cond_c

    .line 7403
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 7407
    :cond_c
    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 7408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7409
    const-string v3, "documentId"

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p6

    .line 7410
    invoke-direct {v1, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    return-void

    .line 7412
    :cond_d
    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-direct {v1, v15, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v15, p7

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v15, v2

    :goto_1
    move-object/from16 v16, v3

    .line 7387
    :goto_2
    :try_start_10
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 7388
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v15, v2

    move-object/from16 v16, v3

    :goto_3
    if-eqz v4, :cond_e

    .line 7392
    :try_start_11
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 7394
    :cond_e
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v15, v2

    move-object/from16 v16, v3

    .line 7397
    :goto_4
    :try_start_12
    const-string v2, "[SdDriveDocumentManager] :: ERROR internalCopyDocument: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7398
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {v1, v15, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v16, :cond_f

    .line 7403
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_f
    return-void

    :catchall_6
    move-exception v0

    :goto_5
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 7405
    :cond_10
    throw v0
.end method

.method protected internalDriveId()Ljava/lang/String;
    .locals 1

    .line 7136
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->getDriveId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalDriveLastUpdateRevision()Ljava/lang/String;
    .locals 2

    .line 7160
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getLastUpdateRevisionByDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalLocationId()Ljava/lang/String;
    .locals 1

    .line 7152
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getLocationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalThumbnailDir()Ljava/lang/String;
    .locals 2

    .line 7144
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->getLocalCacheId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->dirNameForDrive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->documentThumbnailDirPathWithName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCloudServiceUnderMaintenance()Z
    .locals 2

    .line 357
    new-instance v0, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetMaintenanceInfoWithParams(Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;)Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-boolean v0, v0, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;->isUnderMaintenance:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDisplayedMultiFolders(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 6103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return v0

    .line 6106
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v1, "/"

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->isDisplayedMultiFoldersCore(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public isInTrash(Ljava/lang/String;)Z
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v1

    .line 454
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 455
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 456
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_5

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 460
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR isInTrash: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :goto_2
    if-eqz v0, :cond_6

    .line 464
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 466
    :cond_6
    throw p1
.end method

.method public isLatestRevision(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Ljava/lang/Boolean;
    .locals 3

    .line 6810
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6816
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6818
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6821
    :cond_1
    new-instance v2, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;-><init>()V

    .line 6822
    iput-object p1, v2, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->documentId:Ljava/lang/String;

    .line 6823
    invoke-virtual {v2, p2}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->setRequestCanceller(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    const/4 p2, 0x1

    .line 6824
    iput-boolean p2, v2, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->contentsRevisionOnly:Z

    .line 6826
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    invoke-virtual {p2, v2}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object p2

    check-cast p2, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;

    if-nez p2, :cond_2

    return-object v1

    .line 6833
    :cond_2
    iget v2, p2, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-nez v2, :cond_3

    .line 6834
    iget-object v2, p2, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->documentId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6835
    iget-object p1, p2, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_4

    return-object v1

    .line 6844
    :cond_4
    iget-object p1, p2, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    const-string p2, "contentsRevision"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6846
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6847
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6850
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public isNewOpenDocument(Ljava/lang/String;)Z
    .locals 3

    .line 2851
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 2867
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v1

    .line 2857
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-eqz v0, :cond_2

    .line 2867
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return p1

    :cond_3
    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2863
    :try_start_1
    const-string v2, "[SdDriveDocumentManager] :: ERROR isNewOpenDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :goto_2
    if-eqz v0, :cond_5

    .line 2867
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2869
    :cond_5
    throw p1
.end method

.method public isNothingThumbnailDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 6428
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 6444
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v1

    .line 6433
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6435
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getNothingFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 6444
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :cond_3
    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6440
    :try_start_1
    const-string p2, "[SdDriveDocumentManager] :: ERROR isNothingThumbnailDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :goto_2
    if-eqz v0, :cond_5

    .line 6444
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6446
    :cond_5
    throw p1
.end method

.method public declared-synchronized lockDocument(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 369
    monitor-exit p0

    return v0

    .line 371
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockedIds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockedIds:Ljava/util/HashMap;

    sget-object v1, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 375
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public memberList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->updateMembers()V

    .line 311
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveMembers;->memberList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public memberMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->updateMembers()V

    .line 332
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_members:Lcom/metamoji/sd/SdDriveMembers;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 2276
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 2279
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2286
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2447
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 2290
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 2291
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 2292
    new-instance v8, Lcom/metamoji/sd/SdValue;

    invoke-direct {v8}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 2294
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$9;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p0

    move-object v7, p1

    move-object v4, p2

    move-object v6, p3

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager$9;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdValue;Ljava/util/Date;)V

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 2435
    invoke-virtual {v8}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 2436
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 2438
    :cond_3
    invoke-virtual {v8}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v5, :cond_4

    .line 2447
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 2442
    :goto_3
    :try_start_3
    const-string p2, "[SdDriveDocumentManager] :: ERROR moveDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2443
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_4

    .line 2447
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2449
    :cond_5
    throw p1
.end method

.method public moveFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p6

    .line 5011
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 5013
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v6

    if-nez v6, :cond_0

    .line 5016
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v10, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 5347
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 5020
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    if-eqz v0, :cond_1

    .line 5021
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v10, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 5347
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 5025
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 5026
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 5027
    new-instance v4, Lcom/metamoji/sd/SdValue;

    invoke-direct {v4}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 5029
    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$24;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager$24;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/Date;Ljava/util/List;Z)V

    invoke-virtual {v6, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 5335
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v2, p5

    invoke-direct {p0, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 5338
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, v10, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v6, :cond_3

    .line 5347
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5342
    :try_start_3
    const-string v2, "[SdDriveDocumentManager] :: ERROR moveFolderFrom: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5343
    new-instance v0, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v0, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, v10, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    .line 5347
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-void

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 5349
    :cond_4
    throw v0
.end method

.method public needSyncFlag(Z)Z
    .locals 1

    .line 261
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->hasChangedContents(Z)Z

    move-result p1

    return p1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_needSyncFlag:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 270
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->hasChangedContents(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_needSyncFlag:Ljava/lang/Boolean;

    .line 274
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public newNoteTemplateBasedOnNoteWithDocId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 655
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalCopyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;ZLjava/util/List;Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public nonMemberNameMapCache()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6632
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_nonMembers:Lcom/metamoji/sd/SdDriveMembers;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 6635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6640
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_nonMembers:Lcom/metamoji/sd/SdDriveMembers;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;

    return-object v0
.end method

.method public normalizedMemberNameMapCache()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6457
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_normalizedMembers:Lcom/metamoji/sd/SdDriveMembers;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 6460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6465
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_normalizedMembers:Lcom/metamoji/sd/SdDriveMembers;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;

    return-object v0
.end method

.method public openEditorForQuickEdit(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1330
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1337
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1342
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1344
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 1383
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1349
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1351
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 1383
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 1355
    :cond_3
    :try_start_2
    new-instance v1, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V

    .line 1356
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, p1, v3, v2, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 1358
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 1365
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1368
    :cond_4
    const-string/jumbo v3, "title"

    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1370
    const-string/jumbo p1, "tags"

    invoke-interface {v1, p1, v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1373
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1374
    const-string v2, "editor"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    invoke-direct {p0, p2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 1383
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1378
    :catch_0
    :try_start_3
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotOpenError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 1383
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_6
    return-void

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1385
    :cond_7
    throw p1
.end method

.method public quickViewDocument(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1403
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1408
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1409
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DocumentIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1415
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1417
    new-instance p2, Lcom/metamoji/sd/SdError;

    sget-object v0, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p2, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return-void

    .line 1422
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1424
    new-instance p2, Lcom/metamoji/sd/SdError;

    sget-object v0, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p2, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return-void

    .line 1428
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->openReadOnlyQuickEditor(Ljava/lang/String;Ljava/io/File;)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    .line 1431
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide v1

    .line 1432
    const-string v3, "lastaccess"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1434
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1435
    const-string v2, "editor"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    invoke-direct {p0, p2, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1442
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 1439
    :catch_0
    :try_start_3
    new-instance p2, Lcom/metamoji/sd/SdError;

    sget-object v0, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotOpenError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p2, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1442
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 1443
    throw p2
.end method

.method public reNameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 10

    .line 3909
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 3916
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v7

    if-nez v7, :cond_2

    .line 3919
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 4303
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 3923
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 3924
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    .line 4303
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 3928
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 3929
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 3930
    new-instance v4, Lcom/metamoji/sd/SdValue;

    invoke-direct {v4}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 3932
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v8, p3

    :try_start_4
    invoke-direct/range {v1 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager$19;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/Integer;Ljava/util/Date;)V

    invoke-virtual {v7, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 4291
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 4292
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 4294
    :cond_4
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v7, :cond_5

    .line 4303
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 4298
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR reNameTag: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4299
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_5

    .line 4303
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4305
    :cond_6
    throw p1

    :cond_7
    :goto_6
    move-object v2, p0

    .line 3912
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void
.end method

.method public reOrderFolderIn(Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 4931
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 4933
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4936
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4995
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_0
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 4940
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 4941
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 4995
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 4945
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 4946
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 4947
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 4949
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$23;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v5, p1

    move-object v7, p2

    :try_start_4
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager$23;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;Lcom/metamoji/sd/SdValue;Ljava/util/List;Ljava/util/Date;)V

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 4983
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 4984
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 4986
    :cond_3
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v3, :cond_4

    .line 4995
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 4990
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR reOrderFolderIn: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4991
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_4

    .line 4995
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4997
    :cond_5
    throw p1
.end method

.method public reOrderTag(Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 4316
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 4319
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 4323
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4326
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 4381
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 4330
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 4331
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 4381
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 4335
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 4336
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 4337
    new-instance v7, Lcom/metamoji/sd/SdValue;

    invoke-direct {v7}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 4339
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$20;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v5, p1

    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager$20;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;Ljava/util/Date;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 4369
    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 4370
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 4372
    :cond_4
    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v3, :cond_5

    .line 4381
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 4376
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR reOrderTag: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4377
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_5

    .line 4381
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4383
    :cond_6
    throw p1
.end method

.method public renameFolder(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 5361
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->renameFolder(Ljava/util/List;Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public renameFolder(Ljava/util/List;Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 5374
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 5376
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v6

    if-nez v6, :cond_1

    .line 5379
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 5690
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_0
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 5383
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 5384
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    .line 5690
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 5388
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 5389
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 5390
    new-instance v7, Lcom/metamoji/sd/SdValue;

    invoke-direct {v7}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 5392
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v9, p3

    :try_start_4
    invoke-direct/range {v1 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager$25;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/util/Date;Z)V

    invoke-virtual {v6, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 5678
    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 5679
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 5681
    :cond_3
    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v6, :cond_4

    .line 5690
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 5685
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR renameFolder: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5686
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p5, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_4

    .line 5690
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 5692
    :cond_5
    throw p1
.end method

.method public saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2032
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2036
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2038
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 2040
    :cond_1
    const-string p2, ".tmp"

    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mmj.sd.savedoc."

    invoke-static {v2, p2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 2042
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2043
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    .line 2046
    new-array v2, v2, [B

    .line 2048
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_2

    const/4 v4, 0x0

    .line 2049
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 2051
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 2052
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 2055
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2056
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2057
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "failed remove org data from path=%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2063
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2064
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "failed rename new data from path=%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 9

    .line 6330
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalThumbnailDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6332
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 6334
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    const/4 v8, 0x0

    if-nez v3, :cond_2

    if-eqz v3, :cond_1

    .line 6384
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return v8

    .line 6340
    :cond_2
    :try_start_0
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$27;

    move-object v2, p0

    move-object v7, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager$27;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;[B)V

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 6384
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 6379
    :try_start_1
    const-string p2, "[SdDriveDocumentManager] :: ERROR saveDocumentThumbnailWithData: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 6384
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return v8

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 6386
    :cond_5
    throw p1
.end method

.method public setDisplayPriorityToDocuments(Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 3144
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 3147
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 3151
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    if-eqz v0, :cond_1

    .line 3152
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 3156
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3159
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 3227
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_2
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 3163
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 3164
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 3165
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 3167
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$14;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p0

    move-object v4, p1

    move v7, p2

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager$14;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/List;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdValue;ZLjava/util/Date;)V

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 3215
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 3216
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 3218
    :cond_4
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v3, :cond_5

    .line 3227
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 3222
    :goto_3
    :try_start_3
    const-string p2, "[SdDriveDocumentManager] :: ERROR setDisplayPriorityToDocuments: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3223
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_5

    .line 3227
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3229
    :cond_6
    throw p1
.end method

.method public setLocked(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    return-void
.end method

.method public setTagToDocument(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 3360
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p2, :cond_0

    .line 3363
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 3367
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3370
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 3458
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 3374
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 3375
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 3458
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 3379
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 3380
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 3381
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 3383
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$15;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v5, p1

    move-object v7, p2

    :try_start_4
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager$15;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Ljava/util/List;Ljava/util/Date;)V

    invoke-virtual {v4, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 3446
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 3447
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 3449
    :cond_4
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v4, :cond_5

    .line 3458
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 3453
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR setTagToDocument: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3454
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_5

    .line 3458
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3460
    :cond_6
    throw p1
.end method

.method public thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p3, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s_%s_%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->getLocalCacheId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->dirNameForDrive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/sd/SdDriveDocumentManager;->documentThumbnailDirPathWithName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public turnOffAllEditFlag()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalLocationId()Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;-><init>()V

    .line 437
    iput-object v0, v1, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->locationId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, v1, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->isAll:Z

    .line 439
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    return-void
.end method

.method public turnOffEditFlag(Ljava/lang/String;)V
    .locals 3

    .line 424
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalLocationId()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v1

    .line 426
    new-instance v2, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;-><init>()V

    .line 427
    iput-object p1, v2, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->documentId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v2, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->contentsRevision:Ljava/lang/String;

    .line 429
    iput-object v0, v2, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->locationId:Ljava/lang/String;

    .line 430
    iget-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    invoke-virtual {p1, v2}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    return-void
.end method

.method public turnOnEditFlag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 397
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalLocationId()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v1

    .line 399
    new-instance v2, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;-><init>()V

    .line 400
    iput-object p1, v2, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->documentId:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v2, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->contentsRevision:Ljava/lang/String;

    .line 402
    iput-boolean p2, v2, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->force:Z

    .line 403
    iput-object v0, v2, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->locationId:Ljava/lang/String;

    .line 405
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_cloudService:Lcom/metamoji/sd/cs/SdCloudService;

    invoke-virtual {p2, v2}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object p2

    check-cast p2, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;

    if-nez p2, :cond_1

    return-object p1

    .line 411
    :cond_1
    iget-boolean p1, p2, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;->hasEditFlag:Z

    if-nez p1, :cond_2

    .line 412
    iget-object p1, p2, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;->userId:Ljava/lang/String;

    return-object p1

    .line 415
    :cond_2
    const-string p1, "-1"

    return-object p1
.end method

.method public declared-synchronized unlockDocument(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 384
    monitor-exit p0

    return-void

    .line 386
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_lockedIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateDocumentTitle(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 9

    .line 479
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_2

    .line 489
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 546
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 493
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 494
    :try_start_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 546
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 498
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 499
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 500
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 502
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$1;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p0

    move-object v5, p1

    move-object v7, p2

    :try_start_4
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 534
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 535
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 537
    :cond_4
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v3, :cond_5

    .line 546
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 541
    :goto_3
    :try_start_5
    const-string p2, "[SdDriveDocumentManager] :: ERROR updateDocumentTitle: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_5

    .line 546
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 548
    :cond_6
    throw p1

    :cond_7
    :goto_6
    move-object v2, p0

    .line 482
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void
.end method

.method public updateDocumentsTrashed(Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Lcom/metamoji/sd/SdFailureBlock;",
            ")V"
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-nez p1, :cond_0

    .line 563
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 567
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    if-eqz v0, :cond_1

    .line 568
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_3

    .line 575
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 641
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_2
    move-object v2, p0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    .line 579
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    .line 580
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 581
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 583
    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$2;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p0

    move-object v4, p1

    move v7, p2

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager$2;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/List;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdValue;ZLjava/util/Date;)V

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 629
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 630
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 632
    :cond_4
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v3, :cond_5

    .line 641
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object p1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_2
    move-object p1, v0

    .line 636
    :goto_3
    :try_start_3
    const-string p2, "[SdDriveDocumentManager] :: ERROR updateDocumentsTrashed: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_5

    .line 641
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 643
    :cond_6
    throw p1
.end method

.method public updateNonMemberNameMapCache(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6651
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->cacheDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/nonmember_nicknames.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6655
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6656
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6657
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6660
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6661
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 6666
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-eqz p1, :cond_3

    .line 6671
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6672
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6673
    const-string v4, ""

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6679
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6681
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 6683
    new-instance v3, Lcom/metamoji/cs/dc/params/CsGetUserNamesParam;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/params/CsGetUserNamesParam;-><init>()V

    .line 6684
    iput-object p1, v3, Lcom/metamoji/cs/dc/params/CsGetUserNamesParam;->userIds:Ljava/util/ArrayList;

    .line 6686
    invoke-static {v3}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetUserNamesResponse;

    if-eqz p1, :cond_4

    .line 6688
    iget v3, p1, Lcom/metamoji/cs/dc/response/CsGetUserNamesResponse;->errorCode:I

    if-nez v3, :cond_4

    .line 6689
    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsGetUserNamesResponse;->users:Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_6

    .line 6693
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 6694
    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6695
    const-string v5, "name"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 6698
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6705
    :cond_6
    invoke-static {v1}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 6707
    invoke-static {p1, v2}, Lcom/metamoji/sd/SdUtils;->writeStringAsFile(Ljava/lang/String;Ljava/io/File;)V

    .line 6710
    :cond_7
    iget-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_nonMembers:Lcom/metamoji/sd/SdDriveMembers;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p1, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    .line 6711
    iget-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_nonMembers:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v1, p1, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 6716
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[SdDriveDocumentManager] :: ERROR updateNonMemberNameMapCache: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public updateNormalizedMemberNameMapCache()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6477
    :try_start_0
    new-instance v1, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;-><init>()V

    .line 6478
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->driveId:Ljava/lang/String;

    .line 6480
    invoke-static {v1}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    .line 6483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->cacheDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/nicknames.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6484
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 6487
    iget v2, v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    if-nez v2, :cond_0

    .line 6488
    iget-object v1, v1, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->list:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 6492
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6493
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 6494
    const-string/jumbo v5, "status"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6496
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 6497
    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6501
    :cond_2
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6503
    invoke-static {v1, v3}, Lcom/metamoji/sd/SdUtils;->writeStringAsFile(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    .line 6506
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6507
    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6509
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6510
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    .line 6516
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 6517
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6519
    iget v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 6520
    iget-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 6522
    iget-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6524
    const-string v3, "-1"

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6528
    :cond_6
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_normalizedMembers:Lcom/metamoji/sd/SdDriveMembers;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v1, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    .line 6529
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_normalizedMembers:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v2, v1, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;

    return-object v2

    .line 6531
    :cond_7
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_normalizedMembers:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v0, v1, Lcom/metamoji/sd/SdDriveMembers;->updated:Ljava/util/Date;

    .line 6532
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_normalizedMembers:Lcom/metamoji/sd/SdDriveMembers;

    iput-object v0, v1, Lcom/metamoji/sd/SdDriveMembers;->memberMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 6538
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[SdDriveDocumentManager] :: ERROR updateNormalizedMemberNameMapCache: %s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public updateTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 3

    .line 3599
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    if-eqz p1, :cond_6

    .line 3601
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3606
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3609
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 3674
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 3613
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_locked:Z

    if-eqz v1, :cond_2

    .line 3614
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsLockedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 3674
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 3618
    :cond_2
    :try_start_2
    new-instance v1, Lcom/metamoji/sd/SdValue;

    invoke-direct {v1}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 3620
    new-instance v2, Lcom/metamoji/sd/SdDriveDocumentManager$17;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/metamoji/sd/SdDriveDocumentManager$17;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/dvm/fw/bean/DvmTagBean;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 3662
    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 3663
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_0

    .line 3665
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_4

    .line 3674
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3669
    :try_start_3
    const-string p2, "[SdDriveDocumentManager] :: ERROR updateTag: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3670
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 3674
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return-void

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3676
    :cond_5
    throw p1

    .line 3602
    :cond_6
    :goto_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void
.end method
