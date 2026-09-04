.class Lcom/metamoji/ui/library/item/LibraryPageView$2;
.super Landroidx/appcompat/widget/AppCompatTextView;
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

    .line 198
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$2;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onSizeChanged(IIII)V

    .line 203
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$2;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget p1, p1, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabelHeight:I

    if-nez p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$2;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iput p2, p1, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabelHeight:I

    :cond_0
    return-void
.end method
