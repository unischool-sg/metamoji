.class public Lcom/metamoji/ui/dialog/ProductTitleView;
.super Ljava/lang/Object;
.source "ProductTitleView.java"


# static fields
.field static final mazec_title_string_id:I


# instance fields
.field m_button_install:Lcom/metamoji/ui/common/UiButton;

.field m_button_purchase:Lcom/metamoji/ui/common/UiButton;

.field m_button_to_googleplay:Lcom/metamoji/ui/common/UiButton;

.field m_cart:Landroid/widget/ImageView;

.field m_layout:Landroid/widget/FrameLayout;

.field m_price:Landroid/widget/TextView;

.field m_productId:Ljava/lang/String;

.field m_subtitle:Landroid/widget/TextView;

.field m_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/metamoji/noteanytime/R$string;->InAppPurchase_Mazec2:I

    sput v0, Lcom/metamoji/ui/dialog/ProductTitleView;->mazec_title_string_id:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_price:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    .line 18
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_to_googleplay:Lcom/metamoji/ui/common/UiButton;

    .line 19
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_purchase:Lcom/metamoji/ui/common/UiButton;

    .line 20
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_install:Lcom/metamoji/ui/common/UiButton;

    .line 21
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_cart:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_layout:Landroid/widget/FrameLayout;

    .line 23
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 26
    sget v0, Lcom/metamoji/noteanytime/R$id;->title_comment:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/metamoji/noteanytime/R$id;->subtitle_comment:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/metamoji/noteanytime/R$id;->text_price:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_price:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/metamoji/noteanytime/R$id;->icon_pink_cart:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_cart:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_to_googleplay:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_to_googleplay:Lcom/metamoji/ui/common/UiButton;

    .line 31
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_purchase:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_purchase:Lcom/metamoji/ui/common/UiButton;

    .line 32
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_install:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_install:Lcom/metamoji/ui/common/UiButton;

    .line 33
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_layout:Landroid/widget/FrameLayout;

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ProductTitleView;->init()V

    return-void
.end method


# virtual methods
.method public getButtonInstall()Lcom/metamoji/ui/common/UiButton;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_install:Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method public getButtonPurchase()Lcom/metamoji/ui/common/UiButton;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_purchase:Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method public getButtonToGooglePlay()Lcom/metamoji/ui/common/UiButton;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_to_googleplay:Lcom/metamoji/ui/common/UiButton;

    return-object v0
.end method

.method public getCartIcon()Landroid/widget/ImageView;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_cart:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPriceView()Landroid/widget/TextView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_price:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_productId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->layout_mazec:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_0

    .line 65
    sget-object v0, Lcom/metamoji/lb/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_JA:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    sget v1, Lcom/metamoji/ui/dialog/ProductTitleView;->mazec_title_string_id:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_to_googleplay:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_purchase:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->layout_mazecaddon:I

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    sget v1, Lcom/metamoji/ui/dialog/ProductTitleView;->mazec_title_string_id:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_to_googleplay:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_purchase:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_cart:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->layout_goldservice:I

    if-ne v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    sget v1, Lcom/metamoji/noteanytime/R$string;->InAppPurchase_GoldService:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_to_googleplay:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_button_purchase:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ProductTitleView;->m_cart:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method
