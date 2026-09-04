.class public Lcom/metamoji/ui/library/sheet/LibrarySheetPartView;
.super Lcom/metamoji/ui/library/note/LibraryNotePartView;
.source "LibrarySheetPartView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected showContextMenu(Lcom/metamoji/lb/LbConstants$LbPageType;)V
    .locals 0

    return-void
.end method

.method public updateTitle()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPartView;->m_titleLabel:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 25
    iget-object v1, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPartView;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/sheet/LibrarySheetPartView;->m_titleLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
