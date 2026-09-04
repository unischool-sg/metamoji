.class public Lcom/metamoji/ui/common/UiImageRadioButton;
.super Lcom/metamoji/ui/common/UiImageToggleButton;
.source "UiImageRadioButton.java"

# interfaces
.implements Lcom/metamoji/ui/common/IUiRadioItem;


# instance fields
.field private mOuterListener:Landroid/view/View$OnClickListener;

.field private mSelectChanged:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOuterListener(Lcom/metamoji/ui/common/UiImageRadioButton;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiImageRadioButton;->mOuterListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectChanged(Lcom/metamoji/ui/common/UiImageRadioButton;)Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiImageRadioButton;->mSelectChanged:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiImageToggleButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageRadioButton;->mOuterListener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageRadioButton;->mSelectChanged:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiImageRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/common/UiImageToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageRadioButton;->mOuterListener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageRadioButton;->mSelectChanged:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/metamoji/ui/common/UiImageToggleButton;->init()V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiImageRadioButton;->setManualReset(Z)V

    .line 50
    new-instance v0, Lcom/metamoji/ui/common/UiImageRadioButton$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiImageRadioButton$1;-><init>(Lcom/metamoji/ui/common/UiImageRadioButton;)V

    invoke-super {p0, v0}, Lcom/metamoji/ui/common/UiImageToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/metamoji/ui/common/UiImageToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageRadioButton;->mOuterListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSelectChangedListener(Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageRadioButton;->mSelectChanged:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    return-void
.end method
