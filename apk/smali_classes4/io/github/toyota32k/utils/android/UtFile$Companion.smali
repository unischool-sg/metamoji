.class public final Lio/github/toyota32k/utils/android/UtFile$Companion;
.super Ljava/lang/Object;
.source "UtFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/android/UtFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/UtFile$Companion;",
        "",
        "<init>",
        "()V",
        "fromUri",
        "Lio/github/toyota32k/utils/android/UtFile;",
        "uri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "fromFile",
        "file",
        "Ljava/io/File;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/utils/android/UtFile$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromUri$default(Lio/github/toyota32k/utils/android/UtFile$Companion;Landroid/net/Uri;Landroid/content/Context;ILjava/lang/Object;)Lio/github/toyota32k/utils/android/UtFile;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/android/UtFile$Companion;->fromUri(Landroid/net/Uri;Landroid/content/Context;)Lio/github/toyota32k/utils/android/UtFile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromFile(Ljava/io/File;)Lio/github/toyota32k/utils/android/UtFile;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lio/github/toyota32k/utils/android/UtJavaFile;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/android/UtJavaFile;-><init>(Ljava/io/File;)V

    check-cast v0, Lio/github/toyota32k/utils/android/UtFile;

    return-object v0
.end method

.method public final fromUri(Landroid/net/Uri;Landroid/content/Context;)Lio/github/toyota32k/utils/android/UtFile;
    .locals 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2ff57c

    if-eq v1, v2, :cond_2

    const v2, 0x38b73479

    if-ne v1, v2, :cond_3

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    new-instance v0, Lio/github/toyota32k/utils/android/UtContentFile;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    sget-object p2, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {p2}, Lio/github/toyota32k/utils/UtLib;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/android/UtContentFile;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    check-cast v0, Lio/github/toyota32k/utils/android/UtFile;

    return-object v0

    .line 53
    :cond_2
    const-string p2, "file"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 55
    new-instance p2, Lio/github/toyota32k/utils/android/UtJavaFile;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lio/github/toyota32k/utils/android/UtJavaFile;-><init>(Ljava/io/File;)V

    check-cast p2, Lio/github/toyota32k/utils/android/UtFile;

    return-object p2

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid uri"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
