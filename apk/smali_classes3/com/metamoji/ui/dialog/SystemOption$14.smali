.class Lcom/metamoji/ui/dialog/SystemOption$14;
.super Ljava/lang/Object;
.source "SystemOption.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SystemOption;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/SystemOption;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SystemOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$14;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 427
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$14;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fputmPositionMapState(Lcom/metamoji/ui/dialog/SystemOption;Z)V

    .line 428
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$14;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fgetmGroupPositionMap(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiRadioGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$14;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fgetmGroupPositionMap(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiRadioGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setEnabled(Z)V

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$14;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fgetmTextViewPositionMap(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 432
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$14;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fgetmTextViewPositionMap(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiTextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
