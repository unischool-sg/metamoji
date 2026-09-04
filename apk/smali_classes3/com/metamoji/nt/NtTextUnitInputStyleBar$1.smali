.class Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;
.super Ljava/lang/Object;
.source "NtTextUnitInputStyleBar.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontName_Tapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/FontList;

.field final synthetic val$renderingDefaultFontInfo:Lcom/metamoji/un/text/FontInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;Lcom/metamoji/ui/dialog/FontList;Lcom/metamoji/un/text/FontInfo;)V
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

    .line 757
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->val$dlg:Lcom/metamoji/ui/dialog/FontList;

    iput-object p3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->val$renderingDefaultFontInfo:Lcom/metamoji/un/text/FontInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 760
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->val$dlg:Lcom/metamoji/ui/dialog/FontList;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/FontList;->getSelectedFontName()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 761
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontName(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 762
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object p2

    sget-object p3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->val$renderingDefaultFontInfo:Lcom/metamoji/un/text/FontInfo;

    iget-object p2, p2, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 765
    iget-object p3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontName(Ljava/lang/String;Z)V

    .line 768
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_unitController(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/un/text/UnTextUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 769
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_unitController(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/un/text/UnTextUnit;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontName(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {p3}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_isFontNameDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontName(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
