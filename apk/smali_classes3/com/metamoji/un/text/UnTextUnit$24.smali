.class Lcom/metamoji/un/text/UnTextUnit$24;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->handleCharDecoFontTap(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/FontList;

.field final synthetic val$renderingDefaultFontInfo:Lcom/metamoji/un/text/FontInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/FontList;Lcom/metamoji/un/text/FontInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5466
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$24;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$24;->val$dlg:Lcom/metamoji/ui/dialog/FontList;

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$24;->val$renderingDefaultFontInfo:Lcom/metamoji/un/text/FontInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 5469
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$24;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5470
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$24;->val$dlg:Lcom/metamoji/ui/dialog/FontList;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/FontList;->getSelectedFontName()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 5472
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$24;->val$renderingDefaultFontInfo:Lcom/metamoji/un/text/FontInfo;

    iget-object p2, p2, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 5473
    iget-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$24;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontName(Ljava/lang/String;Z)V

    .line 5474
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$24;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar()V

    .line 5476
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$24;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$menableSendTextUnitEdittingData(Lcom/metamoji/un/text/UnTextUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5478
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$24;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitEdittingData()V

    .line 5482
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$24;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mappearContextMenu(Lcom/metamoji/un/text/UnTextUnit;)V

    :cond_1
    return-void
.end method
