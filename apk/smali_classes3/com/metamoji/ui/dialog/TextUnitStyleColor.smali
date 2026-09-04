.class public Lcom/metamoji/ui/dialog/TextUnitStyleColor;
.super Landroid/widget/LinearLayout;
.source "TextUnitStyleColor.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TextUnitStyleColor$Listener;
    }
.end annotation


# instance fields
.field bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field private listener:Lcom/metamoji/ui/dialog/TextUnitStyleColor$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 32
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->setOrientation(I)V

    .line 33
    sget p2, Lcom/metamoji/noteanytime/R$layout;->control_textunitstyle_color:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget p1, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 40
    new-instance p2, Lcom/metamoji/ui/common/UiRadioContoller;

    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 41
    sget p2, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    .line 42
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    .line 43
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 41
    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setUIParts(Landroid/view/View;Landroid/view/View;Lcom/metamoji/ui/common/UiRadioContoller;)V

    .line 45
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    return-void
.end method

.method private textColorChanged(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->listener:Lcom/metamoji/ui/dialog/TextUnitStyleColor$Listener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleColor$Listener;->textColorChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p4}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->textColorChanged(I)V

    return-void
.end method

.method public onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 56
    invoke-direct {p0, p4}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->textColorChanged(I)V

    return-void
.end method

.method public setListener(Lcom/metamoji/ui/dialog/TextUnitStyleColor$Listener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->listener:Lcom/metamoji/ui/dialog/TextUnitStyleColor$Listener;

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 60
    sget v0, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 61
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(I)Z

    .line 67
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 73
    sget p1, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    return-void

    .line 69
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    return-void
.end method
