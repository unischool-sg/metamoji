.class Lcom/metamoji/ui/dialog/TextSettings$1$1;
.super Ljava/lang/Object;
.source "TextSettings.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextSettings$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/TextSettings$1;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

.field final synthetic val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextSettings$1;Lcom/metamoji/ui/dialog/TextUnitStyle;Lcom/metamoji/nt/NtTextUnitSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->this$1:Lcom/metamoji/ui/dialog/TextSettings$1;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$dlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 3

    if-eqz p3, :cond_6

    .line 104
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$dlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object p1

    .line 105
    iget-object p2, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 106
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    iget-object p3, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontFamily(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object p2, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz p2, :cond_1

    .line 109
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    iget-object p3, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontSize(F)V

    .line 111
    :cond_1
    iget-object p2, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 112
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    iget-object p3, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontColor(Ljava/lang/String;)V

    .line 114
    :cond_2
    iget-object p2, p1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    if-eqz p2, :cond_3

    .line 115
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    iget-object p3, p1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitLineHeight(F)V

    .line 117
    :cond_3
    iget-object p2, p1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eqz p2, :cond_4

    .line 118
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    iget-object p3, p1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-static {p3}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitRuledLineStyle(Ljava/lang/String;)V

    .line 120
    :cond_4
    iget-object p2, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    .line 121
    iget-object p2, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 122
    iget-object p3, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBackgroundColorAlpha(F)V

    .line 123
    iget-object p3, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-static {p2}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBackgroundColor(Ljava/lang/String;)V

    .line 125
    :cond_5
    iget-object p2, p1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz p2, :cond_6

    .line 126
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings$1$1;->val$reflectSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    iget-object p1, p1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-static {p1}, Lcom/metamoji/un/text/DataUtil;->createTextUnitBorderStyleString(Lcom/metamoji/un/text/model/UnitBorderStyle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBorderStyle(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
