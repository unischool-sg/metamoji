.class public Lcom/metamoji/ui/DetailSelectorButton;
.super Landroid/widget/FrameLayout;
.source "DetailSelectorButton.java"


# static fields
.field private static final BAND_ERASER:[I

.field private static final BUTTON_SIZE:F = 40.0f

.field public static ERASER_BUTTONS:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_thin:I

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_nor:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_wide:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->hover_icon_eraser_clear:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/DetailSelectorButton;->BAND_ERASER:[I

    .line 76
    array-length v0, v0

    sput v0, Lcom/metamoji/ui/DetailSelectorButton;->ERASER_BUTTONS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailSelectorButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailSelectorButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailSelectorButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailSelectorButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$layout;->dwindow_selector_button:I

    invoke-static {p1, v0, p0}, Lcom/metamoji/ui/DetailSelectorButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public setEraserImage(I)V
    .locals 2

    .line 79
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_select_preview:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelectorButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    sget-object v1, Lcom/metamoji/ui/DetailSelectorButton;->BAND_ERASER:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 85
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_select_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelectorButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPenImage(I)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getMasterPenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailSelectorButton;->setPenImage(Lcom/metamoji/nt/share/NtPenStyle;)V

    return-void
.end method

.method public setPenImage(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_select_preview:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelectorButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 62
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    .line 63
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 64
    invoke-static {p1}, Lcom/metamoji/ui/HoverSelector;->getPenPreviewWeight(Lcom/metamoji/nt/share/NtPenStyle;)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v2, v4}, Lcom/metamoji/ui/HoverSelector;->CreatePenPreview(Lcom/metamoji/nt/share/NtPenStyle;FFFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_select_background:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailSelectorButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundId(ILjava/util/List;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method
