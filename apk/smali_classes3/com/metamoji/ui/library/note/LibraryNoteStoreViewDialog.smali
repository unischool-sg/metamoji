.class public Lcom/metamoji/ui/library/note/LibraryNoteStoreViewDialog;
.super Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;
.source "LibraryNoteStoreViewDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected createStoreViewClass(Landroid/content/Context;Ljava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPageView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ui/library/item/LibraryPageView;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/metamoji/ui/library/note/LibraryNoteStorePageView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/note/LibraryNoteStorePageView;-><init>(Landroid/content/Context;)V

    .line 20
    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/metamoji/ui/library/note/LibraryNoteStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/library/item/LibraryPageView;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;Ljava/util/Map;II)V

    return-object v0
.end method

.method protected downloadAlertMessageId()I
    .locals 1

    .line 33
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Download_Style_Msg:I

    return v0
.end method
