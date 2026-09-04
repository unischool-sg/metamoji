.class public final Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0014\u001a\u00020\u0005J \u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0016R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "loadMore",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getLoadMore",
        "()Lkotlin/jvm/functions/Function1;",
        "previousTotal",
        "loading",
        "",
        "visibleThreshold",
        "firstVisibleItem",
        "visibleItemCount",
        "totalItemCount",
        "currentPage",
        "mRecyclerViewHelper",
        "Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;",
        "refresh",
        "onScrolled",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "dy",
        "app"
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
.field private currentPage:I

.field private firstVisibleItem:I

.field private final loadMore:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z

.field private mRecyclerViewHelper:Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;

.field private previousTotal:I

.field private totalItemCount:I

.field private visibleItemCount:I

.field private final visibleThreshold:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loadMore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loadMore:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loading:Z

    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->visibleThreshold:I

    .line 30
    iput p1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->currentPage:I

    return-void
.end method


# virtual methods
.method public final getLoadMore()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loadMore:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 53
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->mRecyclerViewHelper:Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;

    if-nez p2, :cond_0

    sget-object p2, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->Companion:Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper$Companion;

    invoke-virtual {p2, p1}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper$Companion;->createHelper(Landroidx/recyclerview/widget/RecyclerView;)Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;

    move-result-object p2

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->mRecyclerViewHelper:Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->visibleItemCount:I

    .line 56
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->getItemCount()I

    move-result p1

    iput p1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->totalItemCount:I

    .line 57
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->firstVisibleItem:I

    .line 59
    iget-boolean p2, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loading:Z

    if-eqz p2, :cond_1

    .line 60
    iget p2, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->totalItemCount:I

    iget p3, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->previousTotal:I

    if-le p2, p3, :cond_1

    const/4 p3, 0x0

    .line 61
    iput-boolean p3, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loading:Z

    .line 62
    iput p2, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->previousTotal:I

    .line 65
    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loading:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->totalItemCount:I

    iget p3, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->visibleItemCount:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->visibleThreshold:I

    add-int/2addr p1, p3

    if-gt p2, p1, :cond_2

    .line 68
    iget p1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->currentPage:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->currentPage:I

    .line 70
    iget-object p3, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loadMore:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-boolean p2, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loading:Z

    :cond_2
    return-void
.end method

.method public final refresh()V
    .locals 2

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->previousTotal:I

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->loading:Z

    .line 41
    iput v0, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->firstVisibleItem:I

    .line 42
    iput v0, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->visibleItemCount:I

    .line 43
    iput v0, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->totalItemCount:I

    .line 44
    iput v0, p0, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->currentPage:I

    return-void
.end method
