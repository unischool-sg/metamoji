.class public final Lcom/metamoji/lib/utils/binding/impl/ClickBinding;
.super Ljava/lang/Object;
.source "ClickBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/ClickBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001c*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u001cB9\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eB-\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000fJ\u0012\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u000cH\u0016R\u0013\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/ClickBinding;",
        "V",
        "Landroid/view/View;",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "Landroid/view/View$OnClickListener;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "listeners",
        "Lcom/metamoji/lib/utils/Listeners;",
        "fn",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lcom/metamoji/lib/utils/Listeners;Lkotlin/jvm/functions/Function1;)V",
        "(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V",
        "getView",
        "()Landroid/view/View;",
        "Landroid/view/View;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "getMode",
        "()Lcom/metamoji/lib/utils/binding/BindingMode;",
        "key",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "onClick",
        "v",
        "dispose",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/ClickBinding$Companion;


# instance fields
.field private key:Lcom/metamoji/lib/utils/IDisposable;

.field private final listeners:Lcom/metamoji/lib/utils/Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Listeners<",
            "TV;>;"
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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/ClickBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ClickBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lcom/metamoji/lib/utils/Listeners;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "TV;",
            "Lcom/metamoji/lib/utils/Listeners<",
            "TV;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->view:Landroid/view/View;

    .line 20
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->listeners:Lcom/metamoji/lib/utils/Listeners;

    .line 24
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 27
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p3, p1, p4}, Lcom/metamoji/lib/utils/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->key:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "TV;",
            "Lkotlin/jvm/functions/Function1<",
            "-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/metamoji/lib/utils/Listeners;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Listeners;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lcom/metamoji/lib/utils/Listeners;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->key:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->key:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->view:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->listeners:Lcom/metamoji/lib/utils/Listeners;

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ClickBinding;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method
