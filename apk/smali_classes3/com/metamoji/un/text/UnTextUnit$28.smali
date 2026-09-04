.class Lcom/metamoji/un/text/UnTextUnit$28;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/TextUnitStyle;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/ui/dialog/TextUnitStyle;)V
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

    .line 5933
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$28;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$28;->val$dlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 5937
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$28;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5938
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$28;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$28;->val$dlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mhandleChangeTextStyleAttributes(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/model/UnitStyles;)V

    :cond_0
    return-void
.end method
