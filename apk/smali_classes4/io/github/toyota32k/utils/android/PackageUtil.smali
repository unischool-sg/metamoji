.class public final Lio/github/toyota32k/utils/android/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/PackageUtil;",
        "",
        "<init>",
        "()V",
        "getPackageInfo",
        "Landroid/content/pm/PackageInfo;",
        "context",
        "Landroid/content/Context;",
        "getVersion",
        "",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/toyota32k/utils/android/PackageUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/utils/android/PackageUtil;

    invoke-direct {v0}, Lio/github/toyota32k/utils/android/PackageUtil;-><init>()V

    sput-object v0, Lio/github/toyota32k/utils/android/PackageUtil;->INSTANCE:Lio/github/toyota32k/utils/android/PackageUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x80

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lio/github/toyota32k/logger/UtLog;->stackTrace$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v2
.end method

.method public final getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/PackageUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 25
    sget-object v1, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2, v0}, Lio/github/toyota32k/logger/UtLog;->stackTrace$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method
