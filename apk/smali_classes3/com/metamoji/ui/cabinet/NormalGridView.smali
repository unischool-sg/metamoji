.class public Lcom/metamoji/ui/cabinet/NormalGridView;
.super Lcom/metamoji/ui/cabinet/NoteListGridView;
.source "NormalGridView.java"


# instance fields
.field m_visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NormalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/NormalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x4

    .line 25
    iput p1, p0, Lcom/metamoji/ui/cabinet/NormalGridView;->m_visibility:I

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/NoteListGridView;->onSizeChanged(IIII)V

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NormalGridView;->getVisibility()I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/cabinet/NormalGridView;->m_visibility:I

    const/4 p2, 0x4

    .line 33
    invoke-super {p0, p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setVisibility(I)V

    .line 34
    new-instance p2, Lcom/metamoji/ui/cabinet/NormalGridView$1;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/ui/cabinet/NormalGridView$1;-><init>(Lcom/metamoji/ui/cabinet/NormalGridView;I)V

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/cabinet/NormalGridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/metamoji/ui/cabinet/NormalGridView;->m_visibility:I

    .line 48
    invoke-super {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setVisibility(I)V

    return-void
.end method
