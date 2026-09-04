.class Lcom/metamoji/ui/common/UiImageToggleButton$1;
.super Ljava/lang/Object;
.source "UiImageToggleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiImageToggleButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiImageToggleButton;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiImageToggleButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageToggleButton$1;->this$0:Lcom/metamoji/ui/common/UiImageToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageToggleButton$1;->this$0:Lcom/metamoji/ui/common/UiImageToggleButton;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiImageToggleButton;->-$$Nest$fgetmManualReset(Lcom/metamoji/ui/common/UiImageToggleButton;)Z

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/metamoji/ui/common/UiImageToggleButton$1;->this$0:Lcom/metamoji/ui/common/UiImageToggleButton;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiImageToggleButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiImageToggleButton;->setSelected(Z)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiImageToggleButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageToggleButton$1;->this$0:Lcom/metamoji/ui/common/UiImageToggleButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiImageToggleButton;->setSelected(Z)V

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageToggleButton$1;->this$0:Lcom/metamoji/ui/common/UiImageToggleButton;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiImageToggleButton;->-$$Nest$fgetmOuterListener(Lcom/metamoji/ui/common/UiImageToggleButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageToggleButton$1;->this$0:Lcom/metamoji/ui/common/UiImageToggleButton;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiImageToggleButton;->-$$Nest$fgetmOuterListener(Lcom/metamoji/ui/common/UiImageToggleButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method
