.class public Lcom/metamoji/ui/UiSharePalletViewGroup;
.super Landroid/view/ViewGroup;
.source "UiSharePalletViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final BUTTON_SIZE:I

.field final LAND_M_L:I

.field final LAND_M_M:I

.field final LAND_M_T:I

.field final MARGIN_B:I

.field final MARGIN_L:I

.field final MARGIN_M:I

.field final MARGIN_R:I

.field final MARGIN_T:I

.field _anchor:Landroid/graphics/Rect;

.field _chatAlert:Z

.field _context:Landroid/content/Context;

.field _landscape:Z

.field _mutl:Lcom/metamoji/ui/menu/MenuUtils;

.field _openChatBtn:Landroid/widget/ImageButton;

.field _pallet:Landroid/graphics/Rect;

.field _privateModeBtn:Landroid/widget/ImageButton;

.field _shareModeBtn:Landroid/view/View;

.field _statusView:Landroid/view/View;

.field _tmpRect:Landroid/graphics/Rect;

.field m_needlayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1c

    .line 30
    iput v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->MARGIN_M:I

    const/16 v0, 0x18

    .line 31
    iput v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->MARGIN_L:I

    const/16 v1, 0xe

    .line 32
    iput v1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->MARGIN_T:I

    .line 33
    iput v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->MARGIN_R:I

    .line 34
    iput v1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->MARGIN_B:I

    const/16 v0, 0x48

    .line 35
    iput v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->BUTTON_SIZE:I

    const/16 v0, 0x10

    .line 38
    iput v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->LAND_M_M:I

    const/16 v0, 0x14

    .line 39
    iput v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->LAND_M_L:I

    .line 40
    iput v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->LAND_M_T:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->m_needlayout:Z

    .line 45
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_anchor:Landroid/graphics/Rect;

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_tmpRect:Landroid/graphics/Rect;

    .line 211
    iput-boolean v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_chatAlert:Z

    .line 61
    iput-object p2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 62
    iput-object p1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_context:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_landscape:Z

    goto :goto_0

    .line 66
    :cond_0
    iput-boolean v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_landscape:Z

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->init()V

    return-void
.end method

.method public static initModeChgBtn(Landroid/view/View;II)V
    .locals 8

    .line 115
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->button_normal_blue:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->collabo_mode_share:I

    invoke-static {p1, p2, v2, v3}, Lcom/metamoji/ui/HoverCm;->makeImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 118
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->button_normal_blue_on:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->collabo_mode_share_p:I

    invoke-static {p1, p2, v3, v4}, Lcom/metamoji/ui/HoverCm;->makeImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 119
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->button_normal_blue:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->collabo_mode_share_offline:I

    invoke-static {p1, p2, v4, v5}, Lcom/metamoji/ui/HoverCm;->makeImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 120
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->button_normal_blue_on:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->collabo_mode_share_offline:I

    invoke-static {p1, p2, v5, v6}, Lcom/metamoji/ui/HoverCm;->makeImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 121
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->button_normal:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->collabo_mode_share:I

    invoke-static {p1, p2, v6, v7}, Lcom/metamoji/ui/HoverCm;->makeImage(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v5, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 123
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const p2, 0x101009e

    const v0, 0x10100a1

    const v6, -0x10100a7

    .line 124
    filled-new-array {p2, v0, v6}, [I

    move-result-object v7

    invoke-virtual {p1, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v1, 0x10100a7

    .line 125
    filled-new-array {p2, v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v0, -0x10100a1

    .line 126
    filled-new-array {p2, v0, v6}, [I

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 127
    filled-new-array {p2, v0, v1}, [I

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p2, -0x101009e

    .line 128
    filled-new-array {p2, v0, v6}, [I

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 325
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 329
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method ExecCommandWithIndex(Lcom/metamoji/nt/NtCommand;I)V
    .locals 2

    .line 319
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 320
    const-string v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public calcMyLayout(Landroid/graphics/Rect;)V
    .locals 5

    .line 188
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->isShowEditorBars()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-boolean v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_landscape:Z

    .line 197
    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v3, 0x58

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    float-to-int v0, v0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 202
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 203
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    .line 205
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 206
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 207
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 208
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 287
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->setVisibility(I)V

    return-void
.end method

.method init()V
    .locals 5

    .line 74
    iget-boolean v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_landscape:Z

    if-eqz v0, :cond_0

    .line 75
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_pallet_land_bg:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 77
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_pallet_bg:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->setBackgroundResource(I)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    const/4 v4, 0x1

    .line 83
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 84
    iget-object v3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-static {v2, v0, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->initModeChgBtn(Landroid/view/View;II)V

    .line 87
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->addView(Landroid/view/View;)V

    .line 89
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    .line 90
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 95
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->collabo_mode_private:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->addView(Landroid/view/View;)V

    .line 98
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    .line 99
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    const/4 v0, 0x2

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->control_button_normal:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_speaker:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->addView(Landroid/view/View;)V

    .line 107
    iget-boolean v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_landscape:Z

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    return-void

    .line 110
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v3, 0xdc

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 294
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 303
    iput-boolean p1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_chatAlert:Z

    .line 304
    invoke-virtual {p0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->updateStatus()V

    .line 305
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 307
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p1

    .line 308
    instance-of v0, p1, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    if-eqz v0, :cond_1

    .line 309
    check-cast p1, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->openDialog()V

    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    sget-object p1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboModeChange(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    return-void

    .line 296
    :cond_3
    sget-object p1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboModeChange(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 135
    iget-boolean p1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_landscape:Z

    .line 152
    iget-object p2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 p3, 0x48

    const/16 p4, 0x8

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p1

    float-to-int p1, p1

    .line 137
    iget-object p2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 p3, 0x14

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p2

    float-to-int p2, p2

    .line 139
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {p5, p3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p3

    float-to-int p3, p3

    .line 140
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, p4, :cond_0

    .line 141
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    add-int v0, p2, p1

    add-int v1, p3, p1

    invoke-virtual {p5, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 143
    :cond_0
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p5

    if-eq p5, p4, :cond_1

    .line 144
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    add-int v0, p2, p1

    add-int v1, p3, p1

    invoke-virtual {p5, p2, p3, v0, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 146
    :cond_1
    iget-object p3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p3

    if-eq p3, p4, :cond_5

    .line 147
    iget-object p3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 p4, 0x24

    invoke-virtual {p3, p4}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p3

    float-to-int p3, p3

    add-int/2addr p3, p1

    .line 148
    iget-object p4, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    add-int p5, p2, p1

    add-int/2addr p1, p3

    invoke-virtual {p4, p2, p3, p5, p1}, Landroid/widget/ImageButton;->layout(IIII)V

    return-void

    .line 152
    :cond_2
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p1

    float-to-int p1, p1

    .line 153
    iget-object p2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 p3, 0xe

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p2

    float-to-int p2, p2

    .line 154
    iget-object p3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 p5, 0x18

    invoke-virtual {p3, p5}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p3

    float-to-int p3, p3

    .line 156
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, p4, :cond_3

    .line 157
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    add-int v0, p3, p1

    add-int v1, p1, p2

    invoke-virtual {p5, p3, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 159
    :cond_3
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p5

    if-eq p5, p4, :cond_4

    .line 160
    iget-object p5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    add-int v0, p3, p1

    add-int v1, p1, p2

    invoke-virtual {p5, p3, p2, v0, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 162
    :cond_4
    iget-object p3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p3

    if-eq p3, p4, :cond_5

    .line 163
    iget-object p3, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 p4, 0x34

    invoke-virtual {p3, p4}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result p3

    float-to-int p3, p3

    add-int/2addr p3, p1

    .line 164
    iget-object p4, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    add-int p5, p3, p1

    add-int/2addr p1, p2

    invoke-virtual {p4, p3, p2, p5, p1}, Landroid/widget/ImageButton;->layout(IIII)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 171
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 174
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiSharePalletViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 175
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setLayout(II)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_pallet:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->setVisibility(I)V

    return-void
.end method

.method public update(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V
    .locals 4

    .line 219
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    .line 239
    iget-object v1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_privateModeBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 220
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 223
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object p1

    .line 227
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq p1, v1, :cond_1

    .line 229
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->CONNECTING:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne p1, v1, :cond_0

    move p1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v3

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 237
    iget-object p1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 239
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_shareModeBtn:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/UiSharePalletViewGroup;->updateStatus()V

    return-void
.end method

.method public updateInfo(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;Z)V
    .locals 0

    .line 214
    iput-boolean p2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_chatAlert:Z

    .line 215
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiSharePalletViewGroup;->update(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    return-void
.end method

.method public updateStatus()V
    .locals 6

    .line 248
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    .line 250
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v2, v3, :cond_3

    .line 251
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 255
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_presenter:I

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 258
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_clerk_pallet:I

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 261
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_speaker_pallet:I

    goto :goto_0

    .line 264
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_visitor_pallet:I

    goto :goto_0

    .line 268
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_offline:I

    .line 270
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    const/16 v3, 0x48

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->conv(I)F

    move-result v2

    float-to-int v2, v2

    .line 271
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 272
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->share_pallet_presenter:I

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v4

    .line 273
    :goto_1
    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    iget-boolean v5, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_chatAlert:Z

    if-eqz v5, :cond_5

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->share_pallet_chat_alert:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 272
    :cond_5
    invoke-static {v1, v0, v4, v2}, Lcom/metamoji/ui/HoverCm;->margBitmap2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/metamoji/ui/UiSharePalletViewGroup;->_openChatBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
