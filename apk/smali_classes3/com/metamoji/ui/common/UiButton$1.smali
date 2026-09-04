.class Lcom/metamoji/ui/common/UiButton$1;
.super Ljava/lang/Object;
.source "UiButton.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiButton;-><init>(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 95
    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 97
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :cond_0
    move v9, v2

    if-nez v1, :cond_1

    const/4 v1, -0x2

    :cond_1
    move v10, v1

    .line 109
    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    .line 110
    invoke-virtual {v3}, Lcom/metamoji/ui/common/UiButton;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmMainTitle(Lcom/metamoji/ui/common/UiButton;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmSubTitle(Lcom/metamoji/ui/common/UiButton;)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmMainTitleWeight(Lcom/metamoji/ui/common/UiButton;)I

    move-result v7

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmSubTitleWeight(Lcom/metamoji/ui/common/UiButton;)I

    move-result v8

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmMinWidth(Lcom/metamoji/ui/common/UiButton;)I

    move-result v11

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmButtonPaddingRight(Lcom/metamoji/ui/common/UiButton;)I

    move-result v12

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmMainTitleGravity(Lcom/metamoji/ui/common/UiButton;)I

    move-result v13

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmTitlePaddingLeft(Lcom/metamoji/ui/common/UiButton;)I

    move-result v14

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmTitlePaddingRight(Lcom/metamoji/ui/common/UiButton;)I

    move-result v15

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmForceResizable(Lcom/metamoji/ui/common/UiButton;)Z

    move-result v16

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    .line 123
    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiButton;->isEnabled()Z

    move-result v17

    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$1;->this$0:Lcom/metamoji/ui/common/UiButton;

    .line 124
    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiButton;->isSelected()Z

    move-result v18

    .line 109
    invoke-static/range {v3 .. v18}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$minit(Lcom/metamoji/ui/common/UiButton;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIIIIIZZZ)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
