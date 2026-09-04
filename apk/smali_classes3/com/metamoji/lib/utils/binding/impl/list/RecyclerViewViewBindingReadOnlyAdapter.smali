.class public final Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewReadOnlyAdapter.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposable;
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder<",
        "TB;>;>;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/Collection<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u00020\u00042\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00060\u00052\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00080\u0007:\u00012B\u00a8\u0001\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\u000c\u0012!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00028\u00010\u000e\u0012`\u0010\u0013\u001a\\\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b0\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010(\u001a\u00020\u001bH\u0016J\u001e\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020+H\u0016J\u001e\u0010,\u001a\u00020\u001b2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u0010.\u001a\u00020+H\u0016J\u0008\u0010/\u001a\u00020+H\u0016J\u0016\u00100\u001a\u00020\u001b2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016R\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00028\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fRk\u0010\u0013\u001a\\\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b0\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R \u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u00063"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;",
        "T",
        "B",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "Landroidx/lifecycle/Observer;",
        "",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "listSource",
        "Landroidx/lifecycle/LiveData;",
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
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "getInflate",
        "()Lkotlin/jvm/functions/Function1;",
        "getBindView",
        "()Lkotlin/jvm/functions/Function4;",
        "list",
        "",
        "getList",
        "()Ljava/util/List;",
        "setList",
        "(Ljava/util/List;)V",
        "dispose",
        "onCreateViewHolder",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemCount",
        "onChanged",
        "value",
        "ViewHolder",
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

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final listSource:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "TT;>;>;",
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

    const-string v0, "listSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->listSource:Landroidx/lifecycle/LiveData;

    .line 59
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->inflate:Lkotlin/jvm/functions/Function1;

    .line 60
    iput-object p4, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->bindView:Lkotlin/jvm/functions/Function4;

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->list:Ljava/util/List;

    .line 64
    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->listSource:Landroidx/lifecycle/LiveData;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

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

    .line 60
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->bindView:Lkotlin/jvm/functions/Function4;

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

    .line 59
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->inflate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 55
    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->onBindViewHolder(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder<",
            "TB;>;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;->getBinder()Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    .line 81
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->bindView:Lkotlin/jvm/functions/Function4;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;->getControls()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;->getBinder()Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object v2

    iget-object p1, p1, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, v2, p1, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->onChanged(Ljava/util/Collection;)V

    return-void
.end method

.method public onChanged(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->list:Ljava/util/List;

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder<",
            "TB;>;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->inflate:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    .line 76
    new-instance p2, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter$ViewHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-object p2
.end method

.method public final setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewViewBindingReadOnlyAdapter;->list:Ljava/util/List;

    return-void
.end method
