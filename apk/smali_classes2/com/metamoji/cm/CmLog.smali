.class public Lcom/metamoji/cm/CmLog;
.super Ljava/lang/Object;
.source "CmLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/CmLog$DebugLogger;,
        Lcom/metamoji/cm/CmLog$Logger;
    }
.end annotation


# static fields
.field private static final ENTRY_LOG_LEVEL:Ljava/lang/String; = "LogLevel"

.field private static final ENTRY_LOG_ROTATE:Ljava/lang/String; = "LogRotate"

.field private static FILELOG_LEVEL:I = 0x64

.field private static final FILELOG_LEVEL_NEVER:I = 0x64

.field private static final SECTION_LOG_CTRL:Ljava/lang/String; = "LogCtrl"

.field private static TAG:Ljava/lang/String; = "MetaMoJi"

.field private static sAppName:Ljava/lang/String;

.field private static sLogger:Lcom/metamoji/cm/CmLog$Logger;


# direct methods
.method static bridge synthetic -$$Nest$sfgetFILELOG_LEVEL()I
    .locals 1

    sget v0, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/metamoji/cm/CmLog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .line 531
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmLog$Logger;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 542
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/cm/CmLog$Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static dumpView(Landroid/view/View;)V
    .locals 2

    .line 607
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    instance-of v0, v0, Lcom/metamoji/cm/CmLog$DebugLogger;

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 609
    const-string v1, "dump view tree...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/metamoji/cm/CmLog;->dumpView(Landroid/view/View;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dumpView(Landroid/view/View;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4

    .line 576
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    instance-of v0, v0, Lcom/metamoji/cm/CmLog$DebugLogger;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    const-string v0, " id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 581
    const-string v0, " x="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 583
    const-string v0, " y="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 585
    const-string v0, " w="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 587
    const-string v0, " h="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 589
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 592
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 593
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 594
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/metamoji/cm/CmLog;->dumpView(Landroid/view/View;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static endSupportLog()V
    .locals 3

    .line 146
    new-instance v0, Lcom/metamoji/cm/DebugControl;

    invoke-direct {v0}, Lcom/metamoji/cm/DebugControl;-><init>()V

    .line 147
    const-string v1, "LogCtrl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/DebugControl;->set(Ljava/lang/String;Ljava/util/Map;)V

    const/16 v0, 0x64

    .line 149
    sput v0, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .line 436
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmLog$Logger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 447
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/cm/CmLog$Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 1

    .line 457
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmLog$Logger;->error(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 468
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/cm/CmLog$Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 479
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/cm/CmLog$Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/metamoji/cm/CmLog;->sAppName:Ljava/lang/String;

    return-object v0
.end method

.method public static getTagName()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/metamoji/cm/CmLog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    .line 510
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmLog$Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 521
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/cm/CmLog$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static initFileLog(Ljava/lang/String;)V
    .locals 3

    .line 106
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/DebugControl;

    invoke-direct {v0}, Lcom/metamoji/cm/DebugControl;-><init>()V

    .line 107
    const-string v1, "LogCtrl"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/DebugControl;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    const-string v1, "LogLevel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    sput v1, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    .line 110
    const-string v1, "LogRotate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide/32 v1, 0x200000

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 111
    invoke-static {v0, v1}, Lcom/metamoji/cm/ErrorInfo;->setLogRotateSize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 115
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 120
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 123
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 124
    const-string v0, "DebugLog=verbose"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 125
    sput p0, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    .line 126
    const-string p0, "FileLog enabled by control file."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 130
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static initialize(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    sput-object p1, Lcom/metamoji/cm/CmLog;->TAG:Ljava/lang/String;

    .line 44
    sput-object p2, Lcom/metamoji/cm/CmLog;->sAppName:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 46
    new-instance p0, Lcom/metamoji/cm/CmLog$DebugLogger;

    invoke-direct {p0}, Lcom/metamoji/cm/CmLog$DebugLogger;-><init>()V

    sput-object p0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Lcom/metamoji/cm/CmLog$Logger;

    invoke-direct {p0}, Lcom/metamoji/cm/CmLog$Logger;-><init>()V

    sput-object p0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    .line 50
    :goto_0
    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->initFileLog(Ljava/lang/String;)V

    return-void
.end method

.method public static isFileLogEnabled()Z
    .locals 2

    .line 81
    sget v0, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v1, v0, :cond_0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isVerbose()Z
    .locals 2

    .line 89
    sget v0, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setFileLogLevel(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x64

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    :cond_0
    move p0, v1

    .line 69
    :cond_1
    sput p0, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    if-eq p0, v1, :cond_2

    .line 72
    const-string p0, "FileLog enabled by mushroom."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static startSupportLog()V
    .locals 4

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LogLevel"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LogRotate"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v2, Lcom/metamoji/cm/DebugControl;

    invoke-direct {v2}, Lcom/metamoji/cm/DebugControl;-><init>()V

    .line 140
    const-string v3, "LogCtrl"

    invoke-virtual {v2, v3, v0}, Lcom/metamoji/cm/DebugControl;->set(Ljava/lang/String;Ljava/util/Map;)V

    .line 142
    sput v1, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    return-void
.end method

.method public static stopFileLog()V
    .locals 1

    const/16 v0, 0x64

    .line 97
    sput v0, Lcom/metamoji/cm/CmLog;->FILELOG_LEVEL:I

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1

    .line 552
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmLog$Logger;->verbose(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 563
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/cm/CmLog$Logger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    .line 489
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmLog$Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 500
    sget-object v0, Lcom/metamoji/cm/CmLog;->sLogger:Lcom/metamoji/cm/CmLog$Logger;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/cm/CmLog$Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
