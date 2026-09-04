.class Lcom/metamoji/ui/dialog/SystemOption$11;
.super Ljava/lang/Object;
.source "SystemOption.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 376
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$11;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$11;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fgetmGroupCommandButtons(Lcom/metamoji/ui/dialog/SystemOption;)Lcom/metamoji/ui/common/UiRadioGroup;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/SystemOption;->-$$Nest$fputmCommandButtons(Lcom/metamoji/ui/dialog/SystemOption;I)V

    return-void
.end method
