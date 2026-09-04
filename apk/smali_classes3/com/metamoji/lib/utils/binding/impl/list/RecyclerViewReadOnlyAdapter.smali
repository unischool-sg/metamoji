.class public final Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewReadOnlyAdapter.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposable;
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;",
        ">;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/Collection<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00040\u00032\u0008\u0012\u0004\u0012\u00020\u00060\u0005:\u0001*Bz\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\n\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c\u0012K\u0010\r\u001aG\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u00160\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u0010\u001f\u001a\u00020\u0016H\u0016J\u0018\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000cH\u0016J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u000cH\u0016J\u0008\u0010\'\u001a\u00020\u000cH\u0016J\u0016\u0010(\u001a\u00020\u00162\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000RS\u0010\r\u001aG\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u00160\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006+"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;",
        "T",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "Landroidx/lifecycle/Observer;",
        "",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "listSource",
        "Landroidx/lifecycle/LiveData;",
        "itemViewLayoutId",
        "",
        "bindView",
        "Lkotlin/Function3;",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "Lkotlin/ParameterName;",
        "name",
        "binder",
        "Landroid/view/View;",
        "view",
        "item",
        "",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;ILkotlin/jvm/functions/Function3;)V",
        "list",
        "",
        "getList",
        "()Ljava/util/List;",
        "setList",
        "(Ljava/util/List;)V",
        "dispose",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field private final bindView:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/view/View;",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final itemViewLayoutId:I

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
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "TT;>;>;I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
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

    const-string v0, "bindView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->listSource:Landroidx/lifecycle/LiveData;

    .line 19
    iput p3, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->itemViewLayoutId:I

    .line 20
    iput-object p4, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->bindView:Lkotlin/jvm/functions/Function3;

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->list:Ljava/util/List;

    .line 24
    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->listSource:Landroidx/lifecycle/LiveData;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->list:Ljava/util/List;

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

    .line 22
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->onBindViewHolder(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;->getBinder()Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    .line 42
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->bindView:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;->getBinder()Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object v1

    iget-object p1, p1, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->onChanged(Ljava/util/Collection;)V

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

    .line 50
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->list:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 36
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->itemViewLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter$ViewHolder;-><init>(Landroid/view/View;)V

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

    .line 22
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewReadOnlyAdapter;->list:Ljava/util/List;

    return-void
.end method
