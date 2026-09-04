.class public final Lcom/metamoji/lib/utils/binding/impl/Command;
.super Ljava/lang/Object;
.source "Command.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/metamoji/lib/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001f\u0008\u0016\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\nB\'\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u000cJ\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0008H\u0007J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0008H\u0007J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0008H\u0007J&\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0007J\u001e\u0010\u0016\u001a\u00020\u00032\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0007J.\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u00082\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0007J.\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u00082\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0007J\u0008\u0010\u0019\u001a\u00020\tH\u0007J\u0012\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0008H\u0016J\u0006\u0010\u001c\u001a\u00020\tJ$\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010$\u001a\u00020\tH\u0016R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "<init>",
        "()V",
        "foreverFn",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "view",
        "(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V",
        "listeners",
        "Lcom/metamoji/lib/utils/Listeners;",
        "connectView",
        "connectViewEx",
        "attachView",
        "bind",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "bindForever",
        "attachAndBind",
        "connectAndBind",
        "reset",
        "onClick",
        "v",
        "invoke",
        "onEditorAction",
        "",
        "Landroid/widget/TextView;",
        "actionId",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "dispose",
        "ClickListenerDisposer",
        "utils"
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
.field private final listeners:Lcom/metamoji/lib/utils/Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Listeners<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/metamoji/lib/utils/Listeners;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Listeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/Command;->listeners:Lcom/metamoji/lib/utils/Listeners;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foreverFn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    .line 28
    invoke-virtual {p0, p2}, Lcom/metamoji/lib/utils/binding/impl/Command;->bindForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    .line 29
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectView(Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/Command;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "foreverFn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/Command;->bindForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method


# virtual methods
.method public final attachAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p2}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectView(Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 98
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/lib/utils/binding/impl/Command;->bind(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/IDisposable;)V

    check-cast v0, Lcom/metamoji/lib/utils/IDisposable;

    return-object v0
.end method

.method public final attachView(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 76
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :goto_0
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/IDisposable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/metamoji/lib/utils/IDisposable;

    return-object v0
.end method

.method public final bind(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/Command;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final bindForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/Command;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/Listeners;->addForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/Command;->attachAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final connectView(Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Landroid/widget/EditText;

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object p0

    .line 60
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/Command;->attachView(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/Command;->reset()V

    return-void
.end method

.method public final invoke()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/Command;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/Command;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 122
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0xa0

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 123
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/Command;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final reset()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/Command;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Listeners;->clear()V

    return-void
.end method
