.class Lcom/metamoji/ui/library/item/LibraryViewDialog$2$1;
.super Ljava/util/ArrayList;
.source "LibraryViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$2$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$2;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$2$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
