.class public final Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;
.super Ljava/lang/Object;
.source "MfDownloadDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n\u0018\u00010\tJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "createBy",
        "Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "initialize",
        "Lkotlin/Function1;",
        "",
        "instanceOf",
        "taskName",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createBy$default(Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->createBy(Ljava/lang/Class;Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    return-object p1
.end method

.method public final instanceOf(Ljava/lang/String;)Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;
    .locals 2

    const-string/jumbo v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->instanceOf(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    return-object p1
.end method
