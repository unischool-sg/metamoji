.class Lcom/metamoji/un/text/UnTextUnit$25;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextSizeTap(Ljava/lang/Float;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/TextSize;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/TextSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5522
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$25;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 5525
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 5526
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSize;->isToDefault()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextSize;->getTextSize()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5527
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$25;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/TextSize;->getTextSize()F

    move-result p2

    invoke-static {p2}, Lcom/metamoji/un/text/UnTextUnit;->adjustFontSize(F)F

    move-result p2

    iget-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$25;->val$dlg:Lcom/metamoji/ui/dialog/TextSize;

    invoke-virtual {p3}, Lcom/metamoji/ui/dialog/TextSize;->isToDefault()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontSize(FZ)V

    .line 5528
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar()V

    .line 5530
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$menableSendTextUnitEdittingData(Lcom/metamoji/un/text/UnTextUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5532
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    .line 5536
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$25;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mappearContextMenu(Lcom/metamoji/un/text/UnTextUnit;)V

    :cond_2
    return-void
.end method
