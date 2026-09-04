.class Lcom/metamoji/ui/dialog/HeaderFooter$2;
.super Ljava/lang/Object;
.source "HeaderFooter.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/HeaderFooter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/HeaderFooter;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/HeaderFooter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/metamoji/ui/dialog/HeaderFooter$2;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/4 p1, 0x0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$2;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fget_buttonid(Lcom/metamoji/ui/dialog/HeaderFooter;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$2;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fget_buttonid(Lcom/metamoji/ui/dialog/HeaderFooter;)[I

    move-result-object v0

    aget v0, v0, p1

    if-ne p2, v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$2;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fget_selectIndex(Lcom/metamoji/ui/dialog/HeaderFooter;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    if-eq p1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$2;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/HeaderFooter;->_custumBtn:Lcom/metamoji/ui/common/UiRadioButton;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$2;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/HeaderFooter;->_custumBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter$2;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fput_selectIndex(Lcom/metamoji/ui/dialog/HeaderFooter;I)V

    .line 109
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/metamoji/ui/dialog/HeaderFooter$2;->this$0:Lcom/metamoji/ui/dialog/HeaderFooter;

    if-lez p1, :cond_1

    .line 111
    invoke-static {v2}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fget_styleid(Lcom/metamoji/ui/dialog/HeaderFooter;)[I

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fput_text(Lcom/metamoji/ui/dialog/HeaderFooter;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_1
    invoke-static {v2, v1}, Lcom/metamoji/ui/dialog/HeaderFooter;->-$$Nest$fput_text(Lcom/metamoji/ui/dialog/HeaderFooter;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
