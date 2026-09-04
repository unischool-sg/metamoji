.class public final Lcom/metamoji/ui/UiCameraBroker$MediaFile;
.super Ljava/lang/Object;
.source "UiCameraBroker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiCameraBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaFile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001b\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0008B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000bJ\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0010R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "file",
        "Ljava/io/File;",
        "<init>",
        "(Landroid/net/Uri;Ljava/io/File;)V",
        "(Landroid/net/Uri;)V",
        "context",
        "Landroid/content/Context;",
        "(Ljava/io/File;Landroid/content/Context;)V",
        "getUri",
        "()Landroid/net/Uri;",
        "isFile",
        "",
        "()Z",
        "getContext",
        "()Landroid/content/Context;",
        "delete",
        "",
        "outputStream",
        "Ljava/io/OutputStream;",
        "dispose",
        "retain",
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


# instance fields
.field private final file:Ljava/io/File;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/io/File;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/metamoji/ui/UiCameraBroker;->Companion:Lcom/metamoji/ui/UiCameraBroker$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/UiCameraBroker$Companion;->getUriFromFile(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    return-void
.end method

.method private final isFile()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final delete()V
    .locals 4

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 63
    sget-object v2, Lcom/metamoji/ui/UiCameraBroker;->Companion:Lcom/metamoji/ui/UiCameraBroker$Companion;

    invoke-virtual {v2}, Lcom/metamoji/ui/UiCameraBroker$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v1, v0, v3, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final dispose(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v2, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->delete()V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 50
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final outputStream()Ljava/io/OutputStream;
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/io/OutputStream;

    return-object v1

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "getContentResolver(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/metamoji/cm/OopsKt;->openTruncatedStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
