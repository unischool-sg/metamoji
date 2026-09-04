.class Lcom/metamoji/ui/common/UiRadioButton$2;
.super Ljava/lang/Object;
.source "UiRadioButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiRadioButton;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIZZZ)V
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

    .line 594
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$2;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 597
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$2;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmType(Lcom/metamoji/ui/common/UiRadioButton;)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 607
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$2;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiRadioButton;)Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 608
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$2;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiRadioButton;)Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton$2;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioButton;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;->onClick(I)V

    .line 613
    :cond_0
    :pswitch_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$2;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_1

    .line 614
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$2;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p1, :cond_1

    .line 617
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton$2;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioButton;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
