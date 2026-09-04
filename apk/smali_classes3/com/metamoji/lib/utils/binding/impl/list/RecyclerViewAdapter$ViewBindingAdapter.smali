.class public final Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;
.super Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;
.source "RecyclerViewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewBindingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base<",
        "TT;",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder<",
        "TB;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00050\u0004:\u0001%B\u00a2\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u0012!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00028\u00010\u000b\u0012`\u0010\u0010\u001a\\\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\u0011\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020!H\u0016J\u001e\u0010\"\u001a\u00020\u00182\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010$\u001a\u00020!H\u0016R,\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00028\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cRk\u0010\u0010\u001a\\\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;",
        "T",
        "B",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "list",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "inflate",
        "Lkotlin/Function1;",
        "Landroid/view/ViewGroup;",
        "Lkotlin/ParameterName;",
        "name",
        "parent",
        "bindView",
        "Lkotlin/Function4;",
        "controls",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "binder",
        "Landroid/view/View;",
        "view",
        "item",
        "",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "getInflate",
        "()Lkotlin/jvm/functions/Function1;",
        "getBindView",
        "()Lkotlin/jvm/functions/Function4;",
        "onCreateViewHolder",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "SimpleViewHolder",
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
.field private final bindView:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "TB;",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/view/View;",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final inflate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/ViewGroup;",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/ViewGroup;",
            "+TB;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-TB;-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Base;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V

    .line 124
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->inflate:Lkotlin/jvm/functions/Function1;

    .line 125
    iput-object p4, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->bindView:Lkotlin/jvm/functions/Function4;

    return-void
.end method


# virtual methods
.method public final getBindView()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "TB;",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/view/View;",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->bindView:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final getInflate()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/ViewGroup;",
            "TB;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->inflate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 121
    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->onBindViewHolder(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder<",
            "TB;>;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;->getBinder()Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    .line 137
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->bindView:Lkotlin/jvm/functions/Function4;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;->getControls()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;->getBinder()Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object v2

    iget-object p1, p1, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->getList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, v2, p1, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder<",
            "TB;>;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;->inflate:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    .line 132
    new-instance p2, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;

    invoke-direct {p2, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter$SimpleViewHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-object p2
.end method
