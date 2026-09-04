.class Lcom/metamoji/ui/library/item/LibraryPageView$5;
.super Ljava/lang/Object;
.source "LibraryPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/LibraryPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPageView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1143
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1147
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    .line 1148
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryPageView;->getScrollY()I

    move-result v1

    .line 1154
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    if-le v1, v0, :cond_0

    .line 1149
    invoke-static {v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->-$$Nest$fgetm_scrollCount(Lcom/metamoji/ui/library/item/LibraryPageView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Lcom/metamoji/ui/library/item/LibraryPageView;->-$$Nest$fputm_scrollCount(Lcom/metamoji/ui/library/item/LibraryPageView;I)V

    .line 1150
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget-object v1, v1, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->height:I

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-static {v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->-$$Nest$fgetm_scrollCount(Lcom/metamoji/ui/library/item/LibraryPageView;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-static {v3}, Lcom/metamoji/ui/library/item/LibraryPageView;->-$$Nest$fgetm_scrollCount(Lcom/metamoji/ui/library/item/LibraryPageView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    .line 1151
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->scrollTo(II)V

    return-void

    .line 1154
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->cancelAutoScrollTimer()V

    return-void
.end method
