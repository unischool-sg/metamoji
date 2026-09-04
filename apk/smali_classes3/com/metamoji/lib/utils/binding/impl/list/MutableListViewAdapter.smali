.class public final Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;
.super Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;
.source "ListViewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B?\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u001e\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;",
        "observableList",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "itemViewLayoutId",
        "",
        "bindView",
        "Lkotlin/Function3;",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "Landroid/view/View;",
        "",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ILkotlin/jvm/functions/Function3;)V",
        "disposable",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "registerDataSetObserver",
        "observer",
        "Landroid/database/DataSetObserver;",
        "unregisterDataSetObserver",
        "dispose",
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
.field private disposable:Lcom/metamoji/lib/utils/IDisposable;

.field private final observableList:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;I",
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

    const-string v0, "observableList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/functions/Function3;)V

    .line 69
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->observableList:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    return-void
.end method

.method static final registerDataSetObserver$lambda$0(Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->notifyDataSetChanged()V

    .line 79
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->dispose()V

    .line 91
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->notifyDataSetInvalidated()V

    .line 93
    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->observableList:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->addListenerForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    .line 80
    invoke-super {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/MutableListViewAdapter;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    .line 86
    invoke-super {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ListViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
