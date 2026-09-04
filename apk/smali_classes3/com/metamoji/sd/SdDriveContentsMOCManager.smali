.class public Lcom/metamoji/sd/SdDriveContentsMOCManager;
.super Lcom/metamoji/sd/SdManagedObjectContextManager;
.source "SdDriveContentsMOCManager.java"


# static fields
.field private static final DATABASE_NAME_PREFIX:Ljava/lang/String; = "MMJSdDriveContentsContext"


# instance fields
.field private m_driveId:Ljava/lang/String;

.field private m_localCacheId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdManagedObjectContextManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-static {p1, p2}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->getDatabaseFilePathWithDriveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/sd/SdManagedObjectContextManager;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveContentsMOCManager;->m_driveId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/metamoji/sd/SdDriveContentsMOCManager;->m_localCacheId:Ljava/lang/String;

    return-void
.end method

.method public static getDatabaseFileDirWithDriveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/sd/SdManagedObjectContextManager;->getDatabaseFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s_%s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseFilePathWithDriveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 21
    invoke-static {p0, p1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->getDatabaseFileDirWithDriveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 26
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MMJSdDriveContentsContext"

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s_%s_%s.sqlite"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;
    .locals 2

    .line 52
    new-instance v0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveContentsMOCManager;->m_dbpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDocumentIdSuffix()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveContentsMOCManager;->m_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveContentsMOCManager;->m_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalCacheId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveContentsMOCManager;->m_localCacheId:Ljava/lang/String;

    return-object v0
.end method
