.class public final Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerViewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0008\u0008\u0002\u0010\u0001*\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0004\u001a\u00028\u0002\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "controls",
        "<init>",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "getControls",
        "()Landroidx/viewbinding/ViewBinding;",
        "Landroidx/viewbinding/ViewBinding;",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "getBinder",
        "()Lcom/metamoji/lib/utils/binding/Binder;",
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
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private final controls:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    const-string v0, "controls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;->controls:Landroidx/viewbinding/ViewBinding;

    .line 128
    new-instance p1, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method


# virtual methods
.method public final getBinder()Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-object v0
.end method

.method public final getControls()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;->controls:Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method
