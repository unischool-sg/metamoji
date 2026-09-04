.class public Lcom/metamoji/sd/SdPrivateDriveDocumentManager;
.super Lcom/metamoji/sd/SdDriveDocumentManager;
.source "SdPrivateDriveDocumentManager.java"


# static fields
.field private static final DOCUMENT_CONTENTS_DIR:Ljava/lang/String; = "contents"

.field private static final DOCUMENT_OPERATION_LOG_DIR:Ljava/lang/String; = "oplog"

.field private static final DOCUMENT_THUMBNAILS_DIR:Ljava/lang/String; = "thumbnails"


# direct methods
.method public constructor <init>(Lcom/metamoji/sd/SdDriveContentsMOCManager;Lcom/metamoji/sd/cs/SdCloudServiceContext;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;-><init>(Lcom/metamoji/sd/SdDriveContentsMOCManager;Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    return-void
.end method

.method public static documentContentsDirPathWithPrivateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 23
    invoke-static {p0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveDataDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/contents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public static documentThumbnailDirPathWithPrivateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveCacheDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/thumbnails"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected cacheDirPath()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->internalPrivateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveCacheDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->internalPrivateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->documentContentsDirPathWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

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

.method protected internalDriveId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected internalDriveLastUpdateRevision()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->internalPrivateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getLastUpdateRevisionByPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalLocationId()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getLocationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalPrivateId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveContentsMOCManager;

    check-cast v0, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->getPrivateId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalThumbnailDir()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->internalPrivateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->documentThumbnailDirPathWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logDirForOperation()Ljava/lang/String;
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->internalPrivateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveDataDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/oplog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v1
.end method

.method public thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p3, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 120
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

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->internalPrivateId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->documentThumbnailDirPathWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

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
