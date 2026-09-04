.class Lcom/metamoji/ui/common/UiImageRadioButton$1;
.super Ljava/lang/Object;
.source "UiImageRadioButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiImageRadioButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiImageRadioButton;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiImageRadioButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiImageRadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiImageRadioButton;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiImageRadioButton;->-$$Nest$fgetmSelectChanged(Lcom/metamoji/ui/common/UiImageRadioButton;)Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiImageRadioButton;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiImageRadioButton;->-$$Nest$fgetmSelectChanged(Lcom/metamoji/ui/common/UiImageRadioButton;)Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiImageRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiImageRadioButton;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiImageRadioButton;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;->onSelected(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiImageRadioButton;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiImageRadioButton;->-$$Nest$fgetmOuterListener(Lcom/metamoji/ui/common/UiImageRadioButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiImageRadioButton;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiImageRadioButton;->-$$Nest$fgetmOuterListener(Lcom/metamoji/ui/common/UiImageRadioButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
