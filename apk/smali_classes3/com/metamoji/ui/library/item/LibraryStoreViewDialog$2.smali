.class Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;
.super Ljava/lang/Object;
.source "LibraryStoreViewDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;


# direct methods
.method public static synthetic $r8$lambda$SO7xiWCWl0rIlJCCXNx2pPHuuU8(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;->lambda$onLayoutChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->tilePages()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 175
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 178
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    invoke-static {p2}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->-$$Nest$fgetmOnLayoutChangeListener(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
