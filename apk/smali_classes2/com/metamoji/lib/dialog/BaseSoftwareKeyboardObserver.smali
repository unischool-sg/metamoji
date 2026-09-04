.class public abstract Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;
.super Ljava/lang/Object;
.source "UtSoftwareKeyboardObserver.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008 \u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J@\u0010\u0016\u001a\u00020\u000126\u0010\u0017\u001a2\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u000bH\u0016J\u0008\u0010\u0018\u001a\u00020\u0011H\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tRJ\u0010\n\u001a2\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u000bX\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;",
        "Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "disposer",
        "Lcom/metamoji/lib/utils/LifecycleDisposer;",
        "getDisposer",
        "()Lcom/metamoji/lib/utils/LifecycleDisposer;",
        "callback",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "keyboardHeight",
        "screenHeight",
        "",
        "getCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "setCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "observe",
        "listener",
        "dispose",
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


# instance fields
.field protected callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final disposer:Lcom/metamoji/lib/utils/LifecycleDisposer;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/metamoji/lib/utils/LifecycleDisposer;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/LifecycleDisposer;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;->disposer:Lcom/metamoji/lib/utils/LifecycleDisposer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;->disposer:Lcom/metamoji/lib/utils/LifecycleDisposer;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/LifecycleDisposer;->dispose()V

    return-void
.end method

.method protected final getCallback()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;->callback:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getDisposer()Lcom/metamoji/lib/utils/LifecycleDisposer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;->disposer:Lcom/metamoji/lib/utils/LifecycleDisposer;

    return-object v0
.end method

.method public observe(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;->setCallback(Lkotlin/jvm/functions/Function2;)V

    .line 31
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    return-object p1
.end method

.method protected final setCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/metamoji/lib/dialog/BaseSoftwareKeyboardObserver;->callback:Lkotlin/jvm/functions/Function2;

    return-void
.end method
