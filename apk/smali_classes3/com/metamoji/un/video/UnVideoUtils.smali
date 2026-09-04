.class public final Lcom/metamoji/un/video/UnVideoUtils;
.super Ljava/lang/Object;
.source "UnVideoUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoUtils$Companion;,
        Lcom/metamoji/un/video/UnVideoUtils$WorkFile;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUtils;",
        "",
        "<init>",
        "()V",
        "WorkFile",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd-HHmm"

.field private static final DATE_FORMAT_SEC:Ljava/lang/String; = "yyyyMMdd-HHmmss"

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/metamoji/un/video/UnVideoUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    .line 50
    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "Un.Video"

    const/4 v4, 0x0

    const-string v5, "com.metamoji.un.video."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/un/video/UnVideoUtils;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final createFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final createMp4FileInAlbumStorage(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->createMp4FileInAlbumStorage(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final fileFromObject(Ljava/lang/Object;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->fileFromObject(Ljava/lang/Object;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    move-result-object p0

    return-object p0
.end method

.method public static final fileFromUri(Landroid/net/Uri;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->fileFromUri(Landroid/net/Uri;)Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    move-result-object p0

    return-object p0
.end method

.method public static final handleAddVideoUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->handleAddVideoUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;)V

    return-void
.end method

.method public static final stripExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/UnVideoUtils;->Companion:Lcom/metamoji/un/video/UnVideoUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/video/UnVideoUtils$Companion;->stripExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
