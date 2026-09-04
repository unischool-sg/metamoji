.class public Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScQRCodeReaderDialog.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/os/Handler$Callback;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static s_currentCameraDeviceIndex:I = -0x1


# instance fields
.field private _cameraSwitchingBtn:Landroid/widget/ImageView;

.field _fromBrowser:Z

.field private _qrCodeCamera:Landroid/hardware/Camera;

.field private _qrCodeCapturing:Z

.field private _qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

.field private _qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

.field private _qrCodeErrorLabel:Landroid/view/View;

.field private _qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

.field private _qrCodeFocusTimer:Ljava/util/Timer;

.field private _qrCodeHandler:Landroid/os/Handler;

.field private _qrCodeHasSurface:Ljava/lang/Boolean;

.field private _qrCodeHideErrorLabelTimer:Ljava/util/Timer;

.field private _qrCodePreviewGuard:Landroid/view/View;

.field private _qrCodeReader:Landroid/view/View;

.field private _qrCodeSurfaceView:Landroid/view/SurfaceView;

.field _qrCodeText:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-i8qA5GVPbISrP4TrOv5Lg7wIcs(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$parseQRCode$6(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$09IMQfcXEz3rsqD2sElaMqrIJZM(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$parseQRCode$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0ZKCT2o8kZ_zBwsAoPP-4Jgv8GY(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4BdY9q_GZoMdOL6uWjqmnUk3jHs(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$parseQRCode$12(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9c_6TplANOO6HhwRZHOsupHmj4g(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$parseQRCode$7(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JHkk0lhALWPtdCZzeLnq1bOoMBU(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$initializeQRCodeCapture$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$M7OC2sqx5IDHH9NYbCmWzMiZOHk(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TsSwwuTg4ijT0WCr5xnydgPfVlw(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$parseQRCode$8(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g8omORWkTslKv6GC72aH-P9JHmY(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$startQRCodeCapture$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$rlQYr1w0_9Yua3eQPK7825WWq-Q(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$changeCameraDevice$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$v4Nu-oTOlv7HKNrKRJSwYvf_LWE(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$changeCameraDevice$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$yvbU_JCpd34XimKyB49rvYBzAts(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->lambda$parseQRCode$9(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fget_qrCodeCamera(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_qrCodeErrorLabel(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeErrorLabel:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_qrCodeHideErrorLabelTimer(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_qrCodeHideErrorLabelTimer(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCapturing:Z

    .line 74
    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    .line 75
    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHandler:Landroid/os/Handler;

    .line 82
    iput-boolean v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_fromBrowser:Z

    .line 90
    const-string v0, "SCQRCodeReaderDialog.constructor"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private closeCamera()V
    .locals 2

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 390
    const-string v1, "[QRCode] closeCamera Failed."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$changeCameraDevice$3()V
    .locals 2

    .line 409
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->finalizeQRCodeCapture()V

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->initializeQRCodeCapture(Z)V

    .line 412
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_cameraSwitchingBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$changeCameraDevice$4()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_cameraSwitchingBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initializeQRCodeCapture$2()V
    .locals 2

    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeReader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->changeCameraDevice()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->changeCameraDevice()V

    return-void
.end method

.method static synthetic lambda$parseQRCode$10(Ljava/util/List;I)V
    .locals 0

    .line 721
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$parseQRCode$11(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 721
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;I)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$parseQRCode$12(Landroid/content/DialogInterface;)V
    .locals 0

    .line 729
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->startQRCodeCapture()V

    return-void
.end method

.method private synthetic lambda$parseQRCode$13(Ljava/lang/String;)V
    .locals 7

    .line 593
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 595
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 596
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 597
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 598
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 599
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 605
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_0

    .line 609
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->isWebUnitEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 610
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OPEN_IN_BROWSER:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v5, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v5

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ADD_TEXT_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v5, v6}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_fromBrowser:Z

    if-nez v5, :cond_1

    .line 632
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PASTE_AS_TEXT:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v5, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v5

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_ADD_IMAGE_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v5, v6}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_fromBrowser:Z

    if-nez v5, :cond_2

    .line 674
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PASTE_AS_QR_CODE:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v5, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda10;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_RETRY_READ_QR_CODE:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance p1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda11;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 720
    new-array v0, p1, [Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 721
    new-instance v2, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda12;

    invoke-direct {v2, v4}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 723
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 725
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 726
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "parseQRCode"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 727
    new-instance v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda13;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private synthetic lambda$parseQRCode$6(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V
    .locals 3

    .line 612
    iget-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_fromBrowser:Z

    if-eqz v0, :cond_0

    .line 613
    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->onDone(Landroid/view/View;)V

    return-void

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->dismiss()V

    .line 619
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_ADD_WEB_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 624
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    const/4 v2, 0x0

    .line 625
    invoke-interface {p1, v2, p2, v1, v0}, Lcom/metamoji/nt/INtEditor;->prepareWebPage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private synthetic lambda$parseQRCode$7(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V
    .locals 8

    .line 634
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_ADD_TEXT_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 638
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 640
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    .line 641
    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p2, v2, v3, v4}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModelFromPlainText(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;Z)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 644
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v3

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 645
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v3

    .line 646
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 647
    new-instance v5, Landroid/graphics/PointF;

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-direct {v5, v6, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 648
    iget p1, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, v3

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v6

    iput p1, v5, Landroid/graphics/PointF;->x:F

    .line 649
    iget p1, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v3

    iget v2, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v2

    iput p1, v5, Landroid/graphics/PointF;->y:F

    .line 650
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object p1

    .line 651
    invoke-virtual {p1, v5}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 653
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 655
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 658
    const-string v2, "location"

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 660
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "toFocus"

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 662
    const-string p1, "toSelect"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    .line 665
    invoke-virtual {p1, p2, v1}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$parseQRCode$8(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V
    .locals 2

    .line 676
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_ADD_IMAGE_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 679
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 680
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    .line 683
    new-instance v0, Lcom/metamoji/cm/Size;

    const/16 v1, 0x190

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {p2, v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->getQrCodeImage(Ljava/lang/String;Lcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 684
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    invoke-static {p2, v0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->pasteQRCodeImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$parseQRCode$9(Ljava/lang/String;)V
    .locals 5

    .line 695
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 698
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 701
    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 702
    const-string v3, "text/plain"

    aput-object v3, p1, v2

    .line 705
    new-instance v2, Landroid/content/ClipData;

    new-instance v3, Landroid/content/ClipDescription;

    const-string v4, "text_data"

    invoke-direct {v3, v4, p1}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 708
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 710
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$startQRCodeCapture$5()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodePreviewGuard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private openCamera(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 359
    sget v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->s_currentCameraDeviceIndex:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 366
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->setCameraDisplayOrientation()V

    .line 369
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 370
    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 371
    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V

    .line 374
    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->setCameraResolution(Landroid/graphics/Point;)V

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->startQRCodeCapture()V

    return-void
.end method


# virtual methods
.method changeCameraDevice()V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_cameraSwitchingBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->stopQRCodeCapture()V

    .line 405
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_cameraSwitchingBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    .line 414
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method finalizeQRCodeCapture()V
    .locals 4

    .line 331
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->stopQRCodeCapture()V

    .line 334
    invoke-direct {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->closeCamera()V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHandler:Landroid/os/Handler;

    .line 337
    iget-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :catch_0
    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHasSurface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 349
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    return-void
.end method

.method public getQRCodeHandler()Landroid/os/Handler;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getQrCodeText()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeText:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCapturing:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_3

    .line 253
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCapturing:Z

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->stopQRCodeCapture()V

    .line 244
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QRCode] decoded ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->parseQRCode(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->finalizeQRCodeCapture()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method initializeQRCodeCapture(Z)V
    .locals 2

    .line 288
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->selectUseCamera(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->finalizeQRCodeCapture()V

    return-void

    .line 296
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 301
    new-instance p1, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    .line 302
    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 303
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHandler:Landroid/os/Handler;

    .line 305
    new-instance p1, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderViewResultPointCallback;

    iget-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderViewResultPointCallback;-><init>(Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;)V

    invoke-direct {p1, p0, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;-><init>(Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeOwner;Lcom/google/zxing/ResultPointCallback;)V

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    .line 306
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->start()V

    .line 308
    :cond_1
    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHasSurface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 311
    :try_start_1
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->openCamera(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 313
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 316
    :cond_2
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x3

    .line 317
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 320
    const-string v0, "[QRCode] initializeQRCodeCapture Failed."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->finalizeQRCodeCapture()V

    :goto_0
    return-void
.end method

.method public isQRCodeCapturing()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCapturing:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p3, :cond_0

    .line 110
    const-string v0, "new"

    goto :goto_0

    :cond_0
    const-string v0, "restore"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SCQRCodeReaderDialog.onCreateDialog: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_qr_code_reader:I

    iput v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->mViewId:I

    .line 113
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_READ_QR_CODE:I

    iput v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->mTitleId:I

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->mClose:Z

    const/4 v1, 0x0

    .line 115
    iput-boolean v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->mDone:Z

    .line 116
    iput-boolean v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->mCancel:Z

    .line 117
    iput-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->mModal:Z

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 135
    const-string p2, "qrCodeText"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeText:Ljava/lang/String;

    .line 139
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHasSurface:Ljava/lang/Boolean;

    .line 140
    sget p2, Lcom/metamoji/noteanytime/R$id;->qrCodeReader:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeReader:Landroid/view/View;

    .line 141
    sget p2, Lcom/metamoji/noteanytime/R$id;->qrCodeErrorLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeErrorLabel:Landroid/view/View;

    .line 142
    sget p2, Lcom/metamoji/noteanytime/R$id;->qrCodeFinderView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    .line 143
    sget p2, Lcom/metamoji/noteanytime/R$id;->qrCodePreviewGuard:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodePreviewGuard:Landroid/view/View;

    .line 144
    sget p2, Lcom/metamoji/noteanytime/R$id;->qrCodePreview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeSurfaceView:Landroid/view/SurfaceView;

    .line 145
    new-instance p3, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda14;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget p2, Lcom/metamoji/noteanytime/R$id;->camera_switching_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_cameraSwitchingBtn:Landroid/widget/ImageView;

    .line 150
    new-instance p3, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->initializeQRCodeCapture(Z)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->finalizeQRCodeCapture()V

    .line 183
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 265
    iget-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeDecodeThread:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeDecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    .line 268
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeConfigManager:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeCameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 167
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    const-string v0, "SCQRCodeReaderDialog.onSaveInstanceState"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 170
    const-string v0, "qrCodeText"

    iget-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method parseQRCode(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 555
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 566
    iget-object v2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeErrorLabel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 570
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHideErrorLabelTimer:Ljava/util/Timer;

    .line 571
    new-instance v2, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_3
    if-nez p1, :cond_4

    .line 584
    iput-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeText:Ljava/lang/String;

    .line 586
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 734
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->startQRCodeCapture()V

    return-void
.end method

.method selectUseCamera(Z)Z
    .locals 6

    .line 422
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_cameraSwitchingBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ge v0, v3, :cond_1

    return v2

    .line 430
    :cond_1
    sget v1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->s_currentCameraDeviceIndex:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 431
    sput v2, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->s_currentCameraDeviceIndex:I

    .line 432
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_3

    .line 434
    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 435
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_2

    .line 436
    sput v4, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->s_currentCameraDeviceIndex:I

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 444
    sget p1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->s_currentCameraDeviceIndex:I

    add-int/2addr p1, v3

    sput p1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->s_currentCameraDeviceIndex:I

    if-gt v0, p1, :cond_4

    .line 446
    sput v2, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->s_currentCameraDeviceIndex:I

    :cond_4
    return v3
.end method

.method public setCameraDisplayOrientation()V
    .locals 5

    .line 457
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    .line 476
    :goto_0
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 477
    sget v4, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->s_currentCameraDeviceIndex:I

    invoke-static {v4, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 478
    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_4

    .line 480
    iget v2, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v0

    rem-int/lit16 v2, v2, 0x168

    rsub-int v0, v2, 0x168

    .line 481
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 483
    :cond_4
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    move v1, v2

    .line 486
    :goto_1
    iget-object v2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 487
    iget-object v2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFinderView:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;

    invoke-virtual {v2, v1, v0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->setCameraInfo(ZI)V

    return-void
.end method

.method public setFromBrowser(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_fromBrowser:Z

    return-void
.end method

.method startQRCodeCapture()V
    .locals 7

    .line 495
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 498
    iput-boolean v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCapturing:Z

    .line 499
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 501
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFocusTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 502
    new-instance v1, Ljava/util/Timer;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFocusTimer:Ljava/util/Timer;

    .line 503
    new-instance v2, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$1;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$1;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 515
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 517
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 519
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 521
    const-string v1, "[QRCode] startQRCodeCapture Failed."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method stopQRCodeCapture()V
    .locals 2

    .line 530
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 531
    :try_start_1
    iput-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCapturing:Z

    .line 533
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFocusTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeFocusTimer:Ljava/util/Timer;

    .line 541
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 543
    const-string v1, "[QRCode] stopQRCodeCapture Failed."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHasSurface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHasSurface:Ljava/lang/Boolean;

    .line 194
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->openCamera(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 196
    const-string v0, "[QRCode] openCamera at surfaceCreated Failed."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 204
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->_qrCodeHasSurface:Ljava/lang/Boolean;

    return-void
.end method
