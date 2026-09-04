.class Lcom/metamoji/ui/library/item/LibraryViewDialog$15;
.super Ljava/util/ArrayList;
.source "LibraryViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageDataArrayArrayForPageViewEx()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2269
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$15;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2271
    iget-object v0, p1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$15;->add(Ljava/lang/Object;)Z

    .line 2272
    iget-object v0, p1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$15;->add(Ljava/lang/Object;)Z

    .line 2273
    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$15;->add(Ljava/lang/Object;)Z

    return-void
.end method
