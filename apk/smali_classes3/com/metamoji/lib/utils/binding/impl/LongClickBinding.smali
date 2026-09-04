.class public final Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;
.super Ljava/lang/Object;
.source "ClickBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u0004B+\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0013\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;",
        "V",
        "Landroid/view/View;",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "Landroid/view/View$OnLongClickListener;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "fn",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V",
        "getView",
        "()Landroid/view/View;",
        "Landroid/view/View;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "getMode",
        "()Lcom/metamoji/lib/utils/binding/BindingMode;",
        "callback",
        "Lcom/metamoji/lib/utils/Callback;",
        "onLongClick",
        "v",
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
.field private callback:Lcom/metamoji/lib/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Callback<",
            "TV;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:Lcom/metamoji/lib/utils/binding/BindingMode;

.field private final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "TV;",
            "Lkotlin/jvm/functions/Function1<",
            "-TV;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->view:Landroid/view/View;

    .line 52
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 53
    new-instance v0, Lcom/metamoji/lib/utils/Callback;

    invoke-direct {v0, p1, p3}, Lcom/metamoji/lib/utils/Callback;-><init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->callback:Lcom/metamoji/lib/utils/Callback;

    .line 55
    move-object p1, p0

    check-cast p1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->callback:Lcom/metamoji/lib/utils/Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Callback;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->callback:Lcom/metamoji/lib/utils/Callback;

    return-void
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->view:Landroid/view/View;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->callback:Lcom/metamoji/lib/utils/Callback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LongClickBinding;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/Callback;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
