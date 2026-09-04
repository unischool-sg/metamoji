.class Lcom/metamoji/ui/common/UiRadioButton$1;
.super Ljava/lang/Object;
.source "UiRadioButton.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiRadioButton;-><init>(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiRadioButton;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiRadioButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 14

    .line 91
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 93
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    move v9, v0

    if-nez p1, :cond_1

    const/4 p1, -0x2

    :cond_1
    move v10, p1

    .line 105
    iget-object v1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    .line 106
    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiRadioButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmMainTitle(Lcom/metamoji/ui/common/UiRadioButton;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmSubTitle(Lcom/metamoji/ui/common/UiRadioButton;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmDummyTitle(Lcom/metamoji/ui/common/UiRadioButton;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmMainTitleWeight(Lcom/metamoji/ui/common/UiRadioButton;)I

    move-result v6

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmSubTitleWeight(Lcom/metamoji/ui/common/UiRadioButton;)I

    move-result v7

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmIcon(Lcom/metamoji/ui/common/UiRadioButton;)I

    move-result v8

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmForceResizable(Lcom/metamoji/ui/common/UiRadioButton;)Z

    move-result v11

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    .line 116
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioButton;->isEnabled()Z

    move-result v12

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$1;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    .line 117
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioButton;->isChecked()Z

    move-result v13

    .line 105
    invoke-static/range {v1 .. v13}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$minit(Lcom/metamoji/ui/common/UiRadioButton;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIZZZ)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
