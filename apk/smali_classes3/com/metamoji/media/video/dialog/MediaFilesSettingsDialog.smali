.class public final Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "MediaFilesSettingsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0011H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;",
        "Lcom/metamoji/ui/dialog/NtDialog;",
        "<init>",
        "()V",
        "controls",
        "Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;",
        "getControls",
        "()Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;",
        "setControls",
        "(Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;)V",
        "onCreateView",
        "Landroid/view/View;",
        "orgInflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDone",
        "",
        "view",
        "onSaveInstanceState",
        "outState",
        "Controls",
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
.field public controls:Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public final getControls()Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;->controls:Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "controls"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "orgInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_media_files_settings:I

    iput v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;->mViewId:I

    .line 100
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_SETTING_TITLE:I

    iput v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;->mTitleId:I

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;->setControls(Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;)V

    if-nez p3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;->getControls()Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->init()V

    :cond_0
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;->getControls()Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->update()V

    .line 113
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setControls(Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;->controls:Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;

    return-void
.end method
