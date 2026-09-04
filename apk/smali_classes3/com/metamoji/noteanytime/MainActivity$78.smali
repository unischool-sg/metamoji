.class Lcom/metamoji/noteanytime/MainActivity$78;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->handleInputParticipationCode(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5691
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$78;->val$dlg:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p3, :cond_1

    .line 5696
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$78;->val$dlg:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getDriveId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5700
    :cond_0
    iget-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$78;->val$dlg:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_SUCCESS_TO_PARTICIPATION_CODE_MESSAGE:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5701
    const-string p3, "%@"

    const-string v0, "%s"

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5702
    sput-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_messageAfterSync:Ljava/lang/String;

    .line 5704
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setDriveIdActivatingAfterSync(Ljava/lang/String;)V

    .line 5706
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/noteanytime/MainActivity$78$1;

    invoke-direct {p2, p0}, Lcom/metamoji/noteanytime/MainActivity$78$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$78;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_1
    :goto_0
    return-void
.end method
