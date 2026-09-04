.class Lcom/metamoji/ui/dialog/DocumentSettings2$9;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 615
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Ljava/lang/Boolean;Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 0

    .line 646
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 647
    check-cast p1, Lcom/metamoji/ui/dialog/DocumentSettings2;

    check-cast p2, Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fput_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/un/text/model/UnitStyles;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 618
    const-class p1, Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 625
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_dlgType(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_document(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    new-instance v2, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v2}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    invoke-static {v1, v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fput_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 629
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 630
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 631
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 632
    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 633
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitLineHeight()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 634
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 635
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 637
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 638
    iget-object v3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 639
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createBorderStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 640
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v1, :cond_2

    .line 641
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitVerticalWriting()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 643
    :cond_2
    new-instance v0, Lcom/metamoji/ui/dialog/TextUnitStyle;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Textunit:I

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/TextUnitStyle;-><init>(Lcom/metamoji/un/text/model/UnitStyles;I)V

    .line 644
    new-instance v1, Lcom/metamoji/ui/dialog/NtDialogTask;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/dialog/NtDialogTask;-><init>(Ljava/lang/String;)V

    .line 645
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$9;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings2$9$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/DocumentSettings2$9$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, p1, v0, v2}, Lcom/metamoji/ui/dialog/NtDialogTask;->javaShowDialog(Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
