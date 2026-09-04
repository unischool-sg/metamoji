.class public Lcom/metamoji/ui/dialog/LaserPointerThickness;
.super Landroid/widget/LinearLayout;
.source "LaserPointerThickness.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/LaserPointerThickness$Listener;
    }
.end annotation


# instance fields
.field private listener:Lcom/metamoji/ui/dialog/LaserPointerThickness$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->setOrientation(I)V

    .line 42
    sget v1, Lcom/metamoji/noteanytime/R$layout;->control_laserpointer_thickness:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget p1, Lcom/metamoji/noteanytime/R$id;->textSize:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 v1, 0x5

    .line 45
    new-array v2, v1, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v5, 0xfa

    const/16 v6, 0xa

    invoke-direct {v3, v5, v6}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v3, v2, v0

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v3, 0x1f4

    const/16 v5, 0x14

    invoke-direct {v0, v3, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v3, 0x2

    aput-object v0, v2, v3

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v3, 0x2ee

    const/16 v5, 0x32

    invoke-direct {v0, v3, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v3, 0x3

    aput-object v0, v2, v3

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v3, 0x3e8

    const/16 v5, 0x64

    invoke-direct {v0, v3, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 53
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 55
    sget p1, Lcom/metamoji/noteanytime/R$id;->preSize1:I

    sget v0, Lcom/metamoji/noteanytime/R$id;->preSize2:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->preSize3:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->preSize4:I

    sget v5, Lcom/metamoji/noteanytime/R$id;->preSize5:I

    filled-new-array {p1, v0, v2, v3, v5}, [I

    move-result-object p1

    :goto_0
    if-ge v4, v1, :cond_0

    .line 56
    aget v0, p1, v4

    .line 57
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 58
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private presetSizeClicked(I)V
    .locals 0

    int-to-float p1, p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->setThickness(F)V

    return-void
.end method

.method private thicknessChanged(F)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/dialog/LaserPointerThickness;->listener:Lcom/metamoji/ui/dialog/LaserPointerThickness$Listener;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness$Listener;->thicknessChanged(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize1:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x3

    .line 70
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->presetSizeClicked(I)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize2:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x5

    .line 72
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->presetSizeClicked(I)V

    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize3:I

    if-ne v0, v1, :cond_2

    const/4 p1, 0x7

    .line 74
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->presetSizeClicked(I)V

    return-void

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize4:I

    if-ne v0, v1, :cond_3

    const/16 p1, 0xa

    .line 76
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->presetSizeClicked(I)V

    return-void

    .line 77
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->preSize5:I

    if-ne p1, v0, :cond_4

    const/16 p1, 0x14

    .line 78
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->presetSizeClicked(I)V

    :cond_4
    return-void
.end method

.method public onValueChanged(IIZ)V
    .locals 0

    int-to-float p1, p2

    .line 64
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->thicknessChanged(F)V

    return-void
.end method

.method public setListener(Lcom/metamoji/ui/dialog/LaserPointerThickness$Listener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/ui/dialog/LaserPointerThickness;->listener:Lcom/metamoji/ui/dialog/LaserPointerThickness$Listener;

    return-void
.end method

.method public setThickness(F)V
    .locals 1

    .line 83
    sget v0, Lcom/metamoji/noteanytime/R$id;->textSize:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/LaserPointerThickness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiPlainSlider;

    .line 85
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue2(I)V

    return-void
.end method
