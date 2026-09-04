.class public final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;
.super Ljava/lang/Object;
.source "RecyclerViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jl\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u001e\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\u00170\u0014J\u0097\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u0006\"\u0008\u0008\u0002\u0010\u0018*\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u0002H\u00180\u001b2$\u0010\u0013\u001a \u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\u00170 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;",
        "T",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "list",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "itemViewLayoutId",
        "",
        "fixedSize",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "bindView",
        "Lkotlin/Function3;",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "Landroid/view/View;",
        "",
        "B",
        "Landroidx/viewbinding/ViewBinding;",
        "inflate",
        "Lkotlin/Function1;",
        "Landroid/view/ViewGroup;",
        "Lkotlin/ParameterName;",
        "name",
        "parent",
        "Lkotlin/Function4;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
    .locals 8

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    and-int/lit8 p5, p8, 0x20

    if-eqz p5, :cond_1

    .line 200
    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p5, p6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object p6, p5

    check-cast p6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 198
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
    .locals 8

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p8, 0x10

    if-eqz p4, :cond_1

    .line 210
    new-instance p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object p5, p4

    check-cast p5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 208
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;IZ",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    invoke-direct {v0, p3, p2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 203
    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 204
    invoke-virtual {p2, p6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 205
    new-instance p5, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Simple;

    invoke-direct {p5, p1, p3, p4, p7}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$Simple;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ILkotlin/jvm/functions/Function3;)V

    check-cast p5, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public final create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "B::",
            "Landroidx/viewbinding/ViewBinding;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;Z",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
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
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflate"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    invoke-direct {v0, p3, p2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 214
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 215
    invoke-virtual {p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    new-instance p4, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;

    invoke-direct {p4, p1, p3, p6, p7}, Lcom/metamoji/lib/utils/binding/impl/list/RecyclerViewAdapter$ViewBindingAdapter;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    check-cast p4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method
