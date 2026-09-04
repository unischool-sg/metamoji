.class Lcom/metamoji/ui/library/item/LibraryViewDialog$5;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;


# direct methods
.method public static synthetic $r8$lambda$Yyf1FNZEAtP7ji1YJIxe6lXvBY4(Lcom/metamoji/ui/library/item/LibraryViewDialog$5;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$5;->lambda$onLayoutChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 484
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$5;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$5;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->initialize()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 490
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$5;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    new-instance p2, Lcom/metamoji/ui/library/item/LibraryViewDialog$5$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$5$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$5;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 493
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$5;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$5;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-static {p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->-$$Nest$fgetmOnLayoutChangeListener(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
