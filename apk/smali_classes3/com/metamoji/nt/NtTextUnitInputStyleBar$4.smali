.class Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;
.super Ljava/lang/Object;
.source "NtTextUnitInputStyleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextUnitInputStyleBar;->checkControlEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

.field final synthetic val$enabled:Z

.field final synthetic val$enabledLineSeparatorCommand:Z

.field final synthetic val$strokeOnly:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1220
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    iput-boolean p3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$strokeOnly:Z

    iput-boolean p4, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabledLineSeparatorCommand:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1224
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontNameBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/ui/ImageButtonWithText;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ImageButtonWithText;->setEnabled(Z)V

    .line 1227
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontSizeMinusBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1228
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontSizeBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/ui/ImageButtonWithText;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ImageButtonWithText;->setEnabled(Z)V

    .line 1229
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_fontSizePlusBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1232
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textColorBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1235
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_boldBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$strokeOnly:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1236
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_italicBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$strokeOnly:Z

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1239
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_underlineBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1240
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_strikeoutBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1243
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textAlignBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1246
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_listBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1249
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_insertLineSeparatorBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;->val$enabledLineSeparatorCommand:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
