.class public final Lio/github/toyota32k/utils/android/UtFileKt;
.super Ljava/lang/Object;
.source "UtFile.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "toUtFile",
        "Lio/github/toyota32k/utils/android/UtFile;",
        "Ljava/io/File;",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "libUtils_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toUtFile(Landroid/net/Uri;Landroid/content/Context;)Lio/github/toyota32k/utils/android/UtFile;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lio/github/toyota32k/utils/android/UtFile;->Companion:Lio/github/toyota32k/utils/android/UtFile$Companion;

    invoke-virtual {v0, p0, p1}, Lio/github/toyota32k/utils/android/UtFile$Companion;->fromUri(Landroid/net/Uri;Landroid/content/Context;)Lio/github/toyota32k/utils/android/UtFile;

    move-result-object p0

    return-object p0
.end method

.method public static final toUtFile(Ljava/io/File;)Lio/github/toyota32k/utils/android/UtFile;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lio/github/toyota32k/utils/android/UtFile;->Companion:Lio/github/toyota32k/utils/android/UtFile$Companion;

    invoke-virtual {v0, p0}, Lio/github/toyota32k/utils/android/UtFile$Companion;->fromFile(Ljava/io/File;)Lio/github/toyota32k/utils/android/UtFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toUtFile$default(Landroid/net/Uri;Landroid/content/Context;ILjava/lang/Object;)Lio/github/toyota32k/utils/android/UtFile;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 276
    :cond_0
    invoke-static {p0, p1}, Lio/github/toyota32k/utils/android/UtFileKt;->toUtFile(Landroid/net/Uri;Landroid/content/Context;)Lio/github/toyota32k/utils/android/UtFile;

    move-result-object p0

    return-object p0
.end method
