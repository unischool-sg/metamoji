.class public Lcom/metamoji/cm/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DEFAULT_LOG_ROTATE:J = 0x200000L

.field private static final DISABLE_LOG_ROTATE:J = 0x7fffffffffffffffL

.field public static final FILENAME:Ljava/lang/String; = "error.log"

.field private static final FILENAME_OLD:Ljava/lang/String; = "error.log.old"

.field private static final PATTERN_SENSITIVE_DATA:Ljava/util/regex/Pattern;

.field private static final _date_format:Ljava/text/SimpleDateFormat;

.field private static final mLock:Ljava/lang/Object;

.field private static mLogRotateSize:J

.field private static mOutputVersionInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/metamoji/cm/ErrorInfo;->_date_format:Ljava/text/SimpleDateFormat;

    .line 37
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 42
    const-string v0, "\\b(password|passcode|qwd|guestPassword)\\b"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cm/ErrorInfo;->PATTERN_SENSITIVE_DATA:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lcom/metamoji/cm/ErrorInfo;->mOutputVersionInfo:Z

    const-wide/32 v0, 0x200000

    .line 46
    sput-wide v0, Lcom/metamoji/cm/ErrorInfo;->mLogRotateSize:J

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/cm/ErrorInfo;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToLogZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .line 236
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p1, 0x2000

    .line 239
    new-array p2, p1, [B

    :goto_0
    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, p2, v1, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 245
    :cond_0
    :try_start_3
    invoke-virtual {p0, p2, v1, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 236
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-void
.end method

.method public static endSupportLog()V
    .locals 2

    .line 196
    invoke-static {}, Lcom/metamoji/cm/CmLog;->endSupportLog()V

    const-wide/16 v0, 0x0

    .line 198
    sput-wide v0, Lcom/metamoji/cm/ErrorInfo;->mLogRotateSize:J

    .line 199
    invoke-static {}, Lcom/metamoji/cm/ErrorInfo;->prepare()Ljava/io/File;

    const-wide/32 v0, 0x200000

    .line 200
    sput-wide v0, Lcom/metamoji/cm/ErrorInfo;->mLogRotateSize:J

    return-void
.end method

.method public static getFile()Ljava/io/File;
    .locals 3

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "error.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLog()Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/metamoji/cm/TempFileRef;

    const-string v1, ".log"

    const-string v2, "_elog"

    invoke-direct {v0, v2, v1}, Lcom/metamoji/cm/TempFileRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 214
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/ErrorInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    new-instance v3, Lcom/metamoji/cm/TempFileRef;

    const-string v4, ".zip"

    invoke-direct {v3, v2, v4}, Lcom/metamoji/cm/TempFileRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :try_start_2
    const-string v4, "error.log"

    invoke-static {}, Lcom/metamoji/cm/ErrorInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/metamoji/cm/ErrorInfo;->addToLogZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V

    .line 223
    const-string v4, "error.log.old"

    invoke-static {}, Lcom/metamoji/cm/ErrorInfo;->getOldFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/metamoji/cm/ErrorInfo;->addToLogZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 232
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {v3}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v4

    .line 221
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 225
    :catch_0
    invoke-virtual {v0}, Lcom/metamoji/cm/TempFileRef;->close()V

    .line 226
    invoke-virtual {v3}, Lcom/metamoji/cm/TempFileRef;->close()V

    .line 227
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 216
    :catch_1
    invoke-virtual {v0}, Lcom/metamoji/cm/TempFileRef;->close()V

    .line 217
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getOldFile()Ljava/io/File;
    .locals 3

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "error.log.old"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSupportLogEnabled()Z
    .locals 4

    .line 204
    invoke-static {}, Lcom/metamoji/cm/CmLog;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/metamoji/cm/ErrorInfo;->mLogRotateSize:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logLevelToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 164
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :pswitch_0
    const-string p0, "ASSERT"

    return-object p0

    .line 162
    :pswitch_1
    const-string p0, "ERROR"

    return-object p0

    .line 161
    :pswitch_2
    const-string p0, "WARN"

    return-object p0

    .line 160
    :pswitch_3
    const-string p0, "INFO"

    return-object p0

    .line 159
    :pswitch_4
    const-string p0, "DEBUG"

    return-object p0

    .line 158
    :pswitch_5
    const-string p0, "VERBOSE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static prepare()Ljava/io/File;
    .locals 7

    .line 55
    const-string v0, "\r\n"

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateExtDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "error.log"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    sget-wide v5, Lcom/metamoji/cm/ErrorInfo;->mLogRotateSize:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 62
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateExtDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "error.log.old"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 66
    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 69
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/metamoji/cm/ErrorInfo;->mOutputVersionInfo:Z

    if-eqz v1, :cond_4

    .line 72
    :cond_3
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 73
    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 74
    invoke-static {}, Lcom/metamoji/cm/CmLog;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 75
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 76
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 77
    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 78
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 79
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 80
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 81
    const-string v3, " (Android "

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 82
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 83
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 84
    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 85
    new-instance v0, Lcom/metamoji/cm/SecureFile;

    invoke-direct {v0, v2}, Lcom/metamoji/cm/SecureFile;-><init>(Ljava/io/File;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/SecureFile;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/metamoji/cm/ErrorInfo;->mOutputVersionInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-object v2
.end method

.method public static setLogRotateSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    .line 182
    :goto_0
    sput-wide p0, Lcom/metamoji/cm/ErrorInfo;->mLogRotateSize:J

    return-void
.end method

.method public static startSupportLog()V
    .locals 2

    .line 188
    invoke-static {}, Lcom/metamoji/cm/CmLog;->startSupportLog()V

    const-wide/16 v0, 0x0

    .line 190
    sput-wide v0, Lcom/metamoji/cm/ErrorInfo;->mLogRotateSize:J

    .line 191
    invoke-static {}, Lcom/metamoji/cm/ErrorInfo;->prepare()Ljava/io/File;

    const-wide v0, 0x7fffffffffffffffL

    .line 192
    sput-wide v0, Lcom/metamoji/cm/ErrorInfo;->mLogRotateSize:J

    return-void
.end method

.method public static writeError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    .line 103
    sget-object v0, Lcom/metamoji/cm/ErrorInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/ErrorInfo;->prepare()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 109
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 110
    sget-object v3, Lcom/metamoji/cm/ErrorInfo;->_date_format:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    if-eqz p1, :cond_1

    .line 112
    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 113
    invoke-virtual {v2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 115
    :cond_1
    const-string p1, "\r\n"

    invoke-virtual {v2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 116
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 118
    new-instance p0, Lcom/metamoji/cm/SecureFile;

    invoke-direct {p0, v1}, Lcom/metamoji/cm/SecureFile;-><init>(Ljava/io/File;)V

    .line 119
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/SecureFile;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :catchall_1
    :try_start_3
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static writeLog(ILjava/lang/String;)V
    .locals 5

    .line 132
    sget-object v0, Lcom/metamoji/cm/ErrorInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/metamoji/cm/ErrorInfo;->PATTERN_SENSITIVE_DATA:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 135
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 137
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/metamoji/cm/ErrorInfo;->prepare()Ljava/io/File;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    .line 139
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 141
    :cond_1
    :try_start_4
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 142
    sget-object v3, Lcom/metamoji/cm/ErrorInfo;->_date_format:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 143
    const-string v3, " : ["

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 144
    invoke-static {p0}, Lcom/metamoji/cm/ErrorInfo;->logLevelToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 145
    const-string p0, "] "

    invoke-virtual {v2, p0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 146
    invoke-virtual {v2, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 147
    const-string p0, "\r\n"

    invoke-virtual {v2, p0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 148
    new-instance p0, Lcom/metamoji/cm/SecureFile;

    invoke-direct {p0, v1}, Lcom/metamoji/cm/SecureFile;-><init>(Ljava/io/File;)V

    .line 149
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/SecureFile;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    :catchall_0
    :try_start_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method
