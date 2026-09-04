.class public Lcom/j256/ormlite/misc/VersionUtils;
.super Ljava/lang/Object;
.source "VersionUtils.java"


# static fields
.field private static final ANDROID_VERSION_FILE:Ljava/lang/String; = "/com/j256/ormlite/android/VERSION.txt"

.field private static final CORE_VERSION_FILE:Ljava/lang/String; = "/com/j256/ormlite/core/VERSION.txt"

.field private static final JDBC_VERSION_FILE:Ljava/lang/String; = "/com/j256/ormlite/jdbc/VERSION.txt"

.field private static androidVersionFile:Ljava/lang/String; = "/com/j256/ormlite/android/VERSION.txt"

.field private static coreVersionFile:Ljava/lang/String; = "/com/j256/ormlite/core/VERSION.txt"

.field private static jdbcVersionFile:Ljava/lang/String; = "/com/j256/ormlite/jdbc/VERSION.txt"

.field private static logger:Lcom/j256/ormlite/logger/Logger; = null

.field private static thrownOnErrors:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkCoreVersusAndroidVersions()V
    .locals 4

    .line 45
    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->readCoreVersion()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->readAndroidVersion()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "core"

    const-string v3, "android"

    invoke-static {v2, v0, v3, v1}, Lcom/j256/ormlite/misc/VersionUtils;->logVersionErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkCoreVersusJdbcVersions()V
    .locals 4

    .line 36
    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->readCoreVersion()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->readJdbcVersion()Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "core"

    const-string v3, "jdbc"

    invoke-static {v2, v0, v3, v1}, Lcom/j256/ormlite/misc/VersionUtils;->logVersionErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 145
    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->getLogger()Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    sget-boolean p0, Lcom/j256/ormlite/misc/VersionUtils;->thrownOnErrors:Z

    if-nez p0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "See error log for details: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 152
    invoke-static {}, Lcom/j256/ormlite/misc/VersionUtils;->getLogger()Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    sget-boolean p0, Lcom/j256/ormlite/misc/VersionUtils;->thrownOnErrors:Z

    if-nez p0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "See error log for details:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getLogger()Lcom/j256/ormlite/logger/Logger;
    .locals 1

    .line 162
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    if-nez v0, :cond_0

    .line 163
    const-class v0, Lcom/j256/ormlite/misc/VersionUtils;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/misc/VersionUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 165
    :cond_0
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    return-object v0
.end method

.method private static getVersionFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 118
    const-class v0, Lcom/j256/ormlite/misc/VersionUtils;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "Could not find version file {}"

    invoke-static {v1, v0, p0, v1, v1}, Lcom/j256/ormlite/misc/VersionUtils;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 123
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    if-nez v0, :cond_1

    .line 139
    const-string v2, "No version specified in {}"

    invoke-static {v1, v2, p0, v1, v1}, Lcom/j256/ormlite/misc/VersionUtils;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 129
    :try_start_2
    const-string v3, "Could not read version from {}"

    invoke-static {v0, v3, p0, v1, v1}, Lcom/j256/ormlite/misc/VersionUtils;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v1

    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 136
    :catch_3
    throw p0
.end method

.method private static logVersionErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    const-string v0, "Unknown version for {}, version for {} is \'{}\'"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz p3, :cond_2

    .line 84
    invoke-static {v1, v0, p0, p2, p3}, Lcom/j256/ormlite/misc/VersionUtils;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 88
    invoke-static {v1, v0, p2, p0, p1}, Lcom/j256/ormlite/misc/VersionUtils;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 89
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const-string v0, "Mismatched versions: {} is \'{}\', while {} is \'{}\'"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/j256/ormlite/misc/VersionUtils;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static readAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 114
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->androidVersionFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/misc/VersionUtils;->getVersionFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readCoreVersion()Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->coreVersionFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/misc/VersionUtils;->getVersionFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readJdbcVersion()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/j256/ormlite/misc/VersionUtils;->jdbcVersionFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/j256/ormlite/misc/VersionUtils;->getVersionFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static setAndroidVersionFile(Ljava/lang/String;)V
    .locals 0

    .line 68
    sput-object p0, Lcom/j256/ormlite/misc/VersionUtils;->androidVersionFile:Ljava/lang/String;

    return-void
.end method

.method static setCoreVersionFile(Ljava/lang/String;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/j256/ormlite/misc/VersionUtils;->coreVersionFile:Ljava/lang/String;

    return-void
.end method

.method static setJdbcVersionFile(Ljava/lang/String;)V
    .locals 0

    .line 61
    sput-object p0, Lcom/j256/ormlite/misc/VersionUtils;->jdbcVersionFile:Ljava/lang/String;

    return-void
.end method

.method static setThrownOnErrors(Z)V
    .locals 0

    .line 75
    sput-boolean p0, Lcom/j256/ormlite/misc/VersionUtils;->thrownOnErrors:Z

    return-void
.end method
