.class public Lcom/metamoji/ui/common/UiEditText;
.super Landroid/widget/EditText;
.source "UiEditText.java"


# instance fields
.field private mCrossButton:Landroid/graphics/drawable/Drawable;

.field private mOffset:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOffset(Lcom/metamoji/ui/common/UiEditText;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/common/UiEditText;->mOffset:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/metamoji/ui/common/UiEditText;->mCrossButton:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/metamoji/ui/common/UiEditText;->mOffset:I

    .line 25
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/metamoji/ui/common/UiEditText;->mCrossButton:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/metamoji/ui/common/UiEditText;->mOffset:I

    .line 37
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/metamoji/ui/common/UiEditText;->mCrossButton:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/metamoji/ui/common/UiEditText;->mOffset:I

    .line 31
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->init()V

    return-void
.end method


# virtual methods
.method handleClearButton()V
    .locals 6

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/metamoji/ui/common/UiEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/metamoji/ui/common/UiEditText;->mCrossButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/metamoji/ui/common/UiEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/metamoji/ui/common/UiEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method init()V
    .locals 5

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getCurrentTextColor()I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getTextSize()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    .line 44
    new-instance v2, Lcom/metamoji/ui/common/UiTextDrawable;

    const-string/jumbo v3, "\u2715"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/metamoji/ui/common/UiTextDrawable;-><init>(Ljava/lang/String;IFZ)V

    .line 45
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiTextDrawable;->getTextWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiEditText;->mOffset:I

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->batsu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/common/UiEditText;->mCrossButton:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 53
    iget v2, p0, Lcom/metamoji/ui/common/UiEditText;->mOffset:I

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->getImeOptions()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x6

    .line 56
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiEditText;->setImeOptions(I)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->handleClearButton()V

    .line 63
    new-instance v0, Lcom/metamoji/ui/common/UiEditText$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiEditText$1;-><init>(Lcom/metamoji/ui/common/UiEditText;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    new-instance v0, Lcom/metamoji/ui/common/UiEditText$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiEditText$2;-><init>(Lcom/metamoji/ui/common/UiEditText;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiEditText;->handleClearButton()V

    return-void
.end method
