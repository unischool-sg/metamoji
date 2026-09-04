.class public final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBindingKt;
.super Ljava/lang/Object;
.source "RecyclerViewReadOnlyBinding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001aV\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u001e\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\r\u00a8\u0006\u0010"
    }
    d2 = {
        "recyclerViewReadOnlyBinding",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "listSource",
        "Landroidx/lifecycle/LiveData;",
        "",
        "",
        "itemViewLayoutId",
        "",
        "bindView",
        "Lkotlin/Function3;",
        "Landroid/view/View;",
        "",
        "utils"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final recyclerViewReadOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Landroidx/lifecycle/LiveData;ILkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Landroidx/lifecycle/LiveData;ILkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method
