.class Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;
.super Ljava/lang/Object;
.source "NtTextUnitInputStyleBar.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontSize_Tapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

.field final synthetic val$defSize:F

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/TextSize;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;Lcom/metamoji/ui/dialog/TextSize;F)V
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

    .line 841
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    iput p3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->val$defSize:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_3

    .line 844
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSize;->isToDefault()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSize;->getTextSize()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    .line 845
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSize;->isToDefault()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSize;->isToDefault()Z

    move-result p1

    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_isFontSizeDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 846
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    iget p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->val$defSize:F

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontSize(FZ)V

    .line 847
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 850
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSize;->getTextSize()F

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->adjustFontSize(F)F

    move-result p1

    .line 851
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontSize(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)F

    move-result p2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    .line 852
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontSize(FZ)V

    .line 853
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_unitController(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/un/text/UnTextUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 859
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_unitController(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/un/text/UnTextUnit;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontSize(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)F

    move-result p2

    iget-object p3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p3}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_isFontSizeDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontSize(FZ)V

    :cond_3
    return-void
.end method
