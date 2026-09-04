.class Lcom/metamoji/un/text/UnTextUnit$26;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextColorTap(Ljava/lang/Integer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/TextColor;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/TextColor;)V
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

    .line 5579
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$26;->val$dlg:Lcom/metamoji/ui/dialog/TextColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 6

    .line 5582
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 5583
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->val$dlg:Lcom/metamoji/ui/dialog/TextColor;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextColor;->isToDefault()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->val$dlg:Lcom/metamoji/ui/dialog/TextColor;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextColor;->getInkColors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5584
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$26;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->val$dlg:Lcom/metamoji/ui/dialog/TextColor;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextColor;->getInkColors()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->val$dlg:Lcom/metamoji/ui/dialog/TextColor;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextColor;->isToDefault()Z

    move-result v2

    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->val$dlg:Lcom/metamoji/ui/dialog/TextColor;

    .line 5585
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextColor;->getInkType()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->val$dlg:Lcom/metamoji/ui/dialog/TextColor;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextColor;->getInkColors()Ljava/util/List;

    move-result-object v4

    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->val$dlg:Lcom/metamoji/ui/dialog/TextColor;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextColor;->getInkId()Ljava/lang/String;

    move-result-object v5

    .line 5584
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrTextColor(IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 5586
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar()V

    .line 5588
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$menableSendTextUnitEdittingData(Lcom/metamoji/un/text/UnTextUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5590
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    .line 5594
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$26;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mappearContextMenu(Lcom/metamoji/un/text/UnTextUnit;)V

    :cond_2
    return-void
.end method
