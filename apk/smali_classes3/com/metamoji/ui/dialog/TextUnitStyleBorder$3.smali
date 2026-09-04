.class Lcom/metamoji/ui/dialog/TextUnitStyleBorder$3;
.super Ljava/lang/Object;
.source "TextUnitStyleBorder.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->onBackgroundColorClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/BackgroundColor;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextUnitStyleBorder;Lcom/metamoji/ui/dialog/BackgroundColor;)V
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

    .line 164
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$3;->this$0:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$3;->val$dlg:Lcom/metamoji/ui/dialog/BackgroundColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_1

    .line 171
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$3;->val$dlg:Lcom/metamoji/ui/dialog/BackgroundColor;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->getColor()Ljava/lang/Integer;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$3;->this$0:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method
