.class Lcom/metamoji/ui/common/UiRadioButton$3;
.super Ljava/lang/Object;
.source "UiRadioButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 623
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$3;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 626
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$3;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmType(Lcom/metamoji/ui/common/UiRadioButton;)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 633
    :cond_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 634
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 635
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton$3;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->mainTitleMarginLeftWithCheckBox:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioButton$3;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$3;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiRadioButton;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 638
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$3;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiRadioButton;)Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 639
    iget-object p1, p0, Lcom/metamoji/ui/common/UiRadioButton$3;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiRadioButton;->-$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiRadioButton;)Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/common/UiRadioButton$3;->this$0:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiRadioButton;->getId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;->onClick(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
