.class public Lcom/metamoji/mazec/purchase/ProductTitleView;
.super Ljava/lang/Object;
.source "ProductTitleView.java"


# instance fields
.field m_button_purchase:Landroid/widget/TextView;

.field m_cart:Landroid/widget/ImageView;

.field m_layout:Landroid/widget/LinearLayout;

.field m_listener:Landroid/view/View$OnClickListener;

.field m_price:Landroid/widget/TextView;

.field m_productId:Ljava/lang/String;

.field m_subtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_price:Landroid/widget/TextView;

    .line 14
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    .line 15
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_button_purchase:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_cart:Landroid/widget/ImageView;

    .line 17
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    .line 18
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_listener:Landroid/view/View$OnClickListener;

    .line 22
    const-string v0, "id.subtitle_comment"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    .line 23
    const-string v0, "id.text_price"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_price:Landroid/widget/TextView;

    .line 24
    const-string v0, "id.icon_pink_cart"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_cart:Landroid/widget/ImageView;

    .line 25
    const-string v0, "id.button_purchase"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_button_purchase:Landroid/widget/TextView;

    .line 26
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public getButtonPurchase()Landroid/widget/TextView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_button_purchase:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCartIcon()Landroid/widget/ImageView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_cart:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getPriceView()Landroid/widget/TextView;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_price:Landroid/widget/TextView;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public init(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_ja"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 46
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_JA:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_japanese"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_en"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 49
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_EN:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_english"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_fr"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 52
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_FR:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_french"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_de"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 55
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_DE:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_german"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_es"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 58
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ES:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_spanish"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_it"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 61
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_IT:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_italian"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_zh"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 64
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ZH:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_chinese"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_ko"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 67
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_KO:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_korean"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 69
    :cond_7
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_ru"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 70
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_RU:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_russian"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 72
    :cond_8
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_pt"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 73
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PT:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_portuguese"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 75
    :cond_9
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_nl"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 76
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_NL:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_dutch"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 78
    :cond_a
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_pl"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 79
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_PL:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_polish"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 81
    :cond_b
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v1, "id.layout_mazec_all"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 82
    sget-object v0, Lcom/metamoji/mazec/purchase/LbInAppPurchaseConstants;->PRODUCTID_MAZEC_ADDON_ALL:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_productId:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_subtitle:Landroid/widget/TextView;

    const-string/jumbo v1, "string.purchase_all"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/ProductTitleView;->m_button_purchase:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    return-void
.end method
