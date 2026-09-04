.class Lcom/metamoji/ui/library/item/LibraryPagerButton$1;
.super Ljava/lang/Object;
.source "LibraryPagerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPagerButton;->configureButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPagerButton;

.field final synthetic val$finalIndex:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPagerButton;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPagerButton;

    iput p2, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton$1;->val$finalIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton$1;->this$0:Lcom/metamoji/ui/library/item/LibraryPagerButton;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPagerButton;->m_libraryDlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPagerButton$1;->val$finalIndex:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setCurrentIndex(I)V

    return-void
.end method
