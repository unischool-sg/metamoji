.class Lcom/metamoji/ui/dialog/DocumentSettings$6;
.super Ljava/lang/Object;
.source "DocumentSettings.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$6;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 266
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$6;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    iget-object p2, p1, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleDlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/DocumentSettings;->-$$Nest$fput_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings;Lcom/metamoji/un/text/model/UnitStyles;)V

    :cond_0
    return-void
.end method
