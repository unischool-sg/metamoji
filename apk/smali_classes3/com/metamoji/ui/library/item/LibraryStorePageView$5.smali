.class Lcom/metamoji/ui/library/item/LibraryStorePageView$5;
.super Ljava/lang/Object;
.source "LibraryStorePageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryStorePageView;->configureRequestFailedPage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 919
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 921
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$5;->this$0:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->onRetryButtonClicked()V

    return-void
.end method
