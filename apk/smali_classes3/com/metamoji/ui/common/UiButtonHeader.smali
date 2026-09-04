.class public Lcom/metamoji/ui/common/UiButtonHeader;
.super Landroid/widget/RelativeLayout;
.source "UiButtonHeader.java"


# instance fields
.field private mButtonTextColor:I

.field private mImageButton:Landroid/widget/ImageButton;

.field private mInf:Landroid/view/LayoutInflater;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiButtonHeader;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mInf:Landroid/view/LayoutInflater;

    .line 20
    iput-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mListener:Landroid/view/View$OnClickListener;

    .line 21
    iput-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mImageButton:Landroid/widget/ImageButton;

    .line 22
    iput-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mButtonTextColor:I

    .line 35
    sget-object v1, Lcom/metamoji/noteanytime/R$styleable;->UiButtonHeader:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 38
    :try_start_0
    sget v1, Lcom/metamoji/noteanytime/R$styleable;->UiButtonHeader_title:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 40
    sget v2, Lcom/metamoji/noteanytime/R$styleable;->UiButtonHeader_imageresource:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mInf:Landroid/view/LayoutInflater;

    .line 47
    sget p1, Lcom/metamoji/noteanytime/R$layout;->control_button_header:I

    .line 48
    iget-object p2, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mInf:Landroid/view/LayoutInflater;

    invoke-virtual {p2, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 49
    sget p2, Lcom/metamoji/noteanytime/R$id;->control_button_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mImageButton:Landroid/widget/ImageButton;

    .line 50
    sget p2, Lcom/metamoji/noteanytime/R$id;->control_button_header_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mTitleView:Landroid/widget/TextView;

    .line 51
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mImageButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/metamoji/ui/common/UiButtonHeader$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/common/UiButtonHeader$1;-><init>(Lcom/metamoji/ui/common/UiButtonHeader;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 42
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    throw p1
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 113
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiButtonHeader;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$color;->button_header_blue:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mButtonTextColor:I

    goto :goto_0

    .line 115
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_inapppurchase:I

    if-ne p1, v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiButtonHeader;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$color;->button_header_inapppurchase:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mButtonTextColor:I

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiButtonHeader;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$color;->button_header_purple:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mButtonTextColor:I

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mButtonTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButtonHeader;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
