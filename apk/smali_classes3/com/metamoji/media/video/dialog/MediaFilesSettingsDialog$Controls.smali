.class public final Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;
.super Ljava/lang/Object;
.source "MediaFilesSettingsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Controls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\n\u0010%\u001a\u0004\u0018\u00010&H\u0002J\u0006\u0010\'\u001a\u00020(J\u0006\u0010)\u001a\u00020(R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\rR\u0014\u0010\u0014\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001f8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006*"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;",
        "",
        "dialog",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "getDialog",
        "()Landroid/view/View;",
        "settingInfo",
        "Lcom/metamoji/media/video/VfSettingInfo;",
        "uploadSynchronizeAppSwitch",
        "Lcom/metamoji/ui/common/UiSwitch;",
        "getUploadSynchronizeAppSwitch",
        "()Lcom/metamoji/ui/common/UiSwitch;",
        "uploadModeRadioGroup",
        "Landroid/widget/RadioGroup;",
        "getUploadModeRadioGroup",
        "()Landroid/widget/RadioGroup;",
        "allowCellularAccessSwitch",
        "getAllowCellularAccessSwitch",
        "manageVideoFileButton",
        "Lcom/metamoji/ui/common/UiButton;",
        "getManageVideoFileButton",
        "()Lcom/metamoji/ui/common/UiButton;",
        "manageLocalFileButton",
        "getManageLocalFileButton",
        "uploadOnManualAutoSync",
        "Landroid/view/ViewGroup;",
        "getUploadOnManualAutoSync",
        "()Landroid/view/ViewGroup;",
        "value",
        "Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;",
        "autoUploadMode",
        "getAutoUploadMode",
        "()Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;",
        "setAutoUploadMode",
        "(Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;)V",
        "getUserInfo",
        "",
        "init",
        "",
        "update",
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
.field private final dialog:Landroid/view/View;

.field private final settingInfo:Lcom/metamoji/media/video/VfSettingInfo;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->dialog:Landroid/view/View;

    .line 19
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager;->getSettingInfo()Lcom/metamoji/media/video/VfSettingInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->settingInfo:Lcom/metamoji/media/video/VfSettingInfo;

    .line 56
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getManageVideoFileButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getManageLocalFileButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget-object p1, Lcom/metamoji/media/video/VfEditionDef;->INSTANCE:Lcom/metamoji/media/video/VfEditionDef;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfEditionDef;->getHasManualAutoSyncButton()Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getUploadOnManualAutoSync()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 73
    :cond_0
    sget-object p1, Lcom/metamoji/media/video/VfEditionDef;->INSTANCE:Lcom/metamoji/media/video/VfEditionDef;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfEditionDef;->getHasServerFileManageButton()Z

    move-result p1

    if-nez p1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getManageVideoFileButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 76
    :cond_1
    sget-object p1, Lcom/metamoji/media/video/VfEditionDef;->INSTANCE:Lcom/metamoji/media/video/VfEditionDef;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfEditionDef;->getHasLocalFileManageButton()Z

    move-result p1

    if-nez p1, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getManageLocalFileButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static final _init_$lambda$0(Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 59
    sget-object p1, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->newInstance(ZLjava/lang/String;Z)Lcom/metamoji/media/video/dialog/MfFileListDialog;

    move-result-object p0

    const-string p1, "MfFileListDialog"

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->safeShow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static final _init_$lambda$1(Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;Landroid/view/View;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    sget-object p1, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->newInstance(ZLjava/lang/String;Z)Lcom/metamoji/media/video/dialog/MfFileListDialog;

    move-result-object p0

    const-string p1, "MfFileListDialog"

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->safeShow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final getAllowCellularAccessSwitch()Lcom/metamoji/ui/common/UiSwitch;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->dialog:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->switch_allowCellularAccess:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiSwitch;

    return-object v0
.end method

.method private final getAutoUploadMode()Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getUploadModeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 37
    sget v1, Lcom/metamoji/noteanytime/R$id;->autoUpload_shareOnly:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;->ONLY_SHARE:Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;

    return-object v0

    .line 38
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->autoUpload_none:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;->NONE:Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;

    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;->ALL:Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;

    return-object v0
.end method

.method private final getManageLocalFileButton()Lcom/metamoji/ui/common/UiButton;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->dialog:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->button_manageLocalFile:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method private final getManageVideoFileButton()Lcom/metamoji/ui/common/UiButton;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->dialog:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->button_manageVideoFile:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method private final getUploadModeRadioGroup()Landroid/widget/RadioGroup;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->dialog:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOption_autoUploadGroup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private final getUploadOnManualAutoSync()Landroid/view/ViewGroup;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->dialog:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_uploadSynchronizeApp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final getUploadSynchronizeAppSwitch()Lcom/metamoji/ui/common/UiSwitch;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->dialog:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->switch_uploadSynchronizeApp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/ui/common/UiSwitch;

    return-object v0
.end method

.method private final getUserInfo()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->Companion:Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;->getInstanceFromSystemSettings()Lcom/metamoji/media/video/VfCabinetUserInfoSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->getUserInfo()Lcom/metamoji/media/video/VfCabinetUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/metamoji/media/video/VfCabinetUserInfo;->userId:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final setAutoUploadMode(Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getUploadModeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 46
    sget p1, Lcom/metamoji/noteanytime/R$id;->autoUpload_all:I

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 45
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->autoUpload_shareOnly:I

    goto :goto_0

    .line 44
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$id;->autoUpload_none:I

    .line 43
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method


# virtual methods
.method public final getDialog()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->dialog:Landroid/view/View;

    return-object v0
.end method

.method public final init()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getUploadSynchronizeAppSwitch()Lcom/metamoji/ui/common/UiSwitch;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->settingInfo:Lcom/metamoji/media/video/VfSettingInfo;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfSettingInfo;->getUploadSynchronizeApp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->settingInfo:Lcom/metamoji/media/video/VfSettingInfo;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfSettingInfo;->getUploadMode()Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->setAutoUploadMode(Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;)V

    .line 84
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getAllowCellularAccessSwitch()Lcom/metamoji/ui/common/UiSwitch;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->settingInfo:Lcom/metamoji/media/video/VfSettingInfo;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfSettingInfo;->getAllowCellularAccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    return-void
.end method

.method public final update()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->settingInfo:Lcom/metamoji/media/video/VfSettingInfo;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getUploadSynchronizeAppSwitch()Lcom/metamoji/ui/common/UiSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/VfSettingInfo;->setUploadSynchronizeApp(Z)V

    .line 89
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->settingInfo:Lcom/metamoji/media/video/VfSettingInfo;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getAutoUploadMode()Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/VfSettingInfo;->setUploadMode(Lcom/metamoji/media/video/VfSettingInfo$AutoUploadMode;)V

    .line 90
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->settingInfo:Lcom/metamoji/media/video/VfSettingInfo;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->getAllowCellularAccessSwitch()Lcom/metamoji/ui/common/UiSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/VfSettingInfo;->setAllowCellularAccess(Z)V

    .line 91
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MediaFilesSettingsDialog$Controls;->settingInfo:Lcom/metamoji/media/video/VfSettingInfo;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/VfVideoFileManager;->setSettingInfo(Lcom/metamoji/media/video/VfSettingInfo;)V

    return-void
.end method
