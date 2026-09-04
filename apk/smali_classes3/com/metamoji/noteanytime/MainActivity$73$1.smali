.class Lcom/metamoji/noteanytime/MainActivity$73$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$73;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$73;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$73;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5041
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$73$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$73;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    .line 5044
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$73$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$73;

    iget-boolean p1, p1, Lcom/metamoji/noteanytime/MainActivity$73;->val$showLogoutUI:Z

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    .line 5046
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Logout_WithoutSync_For_Audio:I

    new-instance p2, Lcom/metamoji/noteanytime/MainActivity$73$1$1;

    invoke-direct {p2, p0}, Lcom/metamoji/noteanytime/MainActivity$73$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$73$1;)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 5057
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$73$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$73;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$73;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void

    .line 5060
    :cond_1
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$73$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$73;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$73;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void
.end method
