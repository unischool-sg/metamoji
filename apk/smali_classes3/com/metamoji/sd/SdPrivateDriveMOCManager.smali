.class public Lcom/metamoji/sd/SdPrivateDriveMOCManager;
.super Lcom/metamoji/sd/SdManagedObjectContextManager;
.source "SdPrivateDriveMOCManager.java"


# static fields
.field private static final DATABASE_DIR:Ljava/lang/String; = "/.sdprivate"

.field private static final DATABASE_NAME:Ljava/lang/String; = "MMJSdPrivateDriveContext.sqlite"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "MMJSdPrivateDriveContext.sqlite"

    invoke-static {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->getDatabaseFilePathWithFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/sd/SdManagedObjectContextManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getDatabaseFileDir()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.sdprivate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDatabaseFilePathWithFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 25
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->getDatabaseFileDir()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 30
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


# virtual methods
.method protected createDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;
    .locals 2

    .line 44
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveDatabaseHelper;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->m_dbpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveDatabaseHelper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
