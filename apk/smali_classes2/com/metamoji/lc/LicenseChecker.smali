.class public Lcom/metamoji/lc/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lc/LicenseChecker$LicenseCheckCallback;
    }
.end annotation


# static fields
.field public static ENABLE_LICENSE_CODE:Z = true

.field private static LOG_DEBUG:Z = false

.field protected static mLastStatus:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field private static mLicenceCheckTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static mLicesneCheckUserThreadLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmLicesneCheckUserThreadLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/metamoji/lc/LicenseChecker;->mLicesneCheckUserThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmLicenceCheckTask(Landroid/os/AsyncTask;)V
    .locals 0

    sput-object p0, Lcom/metamoji/lc/LicenseChecker;->mLicenceCheckTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmLicesneCheckUserThreadLock(Ljava/lang/Object;)V
    .locals 0

    sput-object p0, Lcom/metamoji/lc/LicenseChecker;->mLicesneCheckUserThreadLock:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/metamoji/lc/LicenseChecker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Error:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    sput-object v0, Lcom/metamoji/lc/LicenseChecker;->mLastStatus:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/metamoji/lc/LicenseChecker;->mLicesneCheckUserThreadLock:Ljava/lang/Object;

    .line 40
    sput-object v0, Lcom/metamoji/lc/LicenseChecker;->mLicenceCheckTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkLicense(Landroid/content/Context;Z)V
    .locals 6

    .line 79
    const-string v0, "checkLicense: <start>"

    invoke-static {v0}, Lcom/metamoji/lc/LicenseChecker;->log(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/metamoji/lc/LicenseChecker;->mLicenceCheckTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 82
    const-string p0, "checkLicense: <aborted> mLicenseCheckTask != null"

    invoke-static {p0}, Lcom/metamoji/lc/LicenseChecker;->log(Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    sget-boolean v0, Lcom/metamoji/lc/LicenseChecker;->ENABLE_LICENSE_CODE:Z

    if-eqz v0, :cond_2

    .line 88
    new-instance v0, Lcom/metamoji/lc/LicenseUtil;

    invoke-direct {v0, p0}, Lcom/metamoji/lc/LicenseUtil;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0, p0}, Lcom/metamoji/lc/LicenseUtil;->isOnlineLicenseCacheValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0, p0}, Lcom/metamoji/lc/LicenseUtil;->getLastCheckedDateOfValidOnlineLicense(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v1

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 94
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 96
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    invoke-virtual {v0, p0}, Lcom/metamoji/lc/LicenseUtil;->isOnlineLicenseCacheExpiring(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    .line 98
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_1

    const/4 v4, 0x2

    .line 99
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    .line 100
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v1, Lcom/metamoji/lc/LicenseChecker$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/metamoji/lc/LicenseChecker$1;-><init>(Landroid/content/Context;Lcom/metamoji/lc/LicenseUtil;Z)V

    sput-object v1, Lcom/metamoji/lc/LicenseChecker;->mLicenceCheckTask:Landroid/os/AsyncTask;

    .line 127
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    invoke-static {}, Lcom/metamoji/lc/LicenseChecker;->isMainThread()Z

    move-result p0

    if-nez p0, :cond_2

    .line 132
    :try_start_0
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/metamoji/lc/LicenseChecker;->mLicesneCheckUserThreadLock:Ljava/lang/Object;

    .line 133
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :try_start_1
    sget-object p1, Lcom/metamoji/lc/LicenseChecker;->mLicesneCheckUserThreadLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    .line 135
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    :catch_0
    :cond_2
    :goto_0
    const-string p0, "checkLicense: <end>"

    invoke-static {p0}, Lcom/metamoji/lc/LicenseChecker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static checkLicenseTask(Landroid/content/Context;Lcom/metamoji/lc/LicenseUtil;Z)V
    .locals 3

    .line 151
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Error:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 152
    :goto_0
    sget-object v1, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Error:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    if-ne v0, v1, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/metamoji/lc/LicenseUtil;->checkExpirationDate(Landroid/content/Context;)Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz p2, :cond_1

    .line 158
    sget v1, Lcom/metamoji/noteanytime/R$string;->licensekey_err_network:I

    invoke-static {p0, v1}, Lcom/metamoji/lc/LicenseChecker;->showAlertDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkLicenseTask: status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/lc/LicenseChecker;->log(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, p0}, Lcom/metamoji/lc/LicenseUtil;->canActivate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 182
    invoke-static {p0, p1, v0}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->showLicenseInputDialog(Landroid/content/Context;Lcom/metamoji/lc/LicenseUtil;Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;)V

    :cond_1
    return-void
.end method

.method public static isLicenseCacheValid(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 216
    sget-boolean v0, Lcom/metamoji/lc/LicenseChecker;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "mmjlicense"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static showAlertDialog(Landroid/content/Context;I)V
    .locals 2

    .line 200
    sget v0, Lcom/metamoji/noteanytime/R$string;->lisence_title_license_info:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v1, Lcom/metamoji/lc/LicenseChecker$2;

    invoke-direct {v1}, Lcom/metamoji/lc/LicenseChecker$2;-><init>()V

    invoke-static {p0, v0, p1, v1}, Lcom/metamoji/lc/LicenseUtil;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x1

    .line 212
    invoke-static {p0}, Lcom/metamoji/lc/LicenseChecker;->stopLicenseChechkTask(Z)V

    return-void
.end method

.method public static stopLicenseChechkTask(Z)V
    .locals 1

    .line 42
    sget-object v0, Lcom/metamoji/lc/LicenseChecker;->mLicenceCheckTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 44
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 46
    :try_start_1
    sget-object p0, Lcom/metamoji/lc/LicenseChecker;->mLicenceCheckTask:Landroid/os/AsyncTask;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 48
    :cond_0
    sget-object p0, Lcom/metamoji/lc/LicenseChecker;->mLicenceCheckTask:Landroid/os/AsyncTask;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 50
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
