.class Lcom/metamoji/nt/NtDownloadManagerForSample$4;
.super Ljava/lang/Object;
.source "NtDownloadManagerForSample.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDownloadManagerForSample;->showMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDownloadManagerForSample;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$4;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iput-object p2, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 324
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$4;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDownloadManagerForSample;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    const-string v0, "[NtDownloadManagerForSample] showMsg Error. activity is null"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 329
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 330
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 332
    const-string v3, "NtDownloadManagerForSample#showMsg"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_1

    return-void

    .line 335
    :cond_1
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 336
    sget v4, Lcom/metamoji/noteanytime/R$string;->Sample_Note_Title_Download:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 337
    iget-object v4, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$4;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 338
    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 339
    new-instance v2, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v2, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 340
    invoke-virtual {v2, v1, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
