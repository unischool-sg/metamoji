.class public final Lio/github/toyota32k/logger/FileLogger;
.super Ljava/lang/Object;
.source "UtLoggerChain.kt"

# interfaces
.implements Lio/github/toyota32k/logger/IUtLogger;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtLoggerChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtLoggerChain.kt\nio/github/toyota32k/logger/FileLogger\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,246:1\n6482#2:247\n1869#3,2:248\n*S KotlinDebug\n*F\n+ 1 UtLoggerChain.kt\nio/github/toyota32k/logger/FileLogger\n*L\n144#1:247\n150#1:248,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002J \u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0003H\u0016J\u0008\u0010!\u001a\u00020\u001aH\u0002J\u0006\u0010\"\u001a\u00020\u001aR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lio/github/toyota32k/logger/FileLogger;",
        "Lio/github/toyota32k/logger/IUtLogger;",
        "outputDirectory",
        "",
        "fileName",
        "maxFileSize",
        "",
        "maxFileCount",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JI)V",
        "getOutputDirectory",
        "()Ljava/lang/String;",
        "getFileName",
        "getMaxFileSize",
        "()J",
        "getMaxFileCount",
        "()I",
        "baseFile",
        "Ljava/io/File;",
        "currentFile",
        "fileWriter",
        "Ljava/io/FileWriter;",
        "dateFormat",
        "Ljava/text/SimpleDateFormat;",
        "cleanupRotatedFiles",
        "",
        "checkRotation",
        "rotateLogFile",
        "writeLog",
        "level",
        "tag",
        "msg",
        "closeWriter",
        "close",
        "libLogger_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final baseFile:Ljava/io/File;

.field private currentFile:Ljava/io/File;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final fileName:Ljava/lang/String;

.field private fileWriter:Ljava/io/FileWriter;

.field private final maxFileCount:I

.field private final maxFileSize:J

.field private final outputDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    const-string v0, "outputDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/logger/FileLogger;->outputDirectory:Ljava/lang/String;

    iput-object p2, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    iput-wide p3, p0, Lio/github/toyota32k/logger/FileLogger;->maxFileSize:J

    iput p5, p0, Lio/github/toyota32k/logger/FileLogger;->maxFileCount:I

    .line 110
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string p4, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    invoke-direct {p3, p4, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Lio/github/toyota32k/logger/FileLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 114
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lio/github/toyota32k/logger/FileLogger;->baseFile:Ljava/io/File;

    .line 121
    iput-object p1, p0, Lio/github/toyota32k/logger/FileLogger;->currentFile:Ljava/io/File;

    .line 124
    invoke-direct {p0}, Lio/github/toyota32k/logger/FileLogger;->cleanupRotatedFiles()V

    .line 128
    :try_start_0
    new-instance p1, Ljava/io/FileWriter;

    iget-object p2, p0, Lio/github/toyota32k/logger/FileLogger;->currentFile:Ljava/io/File;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object p1, p0, Lio/github/toyota32k/logger/FileLogger;->fileWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to initialize FileWriter: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FileLogger"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-wide/32 p3, 0xa00000

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p5, 0x4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 106
    invoke-direct/range {v0 .. v5}, Lio/github/toyota32k/logger/FileLogger;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method private final checkRotation()V
    .locals 4

    .line 156
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->currentFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->currentFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lio/github/toyota32k/logger/FileLogger;->maxFileSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lio/github/toyota32k/logger/FileLogger;->rotateLogFile()V

    :cond_0
    return-void
.end method

.method private final cleanupRotatedFiles()V
    .locals 9

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/toyota32k/logger/FileLogger;->outputDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    const-string v2, "."

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v4, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    invoke-static {v3, v2, v8, v7, v8}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    :cond_0
    new-instance v2, Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v3, p0}, Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/github/toyota32k/logger/FileLogger;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v1, Lio/github/toyota32k/logger/FileLogger$cleanupRotatedFiles$$inlined$sortedBy$1;

    invoke-direct {v1}, Lio/github/toyota32k/logger/FileLogger$cleanupRotatedFiles$$inlined$sortedBy$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 147
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lio/github/toyota32k/logger/FileLogger;->maxFileCount:I

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lio/github/toyota32k/logger/FileLogger;->maxFileCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    .line 150
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 248
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method static final cleanupRotatedFiles$lambda$0(Ljava/lang/String;Ljava/lang/String;Lio/github/toyota32k/logger/FileLogger;Ljava/io/File;)Z
    .locals 5

    .line 141
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, p0, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method private final closeWriter()V
    .locals 3

    .line 206
    :try_start_0
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->fileWriter:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 207
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->fileWriter:Ljava/io/FileWriter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->fileWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to close FileWriter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final rotateLogFile()V
    .locals 9

    .line 162
    invoke-direct {p0}, Lio/github/toyota32k/logger/FileLogger;->closeWriter()V

    .line 165
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    const-string v2, "."

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v4, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    invoke-static {v3, v2, v8, v7, v8}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/github/toyota32k/logger/FileLogger;->outputDirectory:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->currentFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->currentFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 176
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/toyota32k/logger/FileLogger;->outputDirectory:Ljava/lang/String;

    iget-object v2, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->currentFile:Ljava/io/File;

    .line 180
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lio/github/toyota32k/logger/FileLogger;->currentFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->fileWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialize FileWriter after rotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    invoke-direct {p0}, Lio/github/toyota32k/logger/FileLogger;->cleanupRotatedFiles()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lio/github/toyota32k/logger/FileLogger;->closeWriter()V

    return-void
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxFileCount()I
    .locals 1

    .line 106
    iget v0, p0, Lio/github/toyota32k/logger/FileLogger;->maxFileCount:I

    return v0
.end method

.method public final getMaxFileSize()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lio/github/toyota32k/logger/FileLogger;->maxFileSize:J

    return-wide v0
.end method

.method public final getOutputDirectory()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger;->outputDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public writeLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    const-string v1, "tag"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lio/github/toyota32k/logger/FileLogger;->checkRotation()V

    .line 193
    :try_start_0
    sget-object v1, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->Companion:Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;

    invoke-virtual {v1, p1}, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;->levelToString(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    iget-object v1, p0, Lio/github/toyota32k/logger/FileLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object p2, p0, Lio/github/toyota32k/logger/FileLogger;->fileWriter:Ljava/io/FileWriter;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object p1, p0, Lio/github/toyota32k/logger/FileLogger;->fileWriter:Ljava/io/FileWriter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to write log: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FileLogger"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
