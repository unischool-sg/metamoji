.class Lcom/metamoji/noteanytime/MainActivity$56;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->makeClassBox(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dlg:Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4041
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$56;->val$dlg:Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 4045
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$56;->val$dlg:Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->getDriveName()Ljava/lang/String;

    move-result-object p1

    .line 4047
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/noteanytime/MainActivity$56$1;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$56$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$56;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
