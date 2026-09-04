.class public final Lio/github/toyota32k/utils/android/UtJavaFile;
.super Lio/github/toyota32k/utils/android/UtFile;
.source "UtFile.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtFile.kt\nio/github/toyota32k/utils/android/UtJavaFile\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,279:1\n36#2:280\n*S KotlinDebug\n*F\n+ 1 UtFile.kt\nio/github/toyota32k/utils/android/UtJavaFile\n*L\n162#1:280\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u000f\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0002\u0010\u000bJ/\u0010\u000c\u001a\u0002H\r\"\u0004\u0008\u0000\u0010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u0002H\r0\u0011H\u0014\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\n\u0010\u0018\u001a\u00020\u000fH\u0096\u0080\u0004J\n\u0010\u0019\u001a\u0004\u0018\u00010\u000fH\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u001f\u001a\u00020\u0017H\u0016J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/UtJavaFile;",
        "Lio/github/toyota32k/utils/android/UtFile;",
        "path",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/io/File;)V",
        "getPath",
        "()Ljava/io/File;",
        "getLength",
        "",
        "getLastModifiedTime",
        "()Ljava/lang/Long;",
        "withFileDescriptor",
        "T",
        "mode",
        "",
        "fn",
        "Lkotlin/Function1;",
        "Ljava/io/FileDescriptor;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "delete",
        "",
        "canWrite",
        "",
        "toString",
        "getFileName",
        "getContentType",
        "safeUri",
        "Landroid/net/Uri;",
        "getSafeUri",
        "()Landroid/net/Uri;",
        "exists",
        "openParcelFileDescriptor",
        "Landroid/os/ParcelFileDescriptor;",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final path:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lio/github/toyota32k/utils/android/UtFile;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 1

    .line 140
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public exists()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTime()Ljava/lang/Long;
    .locals 4

    .line 127
    :try_start_0
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 129
    sget-object v1, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lio/github/toyota32k/logger/UtLog;->error$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v3
.end method

.method public getLength()J
    .locals 4

    .line 118
    :try_start_0
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 120
    sget-object v1, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lio/github/toyota32k/logger/UtLog;->error$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPath()Ljava/io/File;
    .locals 1

    .line 115
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    return-object v0
.end method

.method public getSafeUri()Landroid/net/Uri;
    .locals 1

    .line 162
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    .line 280
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public openParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    const-string v0, "open(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected withFileDescriptor(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/FileDescriptor;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtJavaFile;->path:Ljava/io/File;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 135
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-string v1, "getFileDescriptor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 134
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
