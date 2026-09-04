.class Lcom/metamoji/un/text/UnTextUnit$27;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoTextParticalBackgroundColorTap(Ljava/lang/Integer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/BackgroundColor;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/BackgroundColor;)V
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

    .line 5734
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$27;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$27;->val$dlg:Lcom/metamoji/ui/dialog/BackgroundColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    .line 5737
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$27;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5738
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$27;->val$dlg:Lcom/metamoji/ui/dialog/BackgroundColor;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->getColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 5739
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$27;->val$dlg:Lcom/metamoji/ui/dialog/BackgroundColor;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/BackgroundColor;->isNoneChecked()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_2

    .line 5741
    :cond_0
    sget-object p2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    .line 5743
    new-instance p3, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {p3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 5744
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$27;->val$dlg:Lcom/metamoji/ui/dialog/BackgroundColor;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/BackgroundColor;->isNoneChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5745
    new-instance v0, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {p3, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5747
    invoke-virtual {p3, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUseBackgroundColor(Z)V

    .line 5749
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$27;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V

    .line 5752
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$27;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mappearContextMenu(Lcom/metamoji/un/text/UnTextUnit;)V

    :cond_3
    return-void
.end method
