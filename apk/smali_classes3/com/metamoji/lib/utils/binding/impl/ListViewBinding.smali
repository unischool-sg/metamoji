.class public final Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;
.super Ljava/lang/Object;
.source "ListViewBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/ListViewBinding$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "view",
        "Landroid/widget/ListView;",
        "adapter",
        "Landroid/widget/ListAdapter;",
        "<init>",
        "(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V",
        "getView",
        "()Landroid/widget/ListView;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "getMode",
        "()Lcom/metamoji/lib/utils/binding/BindingMode;",
        "dispose",
        "",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/ListViewBinding$Companion;


# instance fields
.field private final mode:Lcom/metamoji/lib/utils/binding/BindingMode;

.field private final view:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ListViewBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;->view:Landroid/widget/ListView;

    .line 16
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;->view:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/metamoji/lib/utils/IDisposable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/lib/utils/IDisposable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;->view:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    return-void
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method public final getView()Landroid/widget/ListView;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;->view:Landroid/widget/ListView;

    return-object v0
.end method
