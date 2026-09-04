.class final Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;
.super Lcom/metamoji/ui/UiCameraBroker$CameraContract;
.source "UiCameraBroker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiCameraBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageCameraContract"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\r8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118UX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0005X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007R\u0014\u0010\u0016\u001a\u00020\u0005X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;",
        "Lcom/metamoji/ui/UiCameraBroker$CameraContract;",
        "<init>",
        "()V",
        "mAction",
        "",
        "getMAction",
        "()Ljava/lang/String;",
        "mMimeType",
        "getMMimeType",
        "mDefaultDisplayName",
        "getMDefaultDisplayName",
        "mMediaDirectory",
        "Ljava/io/File;",
        "getMMediaDirectory",
        "()Ljava/io/File;",
        "mCollection",
        "Landroid/net/Uri;",
        "getMCollection",
        "()Landroid/net/Uri;",
        "mDisplayNameKey",
        "getMDisplayNameKey",
        "mMimeTypeKey",
        "getMMimeTypeKey",
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
.field private final mAction:Ljava/lang/String;

.field private final mDisplayNameKey:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;

.field private final mMimeTypeKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;-><init>()V

    .line 152
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    iput-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;->mAction:Ljava/lang/String;

    .line 153
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;->mMimeType:Ljava/lang/String;

    .line 160
    const-string v0, "_display_name"

    iput-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;->mDisplayNameKey:Ljava/lang/String;

    .line 161
    const-string v0, "mime_type"

    iput-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;->mMimeTypeKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getMAction()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method protected getMCollection()Landroid/net/Uri;
    .locals 2

    .line 159
    const-string v0, "external_primary"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getContentUri(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMDefaultDisplayName()Ljava/lang/String;
    .locals 3

    .line 155
    sget-object v0, Lcom/metamoji/ui/UiCameraBroker;->Companion:Lcom/metamoji/ui/UiCameraBroker$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCameraBroker$Companion;->getStringNow()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "img_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMDisplayNameKey()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;->mDisplayNameKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getMMediaDirectory()Ljava/io/File;
    .locals 2

    .line 157
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "getExternalStoragePublicDirectory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMMimeType()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method protected getMMimeTypeKey()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$ImageCameraContract;->mMimeTypeKey:Ljava/lang/String;

    return-object v0
.end method
