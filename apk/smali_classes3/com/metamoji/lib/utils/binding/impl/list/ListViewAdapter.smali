.class public Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewAdapter.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter$IIdHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/metamoji/lib/utils/IDisposable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListViewAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListViewAdapter.kt\ncom/metamoji/lib/utils/binding/impl/list/ListViewAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u00020\u0003:\u0001!B?\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u001e\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0013\u001a\u00020\u0007H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u0007H\u0016J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0007H\u0016J\"\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010 \u001a\u00020\u000cH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\n0\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;",
        "T",
        "Landroid/widget/BaseAdapter;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "list",
        "",
        "itemViewLayoutId",
        "",
        "bindView",
        "Lkotlin/Function3;",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "Landroid/view/View;",
        "",
        "<init>",
        "(Ljava/util/List;ILkotlin/jvm/functions/Function3;)V",
        "binderMap",
        "",
        "getBinderMap",
        "()Ljava/util/Map;",
        "getCount",
        "getItem",
        "",
        "position",
        "getItemId",
        "",
        "createItemView",
        "parent",
        "Landroid/view/ViewGroup;",
        "updateItemView",
        "itemView",
        "getView",
        "convertView",
        "dispose",
        "IIdHolder",
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

.field private final binderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private final itemViewLayoutId:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;I",
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

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->list:Ljava/util/List;

    .line 14
    iput p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->itemViewLayoutId:I

    .line 15
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->bindView:Lkotlin/jvm/functions/Function3;

    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->binderMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->itemViewLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public final getBinderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->binderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 33
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 34
    instance-of v1, v0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter$IIdHolder;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter$IIdHolder;

    invoke-interface {v0}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter$IIdHolder;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p0, p3}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->createItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->updateItemView(Landroid/view/View;I)V

    return-object p2
.end method

.method public updateItemView(Landroid/view/View;I)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->binderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/utils/binding/Binder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->binderMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    .line 55
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->bindView:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, v0, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
