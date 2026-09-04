.class public final Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;
.super Ljava/lang/Object;
.source "MfFileItemDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u001c\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00122\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;",
        "",
        "<init>",
        "()V",
        "KEY_MAINTENANCE_MODE",
        "",
        "KEY_SERVER_ID",
        "KEY_TICKET",
        "KEY_DURATION",
        "KEY_SIZE",
        "KEY_CREATION_DATE",
        "KEY_REGISTRATION_DATE",
        "SIS_PLAYING",
        "SIS_POSITION",
        "DIALOG_ID",
        "newInstance",
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog;",
        "maintenanceMode",
        "",
        "item",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "showConfirmMessageToRemoveFile",
        "",
        "forLocal",
        "action",
        "Lkotlin/Function0;",
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

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;-><init>()V

    return-void
.end method

.method static final showConfirmMessageToRemoveFile$lambda$2(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 199
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final newInstance(ZLcom/metamoji/media/video/dialog/IFileItem;)Lcom/metamoji/media/video/dialog/MfFileItemDialog;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-direct {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;-><init>()V

    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v2, "maintenance-mode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    instance-of p1, p2, Lcom/metamoji/media/video/dialog/RemoteFileItem;

    const-string v2, "clip-registration-date"

    const-string v3, "clip-creation-date"

    const-string v4, "clip-size"

    const-string v5, "clip-duration"

    if-eqz p1, :cond_0

    .line 170
    check-cast p2, Lcom/metamoji/media/video/dialog/RemoteFileItem;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getClip()Lcom/metamoji/media/video/VfClipInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfClipInfo;->getServerID()Ljava/lang/String;

    move-result-object p1

    const-string v6, "clip-server-id"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getClip()Lcom/metamoji/media/video/VfClipInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfClipInfo;->getDurationText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object p1, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getClip()Lcom/metamoji/media/video/VfClipInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/media/video/VfClipInfo;->getClipsize()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->formatConsumedString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getClip()Lcom/metamoji/media/video/VfClipInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfClipInfo;->getCreationDateText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getClip()Lcom/metamoji/media/video/VfClipInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfClipInfo;->getRegistrationDateText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    instance-of p1, p2, Lcom/metamoji/media/video/dialog/LocalFileItem;

    if-eqz p1, :cond_1

    .line 176
    check-cast p2, Lcom/metamoji/media/video/dialog/LocalFileItem;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getFileInfo()Lcom/metamoji/media/video/dialog/LocalFileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getTicket()Ljava/lang/String;

    move-result-object p1

    const-string v6, "clip-ticket"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getFileInfo()Lcom/metamoji/media/video/dialog/LocalFileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getDurationText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object p1, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getFileInfo()Lcom/metamoji/media/video/dialog/LocalFileInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getSize()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->formatConsumedString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getFileInfo()Lcom/metamoji/media/video/dialog/LocalFileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getLastModifiedText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getFileInfo()Lcom/metamoji/media/video/dialog/LocalFileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getLastModifiedText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 183
    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->setAnimationEffect(Z)V

    return-object v0
.end method

.method public final showConfirmMessageToRemoveFile(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_PREVIEW_DELETE_CONFIRM:I

    .line 192
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_TITLE:I

    if-eqz p1, :cond_1

    .line 195
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_OFFLINE_STORAGE:I

    .line 196
    invoke-static {}, Lcom/metamoji/media/video/VfEditionDef;->isCloudAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_LOCAL_DELETE_CONFIRM:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MF_OFFLINE_DELETE_CONFIRM:I

    :goto_0
    move v0, p1

    .line 198
    :cond_1
    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 p2, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
