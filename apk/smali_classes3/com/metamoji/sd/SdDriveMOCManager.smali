.class public Lcom/metamoji/sd/SdDriveMOCManager;
.super Lcom/metamoji/sd/SdManagedObjectContextManager;
.source "SdDriveMOCManager.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "MMJSdDriveContext.sqlite"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    const-string v0, "MMJSdDriveContext.sqlite"

    invoke-static {v0}, Lcom/metamoji/sd/SdManagedObjectContextManager;->getDatabaseFilePathWithFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/sd/SdManagedObjectContextManager;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;
    .locals 2

    .line 19
    new-instance v0, Lcom/metamoji/sd/SdDriveDatabaseHelper;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveMOCManager;->m_dbpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdDriveDatabaseHelper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
