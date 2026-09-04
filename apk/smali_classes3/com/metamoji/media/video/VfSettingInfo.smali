.class public final Lcom/metamoji/media/video/VfSettingInfo;
.super Ljava/lang/Object;
.source "VfSettingInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;,
        Lcom/metamoji/media/video/VfSettingInfo$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00198F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/metamoji/media/video/VfSettingInfo;",
        "",
        "<init>",
        "()V",
        "notUsePhotoAlbum",
        "",
        "getNotUsePhotoAlbum",
        "()Z",
        "setNotUsePhotoAlbum",
        "(Z)V",
        "uploadSynchronizeApp",
        "getUploadSynchronizeApp",
        "setUploadSynchronizeApp",
        "uploadOnIdle",
        "getUploadOnIdle",
        "setUploadOnIdle",
        "uploadOnIdleShareOnly",
        "getUploadOnIdleShareOnly",
        "setUploadOnIdleShareOnly",
        "allowCellularAccess",
        "getAllowCellularAccess",
        "setAllowCellularAccess",
        "checkAutoUpload",
        "isShare",
        "value",
        "Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;",
        "uploadMode",
        "getUploadMode",
        "()Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;",
        "setUploadMode",
        "(Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;)V",
        "AutoUploadMode",
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
.field private allowCellularAccess:Z

.field private notUsePhotoAlbum:Z

.field private uploadOnIdle:Z

.field private uploadOnIdleShareOnly:Z

.field private uploadSynchronizeApp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkAutoUpload(Z)Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdle:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdleShareOnly:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getAllowCellularAccess()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->allowCellularAccess:Z

    return v0
.end method

.method public final getNotUsePhotoAlbum()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->notUsePhotoAlbum:Z

    return v0
.end method

.method public final getUploadMode()Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdle:Z

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdleShareOnly:Z

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;->ONLY_SHARE:Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;

    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;->ALL:Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;

    return-object v0

    .line 35
    :cond_1
    sget-object v0, Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;->NONE:Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;

    return-object v0
.end method

.method public final getUploadOnIdle()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdle:Z

    return v0
.end method

.method public final getUploadOnIdleShareOnly()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdleShareOnly:Z

    return v0
.end method

.method public final getUploadSynchronizeApp()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadSynchronizeApp:Z

    return v0
.end method

.method public final setAllowCellularAccess(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/metamoji/media/video/VfSettingInfo;->allowCellularAccess:Z

    return-void
.end method

.method public final setNotUsePhotoAlbum(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/metamoji/media/video/VfSettingInfo;->notUsePhotoAlbum:Z

    return-void
.end method

.method public final setUploadMode(Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;)V
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/metamoji/media/video/VfSettingInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 49
    iput-boolean v1, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdle:Z

    .line 50
    iput-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdleShareOnly:Z

    return-void

    .line 39
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 45
    :cond_1
    iput-boolean v1, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdle:Z

    .line 46
    iput-boolean v1, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdleShareOnly:Z

    return-void

    .line 41
    :cond_2
    iput-boolean v0, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdle:Z

    .line 42
    iput-boolean v1, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdleShareOnly:Z

    return-void
.end method

.method public final setUploadOnIdle(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdle:Z

    return-void
.end method

.method public final setUploadOnIdleShareOnly(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadOnIdleShareOnly:Z

    return-void
.end method

.method public final setUploadSynchronizeApp(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/metamoji/media/video/VfSettingInfo;->uploadSynchronizeApp:Z

    return-void
.end method
