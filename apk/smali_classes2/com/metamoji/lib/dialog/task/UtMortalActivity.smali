.class public abstract Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UtMortalActivity.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/IUtDialogHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 C2\u00020\u00012\u00020\u0002:\u0001CB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000cH\u0014J\u0008\u0010\u0019\u001a\u00020\u0011H\u0014J\u0008\u0010\u001a\u001a\u00020\u0011H\u0014J\u0008\u0010\u001b\u001a\u00020\u0011H\u0014J\u0018\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010%\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0018\u0010&\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$J\u000e\u0010\'\u001a\u00020\u00152\u0006\u0010#\u001a\u00020$J \u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0010\u00100\u001a\u000c\u0012\u0004\u0012\u00020*01j\u0002`2J6\u00103\u001a\u00020\u00112\u0006\u00104\u001a\u0002052\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\"072\u0016\u0008\u0002\u00108\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u0015\u0018\u000109H\u0004J2\u00103\u001a\u00020\u00112\u0006\u00104\u001a\u0002052\u0008\u0008\u0002\u0010;\u001a\u00020\"2\u0016\u0008\u0002\u00108\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u0015\u0018\u000109H\u0005J\u0013\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010B\u001a\u00020\u000cH\u0096\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0094\u0004\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u00020=X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?\u00a8\u0006D"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtMortalActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/metamoji/lib/dialog/IUtDialogHost;",
        "dialogHostManager",
        "Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/UtDialogHostManager;)V",
        "()V",
        "getDialogHostManager",
        "()Lcom/metamoji/lib/dialog/UtDialogHostManager;",
        "immortalTaskNameList",
        "",
        "",
        "getImmortalTaskNameList",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "notifyImmortalTaskResult",
        "",
        "taskInfo",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;",
        "queryDisposeTaskOnFinishActivity",
        "",
        "name",
        "observersDisposer",
        "Lcom/metamoji/lib/utils/Disposer;",
        "onResume",
        "onPause",
        "onDestroy",
        "onImmortalTaskStateChanged",
        "taskName",
        "state",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
        "handleKeyEvent",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "mortalTaskKeeper_onKeyDown",
        "onKeyDown",
        "dispatchKeyEvent",
        "mRootViewInsetsListeners",
        "Lcom/metamoji/lib/utils/Listeners;",
        "Landroidx/core/graphics/Insets;",
        "mLastInsets",
        "addRootViewInsetsListener",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "listener",
        "Lcom/metamoji/lib/utils/Listeners$IListener;",
        "Lcom/metamoji/lib/dialog/task/IUtRootViewInsetsListener;",
        "setupWindowInsetsListener",
        "rootView",
        "Landroid/view/View;",
        "getTargetInsetsZones",
        "Lkotlin/Function0;",
        "customHandler",
        "Lkotlin/Function1;",
        "Landroidx/core/view/WindowInsetsCompat;",
        "targetInsetsZones",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "queryDialogResultReceptor",
        "Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;",
        "tag",
        "Companion",
        "dialog"
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
.field public static final Companion:Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;


# instance fields
.field private final dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

.field private final immortalTaskNameList:[Ljava/lang/String;

.field private final logger:Lcom/metamoji/lib/utils/UtLog;

.field private mLastInsets:Landroidx/core/graphics/Insets;

.field private mRootViewInsetsListeners:Lcom/metamoji/lib/utils/Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Listeners<",
            "Landroidx/core/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field

.field private final observersDisposer:Lcom/metamoji/lib/utils/Disposer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->Companion:Lcom/metamoji/lib/dialog/task/UtMortalActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogHostManager;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtDialogHostManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>(Lcom/metamoji/lib/dialog/UtDialogHostManager;)V

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/lib/dialog/UtDialogHostManager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    const/4 p1, 0x0

    .line 27
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->immortalTaskNameList:[Ljava/lang/String;

    .line 44
    new-instance p1, Lcom/metamoji/lib/utils/Disposer;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/Disposer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->observersDisposer:Lcom/metamoji/lib/utils/Disposer;

    .line 147
    new-instance p1, Lcom/metamoji/lib/utils/Listeners;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/Listeners;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mRootViewInsetsListeners:Lcom/metamoji/lib/utils/Listeners;

    .line 205
    sget-object p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method private final mortalTaskKeeper_onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 113
    :cond_0
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->currentDialog(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    new-instance v2, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/KeyEvent;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 116
    invoke-virtual {v1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    new-instance v0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, v1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda1;-><init>(Landroid/view/KeyEvent;Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x1

    return p1

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    new-instance v2, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, v1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda2;-><init>(Landroid/view/KeyEvent;Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    return v0

    .line 125
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method static final mortalTaskKeeper_onKeyDown$lambda$1(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 4

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isFragment()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key event to dialog (isFragment="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final mortalTaskKeeper_onKeyDown$lambda$2(Landroid/view/KeyEvent;Lcom/metamoji/lib/dialog/UtDialog;)Ljava/lang/String;
    .locals 3

    .line 118
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key event consumed by dialog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final mortalTaskKeeper_onKeyDown$lambda$3(Landroid/view/KeyEvent;Lcom/metamoji/lib/dialog/UtDialog;)Ljava/lang/String;
    .locals 3

    .line 122
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key event pass through activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final onImmortalTaskStateChanged(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;)V
    .locals 0

    .line 91
    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->getFinished()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 92
    sget-object p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->notifyImmortalTaskResult(Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static final onResume$lambda$0(Lcom/metamoji/lib/dialog/task/UtMortalActivity;Ljava/lang/String;Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onImmortalTaskStateChanged(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;)V

    .line 58
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic setupWindowInsetsListener$default(Lcom/metamoji/lib/dialog/task/UtMortalActivity;Landroid/view/View;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 188
    sget p2, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->NORMAL:I

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 187
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->setupWindowInsetsListener(Landroid/view/View;ILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setupWindowInsetsListener"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setupWindowInsetsListener$default(Lcom/metamoji/lib/dialog/task/UtMortalActivity;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 167
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->setupWindowInsetsListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setupWindowInsetsListener"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final setupWindowInsetsListener$lambda$5(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/view/View;Lcom/metamoji/lib/dialog/task/UtMortalActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    const-string v0, "v"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "insets"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 169
    invoke-interface {p0, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_0

    return-object p5

    .line 173
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 174
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;

    invoke-virtual {p1, p5, p0}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->calcInsets(Landroidx/core/view/WindowInsetsCompat;I)Landroidx/core/graphics/Insets;

    move-result-object p0

    .line 175
    iget p1, p0, Landroidx/core/graphics/Insets;->left:I

    iget p4, p0, Landroidx/core/graphics/Insets;->top:I

    iget v0, p0, Landroidx/core/graphics/Insets;->right:I

    iget v1, p0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p2, p1, p4, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 176
    iget-object p1, p3, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mRootViewInsetsListeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {p1, p0}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    .line 177
    iput-object p0, p3, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mLastInsets:Landroidx/core/graphics/Insets;

    return-object p5
.end method

.method static final setupWindowInsetsListener$lambda$6(I)I
    .locals 0

    return p0
.end method


# virtual methods
.method public final addRootViewInsetsListener(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/Listeners$IListener;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/metamoji/lib/utils/Listeners$IListener<",
            "Landroidx/core/graphics/Insets;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mLastInsets:Landroidx/core/graphics/Insets;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p2, v0}, Lcom/metamoji/lib/utils/Listeners$IListener;->onChanged(Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mRootViewInsetsListeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/Listeners$IListener;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final getDialogHostManager()Lcom/metamoji/lib/dialog/UtDialogHostManager;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    return-object v0
.end method

.method protected getImmortalTaskNameList()[Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->immortalTaskNameList:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected notifyImmortalTaskResult(Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->forceCloseAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mRootViewInsetsListeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Listeners;->dispose()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->verbose(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->mortalTaskKeeper_onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 140
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 5

    .line 66
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->getImmortalTaskNameList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->queryDisposeTaskOnFinishActivity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    sget-object v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v4, v3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->disposeTask(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->observersDisposer:Lcom/metamoji/lib/utils/Disposer;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Disposer;->reset()V

    .line 74
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/metamoji/lib/dialog/UtDialogOwnerKt;->toDialogOwner(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialogOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->unregisterOwner(Lcom/metamoji/lib/dialog/UtDialogOwner;)V

    return-void
.end method

.method protected onResume()V
    .locals 10

    .line 50
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 53
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/metamoji/lib/dialog/UtDialogOwnerKt;->toDialogOwner(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialogOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->registerOwner(Lcom/metamoji/lib/dialog/UtDialogOwner;)V

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->getImmortalTaskNameList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 55
    sget-object v5, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->reserveTask(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object v5

    .line 56
    iget-object v6, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->observersDisposer:Lcom/metamoji/lib/utils/Disposer;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/metamoji/lib/utils/IDisposable;

    move-object v8, p0

    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    new-instance v9, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0, v4}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/lib/dialog/task/UtMortalActivity;Ljava/lang/String;)V

    invoke-interface {v5, v8, v9}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->registerStateObserver(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v6, v7}, Lcom/metamoji/lib/utils/Disposer;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->dialogHostManager:Lcom/metamoji/lib/dialog/UtDialogHostManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    move-result-object p1

    return-object p1
.end method

.method protected queryDisposeTaskOnFinishActivity(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final setupWindowInsetsListener(Landroid/view/View;)V
    .locals 7

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->setupWindowInsetsListener$default(Lcom/metamoji/lib/dialog/task/UtMortalActivity;Landroid/view/View;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method protected final setupWindowInsetsListener(Landroid/view/View;I)V
    .locals 7

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->setupWindowInsetsListener$default(Lcom/metamoji/lib/dialog/task/UtMortalActivity;Landroid/view/View;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method protected final setupWindowInsetsListener(Landroid/view/View;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->setupWindowInsetsListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected final setupWindowInsetsListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getTargetInsetsZones"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/view/View;Lcom/metamoji/lib/dialog/task/UtMortalActivity;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method
