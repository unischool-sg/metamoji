.class Lcom/metamoji/ui/library/item/LibraryPageView$3;
.super Landroid/widget/FrameLayout;
.source "LibraryPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPageView;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;Ljava/util/Map;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPageView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPageView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 224
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/library/item/LibraryPageView;->updateCommentLabel(I)V

    return-void
.end method
