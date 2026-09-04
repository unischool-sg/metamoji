.class Lcom/metamoji/ui/dialog/TextSettings$1;
.super Ljava/lang/Object;
.source "TextSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$1;->this$0:Lcom/metamoji/ui/dialog/TextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 66
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$1;->this$0:Lcom/metamoji/ui/dialog/TextSettings;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "SystemOption_TextStyleInit"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    const-string v1, "MMJNtTextSettings"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    instance-of v1, p1, Lcom/metamoji/nt/NtTextUnitSettings;

    if-eqz v1, :cond_1

    .line 74
    check-cast p1, Lcom/metamoji/nt/NtTextUnitSettings;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    return-void

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    .line 82
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 83
    invoke-static {v1, v2}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v1

    .line 85
    new-instance v2, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v2}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 88
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 89
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_4
    const/high16 v3, -0x1000000

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 90
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitLineHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 91
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 93
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createBorderStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 94
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v1, :cond_5

    .line 95
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitVerticalWriting()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 98
    :cond_5
    new-instance v1, Lcom/metamoji/ui/dialog/TextUnitStyle;

    sget v3, Lcom/metamoji/noteanytime/R$string;->SystemOption_TextStyle_Settings:I

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/dialog/TextUnitStyle;-><init>(Lcom/metamoji/un/text/model/UnitStyles;I)V

    .line 99
    new-instance v2, Lcom/metamoji/ui/dialog/TextSettings$1$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/metamoji/ui/dialog/TextSettings$1$1;-><init>(Lcom/metamoji/ui/dialog/TextSettings$1;Lcom/metamoji/ui/dialog/TextUnitStyle;Lcom/metamoji/nt/NtTextUnitSettings;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 135
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextSettings$1;->this$0:Lcom/metamoji/ui/dialog/TextSettings;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
