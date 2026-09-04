.class Lcom/metamoji/ui/dialog/TextUnitStyleBorder$1;
.super Ljava/lang/Object;
.source "TextUnitStyleBorder.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->onRuledLineStyleClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextUnitStyleBorder;Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;)V
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

    .line 128
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$1;->this$0:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$1;->val$dlg:Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 135
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$1;->this$0:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$1;->val$dlg:Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->getRuledLineStyle()Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V

    :cond_0
    return-void
.end method
