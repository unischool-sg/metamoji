.class public final Lcom/metamoji/ui/ImportActivityProgressUI;
.super Ljava/lang/Object;
.source "ImportActivityProgressUI.kt"

# interfaces
.implements Lcom/metamoji/ui/INtProgressUIEx;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0006J\u0012\u0010\u001a\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0006H\u0016J\u0008\u0010 \u001a\u00020\u0006H\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/ui/ImportActivityProgressUI;",
        "Lcom/metamoji/ui/INtProgressUIEx;",
        "<init>",
        "()V",
        "cancellationFunc",
        "Lkotlin/Function0;",
        "",
        "getCancellationFunc",
        "()Lkotlin/jvm/functions/Function0;",
        "setCancellationFunc",
        "(Lkotlin/jvm/functions/Function0;)V",
        "progressBarRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/widget/ProgressBar;",
        "progressTextViewRef",
        "Landroid/widget/TextView;",
        "progressBar",
        "getProgressBar",
        "()Landroid/widget/ProgressBar;",
        "progressTextView",
        "getProgressTextView",
        "()Landroid/widget/TextView;",
        "attach",
        "activity",
        "Lcom/metamoji/ui/ImportActivity;",
        "detach",
        "setProgressText",
        "text",
        "",
        "progress",
        "",
        "finish",
        "cancel",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/ui/ImportActivityProgressUI;

.field private static cancellationFunc:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static progressBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private static progressTextViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/ui/ImportActivityProgressUI;

    invoke-direct {v0}, Lcom/metamoji/ui/ImportActivityProgressUI;-><init>()V

    sput-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->INSTANCE:Lcom/metamoji/ui/ImportActivityProgressUI;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getProgressBar(Lcom/metamoji/ui/ImportActivityProgressUI;)Landroid/widget/ProgressBar;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/ui/ImportActivityProgressUI;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProgressTextView(Lcom/metamoji/ui/ImportActivityProgressUI;)Landroid/widget/TextView;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/ui/ImportActivityProgressUI;->getProgressTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->progressBarRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getProgressTextView()Landroid/widget/TextView;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->progressTextViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final attach(Lcom/metamoji/ui/ImportActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget v1, Lcom/metamoji/noteanytime/R$id;->progress_bar:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->progressBarRef:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget v1, Lcom/metamoji/noteanytime/R$id;->progress_text:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->progressTextViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/ui/ImportActivityProgressUI;->getCancellationFunc()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final detach()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->progressBarRef:Ljava/lang/ref/WeakReference;

    .line 36
    sput-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->progressTextViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method public getCancellationFunc()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/metamoji/ui/ImportActivityProgressUI;->cancellationFunc:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public progress(F)V
    .locals 7

    .line 46
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/ui/ImportActivityProgressUI$progress$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/metamoji/ui/ImportActivityProgressUI$progress$1;-><init>(FLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public setCancellationFunc(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 19
    sput-object p1, Lcom/metamoji/ui/ImportActivityProgressUI;->cancellationFunc:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 7

    .line 40
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/ui/ImportActivityProgressUI$setProgressText$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/metamoji/ui/ImportActivityProgressUI$setProgressText$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
