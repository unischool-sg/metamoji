.class public final Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AmvTranscodeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;,
        Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u0000 %2\u00020\u0001:\u0002$%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0015\u001a\u00020\u0016J&\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0014J6\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0014J\"\u0010\"\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0014H\u0002J\u0008\u0010#\u001a\u00020\u0016H\u0014R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "progress",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getProgress",
        "()Landroidx/lifecycle/MutableLiveData;",
        "status",
        "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;",
        "getStatus",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "mStatus",
        "mTranscoder",
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "isBusy",
        "",
        "cancel",
        "",
        "transcode",
        "input",
        "Ljava/io/File;",
        "output",
        "context",
        "Landroid/content/Context;",
        "repairOnError",
        "truncate",
        "start",
        "",
        "end",
        "createTranscoder",
        "onCleared",
        "Status",
        "Companion",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final isBusy:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatus:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

.field private mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

.field private final progress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->Companion:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;

    .line 125
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->handler:Landroid/os/Handler;

    .line 44
    new-instance v2, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    invoke-direct {v2}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;-><init>()V

    iput-object v2, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mStatus:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    const/4 v3, 0x0

    .line 48
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 56
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method private final createTranscoder(Ljava/io/File;Landroid/content/Context;Z)Lcom/metamoji/video/transcoder/IAmvTranscoder;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mStatus:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->reset()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 88
    sget-object p3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->AUTO:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->SINGLE:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    .line 89
    :goto_0
    new-instance v0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;-><init>(Ljava/io/File;Landroid/content/Context;Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;)V

    .line 90
    invoke-virtual {v0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    new-instance p2, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 95
    invoke-virtual {v0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    new-instance p2, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 89
    check-cast v0, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    iput-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 111
    sget-object p2, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string p3, "Cannot create transcoder."

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    .line 113
    iget-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 115
    :goto_1
    iget-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    return-object p1
.end method

.method static final createTranscoder$lambda$4$lambda$1(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;Lcom/metamoji/video/transcoder/IAmvTranscoder;F)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;F)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final createTranscoder$lambda$4$lambda$1$lambda$0(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;F)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static final createTranscoder$lambda$4$lambda$3(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)Lkotlin/Unit;
    .locals 2

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;ZLcom/metamoji/video/transcoder/IAmvTranscoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final createTranscoder$lambda$4$lambda$3$lambda$2(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;ZLcom/metamoji/video/transcoder/IAmvTranscoder;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mStatus:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->setCompleted(Z)V

    .line 98
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mStatus:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    invoke-virtual {v0, p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->setResult(Z)V

    .line 99
    iget-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mStatus:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    invoke-interface {p2}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvError;->copyFrom(Lcom/metamoji/video/AmvError;)V

    .line 100
    iget-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mStatus:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    .line 103
    iget-object p0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 105
    invoke-interface {p2}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/FuncyListener2;->reset()V

    .line 106
    invoke-interface {p2}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/FuncyListener2;->reset()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->cancel()V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->dispose()V

    :cond_2
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    .line 63
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mStatus:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->reset()V

    .line 65
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isBusy()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 3

    .line 119
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 120
    sget-object v0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final transcode(Ljava/io/File;Ljava/io/File;Landroid/content/Context;Z)Z
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 72
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->createTranscoder(Ljava/io/File;Landroid/content/Context;Z)Lcom/metamoji/video/transcoder/IAmvTranscoder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->transcode(Ljava/io/File;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final truncate(Ljava/io/File;Ljava/io/File;JJLandroid/content/Context;Z)Z
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->mTranscoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    invoke-direct {p0, p1, p7, p8}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->createTranscoder(Ljava/io/File;Landroid/content/Context;Z)Lcom/metamoji/video/transcoder/IAmvTranscoder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p6}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->truncate(Ljava/io/File;JJ)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
