.class public Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;
.super Lcom/metamoji/sd/SdDriveContentsMOCManager;
.source "SdPrivateDriveContentsMOCManager.java"


# static fields
.field private static final DATABASE_DIR_NAME:Ljava/lang/String; = "db"

.field private static final SQLITE_FILE_NAME:Ljava/lang/String; = "MMJSdPrivateDriveContentsContext.sqlite"


# instance fields
.field private m_privateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->m_privateId:Ljava/lang/String;

    return-void
.end method

.method public static getDatabaseFileDirWithPrivateDriveDataDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/db"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseFilePathWithPrivateDriveDataDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {p0}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->getDatabaseFileDirWithPrivateDriveDataDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/MMJSdPrivateDriveContentsContext.sqlite"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDocumentIdSuffix()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "local"

    return-object v0
.end method

.method public getPrivateId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->m_privateId:Ljava/lang/String;

    return-object v0
.end method
