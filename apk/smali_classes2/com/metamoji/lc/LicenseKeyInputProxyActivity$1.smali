.class Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;
.super Landroid/os/AsyncTask;
.source "LicenseKeyInputProxyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/LicenseKeyInputProxyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lc/LicenseKeyInputProxyActivity;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/LicenseKeyInputProxyActivity;Landroidx/fragment/app/FragmentActivity;)V
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

    .line 39
    iput-object p1, p0, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;->this$0:Lcom/metamoji/lc/LicenseKeyInputProxyActivity;

    iput-object p2, p0, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/lc/LicenseChecker;->checkLicense(Landroid/content/Context;Z)V

    .line 44
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Lcom/metamoji/noteanytime/StartupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    iget-object v0, p0, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;->this$0:Lcom/metamoji/lc/LicenseKeyInputProxyActivity;

    invoke-virtual {v0, p1}, Lcom/metamoji/lc/LicenseKeyInputProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object p1, p0, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;->this$0:Lcom/metamoji/lc/LicenseKeyInputProxyActivity;

    invoke-virtual {p1}, Lcom/metamoji/lc/LicenseKeyInputProxyActivity;->finish()V

    const/4 p1, 0x0

    return-object p1
.end method
