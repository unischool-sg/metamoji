.class public Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;
.super Landroid/view/ViewGroup;
.source "ScSharePalletViewGroup.java"


# instance fields
.field final BUTTON_HEIGHT:I

.field final BUTTON_WIDTH:I

.field _context:Landroid/content/Context;

.field _mutl:Lcom/metamoji/ui/menu/MenuUtils;

.field _openDlgBtn:Landroid/widget/ImageButton;

.field _pallet:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x2a

    .line 35
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->BUTTON_WIDTH:I

    const/16 v0, 0x52

    .line 36
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->BUTTON_HEIGHT:I

    .line 47
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 48
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->init()V

    return-void
.end method


# virtual methods
.method public calcMyLayout(Landroid/graphics/Rect;)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    float-to-int v0, v0

    .line 96
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    .line 97
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 99
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 100
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 101
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 102
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 125
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->setVisibility(I)V

    return-void
.end method

.method init()V
    .locals 4

    .line 53
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_openDlgBtn:Landroid/widget/ImageButton;

    .line 54
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->school_collabo_dlg_open_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_openDlgBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 56
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_openDlgBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup$1;-><init>(Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_openDlgBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->addView(Landroid/view/View;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 p2, 0x2a

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p1

    float-to-int p1, p1

    .line 78
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 p3, 0x52

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p2

    float-to-int p2, p2

    .line 79
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->_openDlgBtn:Landroid/widget/ImageButton;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/widget/ImageButton;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 88
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->setVisibility(I)V

    return-void
.end method

.method public update()V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->updateStatus()V

    return-void
.end method

.method public updateInfo()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->update()V

    return-void
.end method

.method public updateStatus()V
    .locals 0

    return-void
.end method
