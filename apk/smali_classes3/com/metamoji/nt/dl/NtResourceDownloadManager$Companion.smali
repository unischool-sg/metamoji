.class public final Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;
.super Ljava/lang/Object;
.source "NtResourceDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtResourceDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J:\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;",
        "",
        "<init>",
        "()V",
        "createInstance",
        "Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
        "isStartupStyle",
        "",
        "confirmBeforeDownload",
        "showNoUpdateMsg",
        "showCompletedMsg",
        "needDownloadOnly",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createInstance$default(Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p5, v0

    .line 179
    :cond_4
    invoke-virtual/range {p0 .. p5}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance(ZZZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createInstance()Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance$default(Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object v1

    return-object v1
.end method

.method public final createInstance(Z)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v7}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance$default(Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    return-object p1
.end method

.method public final createInstance(ZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance$default(Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    return-object p1
.end method

.method public final createInstance(ZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance$default(Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    return-object p1
.end method

.method public final createInstance(ZZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance$default(Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    return-object p1
.end method

.method public final createInstance(ZZZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 188
    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-direct {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;-><init>()V

    .line 189
    new-instance v1, Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/dl/NtDownloaderOptions;-><init>(ZZZZZ)V

    .line 190
    invoke-static {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$getTargets$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/dl/NtMazecDownloader;

    new-instance p3, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion$createInstance$1$1;

    invoke-direct {p3, v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion$createInstance$1$1;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, v1, p3}, Lcom/metamoji/nt/dl/NtMazecDownloader;-><init>(Lcom/metamoji/nt/dl/NtDownloaderOptions;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$getTargets$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/dl/NtFontDownloader;

    new-instance p3, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion$createInstance$1$2;

    invoke-direct {p3, v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion$createInstance$1$2;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, v1, p3}, Lcom/metamoji/nt/dl/NtFontDownloader;-><init>(Lcom/metamoji/nt/dl/NtDownloaderOptions;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
