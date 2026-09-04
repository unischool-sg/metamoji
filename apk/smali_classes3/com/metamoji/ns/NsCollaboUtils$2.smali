.class Lcom/metamoji/ns/NsCollaboUtils$2;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils;->showCabinetUserRegistrationMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$messageKey:I


# direct methods
.method public static synthetic $r8$lambda$2ha_It9UaCy3QpRlbqWLcZuLkHU(Lcom/metamoji/ns/NsCollaboUtils$2;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ns/NsCollaboUtils$2;->lambda$run$0(ILandroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput p1, p0, Lcom/metamoji/ns/NsCollaboUtils$2;->val$messageKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(ILandroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 181
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 183
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 184
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNIN_LABEL:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/metamoji/ns/NsCollaboUtils$2$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/NsCollaboUtils$2$1;-><init>(Lcom/metamoji/ns/NsCollaboUtils$2;)V

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 191
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 192
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 193
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string/jumbo v0, "showAlertMessage"

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 180
    iget v1, p0, Lcom/metamoji/ns/NsCollaboUtils$2;->val$messageKey:I

    new-instance v2, Lcom/metamoji/ns/NsCollaboUtils$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ns/NsCollaboUtils$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ns/NsCollaboUtils$2;I)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
