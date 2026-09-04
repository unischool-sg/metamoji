.class Lcom/metamoji/ui/common/UiButton$2;
.super Ljava/lang/Object;
.source "UiButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiButton;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIIIIIZZZ)V
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

    .line 543
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 546
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmType(Lcom/metamoji/ui/common/UiButton;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmUnknown(Lcom/metamoji/ui/common/UiButton;)Z

    move-result p1

    .line 554
    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 549
    invoke-static {v0}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmButtonBase(Lcom/metamoji/ui/common/UiButton;)Landroid/widget/LinearLayout;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_withcheckbox:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 550
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fputmUnknown(Lcom/metamoji/ui/common/UiButton;Z)V

    .line 551
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmButtonBase(Lcom/metamoji/ui/common/UiButton;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-static {v0}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmButtonBase(Lcom/metamoji/ui/common/UiButton;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmButtonBase(Lcom/metamoji/ui/common/UiButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 561
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 562
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmListener(Lcom/metamoji/ui/common/UiButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton$2;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method
