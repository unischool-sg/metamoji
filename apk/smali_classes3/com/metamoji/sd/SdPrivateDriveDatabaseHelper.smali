.class public Lcom/metamoji/sd/SdPrivateDriveDatabaseHelper;
.super Lcom/metamoji/sd/SdDatabaseHelper;
.source "SdPrivateDriveDatabaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/metamoji/sd/SdDatabaseHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private upgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    .line 33
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class p2, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 34
    iget-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class p2, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 35
    iget-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class p2, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    const-string p2, "Failed to create db"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-gt p3, p4, :cond_0

    .line 50
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/sd/SdPrivateDriveDatabaseHelper;->upgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    const-string p2, "Failed to upgrade db"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
