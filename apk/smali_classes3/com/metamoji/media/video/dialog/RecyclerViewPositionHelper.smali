.class public final Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;
.super Ljava/lang/Object;
.source "RecyclerViewUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\tJ*\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "<init>",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "itemCount",
        "",
        "getItemCount",
        "()I",
        "findFirstVisibleItemPosition",
        "findFirstCompletelyVisibleItemPosition",
        "findLastVisibleItemPosition",
        "findLastCompletelyVisibleItemPosition",
        "findOneVisibleChild",
        "Landroid/view/View;",
        "fromIndex",
        "toIndex",
        "completelyVisible",
        "",
        "acceptPartiallyVisible",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper$Companion;


# instance fields
.field private final layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->Companion:Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private final findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {v1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 146
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 147
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-le p2, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eq p1, p2, :cond_5

    .line 152
    iget-object v5, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 153
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 154
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-ge v6, v2, :cond_4

    if-le v7, v1, :cond_4

    if-eqz p3, :cond_3

    if-lt v6, v1, :cond_2

    if-gt v7, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p4, :cond_4

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_4

    :cond_3
    :goto_3
    return-object v5

    :cond_4
    :goto_4
    add-int/2addr p1, v3

    goto :goto_2

    :cond_5
    return-object v4
.end method


# virtual methods
.method public final findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final findFirstVisibleItemPosition()I
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final findLastCompletelyVisibleItemPosition()I
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final findLastVisibleItemPosition()I
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/RecyclerViewPositionHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
