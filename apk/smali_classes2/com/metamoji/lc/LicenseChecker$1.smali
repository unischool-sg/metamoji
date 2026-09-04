.class Lcom/metamoji/lc/LicenseChecker$1;
.super Landroid/os/AsyncTask;
.source "LicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/LicenseChecker;->checkLicense(Landroid/content/Context;Z)V
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$license:Lcom/metamoji/lc/LicenseUtil;

.field final synthetic val$showUI:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/metamoji/lc/LicenseUtil;Z)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/metamoji/lc/LicenseChecker$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/metamoji/lc/LicenseChecker$1;->val$license:Lcom/metamoji/lc/LicenseUtil;

    iput-boolean p3, p0, Lcom/metamoji/lc/LicenseChecker$1;->val$showUI:Z

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

    .line 107
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseChecker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 110
    const-string p1, "checkLicenseTask: <start>"

    invoke-static {p1}, Lcom/metamoji/lc/LicenseChecker;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/metamoji/lc/LicenseChecker$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/metamoji/lc/LicenseChecker$1;->val$license:Lcom/metamoji/lc/LicenseUtil;

    iget-boolean v1, p0, Lcom/metamoji/lc/LicenseChecker$1;->val$showUI:Z

    invoke-static {p1, v0, v1}, Lcom/metamoji/lc/LicenseChecker;->checkLicenseTask(Landroid/content/Context;Lcom/metamoji/lc/LicenseUtil;Z)V

    .line 112
    const-string p1, "checkLicenseTask: <end>"

    invoke-static {p1}, Lcom/metamoji/lc/LicenseChecker;->-$$Nest$smlog(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 107
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/lc/LicenseChecker$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 117
    invoke-static {}, Lcom/metamoji/lc/LicenseChecker;->-$$Nest$sfgetmLicesneCheckUserThreadLock()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-static {}, Lcom/metamoji/lc/LicenseChecker;->-$$Nest$sfgetmLicesneCheckUserThreadLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 119
    :try_start_0
    invoke-static {}, Lcom/metamoji/lc/LicenseChecker;->-$$Nest$sfgetmLicesneCheckUserThreadLock()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 120
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 122
    invoke-static {p1}, Lcom/metamoji/lc/LicenseChecker;->-$$Nest$sfputmLicesneCheckUserThreadLock(Ljava/lang/Object;)V

    .line 123
    invoke-static {p1}, Lcom/metamoji/lc/LicenseChecker;->-$$Nest$sfputmLicenceCheckTask(Landroid/os/AsyncTask;)V

    return-void
.end method
