.class public final Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;
.super Ljava/lang/Object;
.source "Command.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClickListenerDisposer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "v",
        "Landroid/view/View;",
        "bind",
        "<init>",
        "(Landroid/view/View;Lcom/metamoji/lib/utils/IDisposable;)V",
        "view",
        "Ljava/lang/ref/WeakReference;",
        "getView",
        "()Ljava/lang/ref/WeakReference;",
        "setView",
        "(Ljava/lang/ref/WeakReference;)V",
        "dispose",
        "",
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
.field private bind:Lcom/metamoji/lib/utils/IDisposable;

.field private view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/metamoji/lib/utils/IDisposable;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;->bind:Lcom/metamoji/lib/utils/IDisposable;

    .line 34
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;->view:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/metamoji/lib/utils/IDisposable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/IDisposable;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;->bind:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;->view:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 39
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 40
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;->view:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;->bind:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public final getView()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;->view:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final setView(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/Command$ClickListenerDisposer;->view:Ljava/lang/ref/WeakReference;

    return-void
.end method
