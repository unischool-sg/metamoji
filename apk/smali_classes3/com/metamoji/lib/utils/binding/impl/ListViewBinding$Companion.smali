.class public final Lcom/metamoji/lib/utils/binding/impl/ListViewBinding$Companion;
.super Ljava/lang/Object;
.source "ListViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JL\u0010\u0004\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u001e\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\u00110\u000eJL\u0010\u0004\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u00122\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c2\u001e\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\u00110\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/ListViewBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;",
        "T",
        "view",
        "Landroid/widget/ListView;",
        "list",
        "",
        "itemLayout",
        "",
        "bindView",
        "Lkotlin/Function3;",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "Landroid/view/View;",
        "",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/widget/ListView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ILkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ListView;",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;

    invoke-direct {v0, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ILkotlin/jvm/functions/Function3;)V

    .line 36
    new-instance p2, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-direct {p2, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;-><init>(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V

    return-object p2
.end method

.method public final create(Landroid/widget/ListView;Ljava/util/List;ILkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ListView;",
            "Ljava/util/List<",
            "+TT;>;I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;

    invoke-direct {v0, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/functions/Function3;)V

    .line 31
    new-instance p2, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-direct {p2, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/ListViewBinding;-><init>(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V

    return-object p2
.end method
