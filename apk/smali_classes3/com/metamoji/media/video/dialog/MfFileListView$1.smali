.class public final Lcom/metamoji/media/video/dialog/MfFileListView$1;
.super Ljava/lang/Object;
.source "MfFileListView.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/metamoji/media/video/dialog/MfFileListView$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onGlobalLayout",
        "",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/metamoji/media/video/dialog/MfFileListView;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListView;

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1177
    new-instance v0, Lcom/metamoji/media/video/dialog/ColumnQuantifier;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->$context:Landroid/content/Context;

    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_media_files_list_item:I

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListView;

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/metamoji/video/AmvUtilsKt;->getLayoutWidth(Landroid/view/View;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/media/video/dialog/ColumnQuantifier;-><init>(Landroid/content/Context;II)V

    .line 1178
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->calculateNoOfColumns()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Lcom/metamoji/media/video/dialog/MfFileListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1179
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListView;

    new-instance v2, Lcom/metamoji/media/video/dialog/SpacesItemDecoration;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/ColumnQuantifier;->calculateSpacing()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/metamoji/media/video/dialog/SpacesItemDecoration;-><init>(I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Lcom/metamoji/media/video/dialog/MfFileListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1180
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListView;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListView;->access$getLoadMoreListener$p(Lcom/metamoji/media/video/dialog/MfFileListView;)Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfFileListView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1183
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListView;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
