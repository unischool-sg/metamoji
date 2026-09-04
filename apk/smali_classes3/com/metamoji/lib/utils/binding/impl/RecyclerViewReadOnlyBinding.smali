.class public final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;
.super Ljava/lang/Object;
.source "RecyclerViewReadOnlyBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/binding/IBinding;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u000fB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;",
        "T",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "<init>",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "getView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;


# instance fields
.field private final mode:Lcom/metamoji/lib/utils/binding/BindingMode;

.field private final view:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    sget-object p1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/lib/utils/IDisposable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    :cond_1
    return-void
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method public final getView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
