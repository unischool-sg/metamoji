.class Lcom/metamoji/ui/dialog/TextUnitStyleText$1;
.super Ljava/lang/Object;
.source "TextUnitStyleText.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TextUnitStyleText;->fontClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextUnitStyleText;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/FontList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TextUnitStyleText;Lcom/metamoji/ui/dialog/FontList;)V
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

    .line 123
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleText$1;->this$0:Lcom/metamoji/ui/dialog/TextUnitStyleText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyleText$1;->val$dlg:Lcom/metamoji/ui/dialog/FontList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 127
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleText$1;->this$0:Lcom/metamoji/ui/dialog/TextUnitStyleText;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/TextUnitStyleText;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyleText$1;->val$dlg:Lcom/metamoji/ui/dialog/FontList;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/FontList;->getSelectedFontName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setFontName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
