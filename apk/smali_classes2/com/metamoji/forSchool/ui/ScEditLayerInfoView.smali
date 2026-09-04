.class public Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ScEditLayerInfoView.java"


# static fields
.field private static final LABEL_FONT_SIZE:I = 0xe

.field private static final MARGIN_X:I = 0x5

.field private static final MARGIN_Y:I = 0x5

.field private static final PANEL_HEIGHT:I = 0x20

.field public static final PANEL_MARGIN_LEFT:I = 0xa

.field public static final PANEL_MARGIN_TOP:I = 0xa

.field private static final PANEL_WIDTH:I = 0x8c


# instance fields
.field private _rightMargin:I

.field private _topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 43
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->_topMargin:I

    const/4 p1, -0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setTextColor(I)V

    const/4 p1, 0x2

    const/4 v0, 0x6

    const/16 v1, 0xe

    const/4 v2, 0x1

    .line 47
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    const/16 p1, 0x11

    .line 49
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setGravity(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 50
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setPadding(IIII)V

    .line 52
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setLayout()V

    const/4 p1, 0x4

    .line 54
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setVisibility(I)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setClickable(Z)V

    return-void
.end method

.method private setLayout()V
    .locals 5

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x430c0000    # 140.0f

    .line 60
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42000000    # 32.0f

    .line 61
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    const/4 v2, -0x1

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 65
    iget v1, p0, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->_rightMargin:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0xa

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    iget v1, p0, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->_topMargin:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 73
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getRightMargin()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->_rightMargin:I

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->_topMargin:I

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 77
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setVisibility(I)V

    return-void
.end method

.method public setRightMargin(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->_rightMargin:I

    .line 118
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setLayout()V

    return-void
.end method

.method public setTopMargin(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->_topMargin:I

    .line 107
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setLayout()V

    return-void
.end method

.method public show(Ljava/lang/String;I)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setVisibility(I)V

    return-void
.end method
