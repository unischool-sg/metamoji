.class Lcom/metamoji/ui/DetailWindow$9$1;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/DetailWindow$9;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/DetailWindowSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow$9;Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
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

    .line 254
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$9$1;->this$1:Lcom/metamoji/ui/DetailWindow$9;

    iput-object p2, p0, Lcom/metamoji/ui/DetailWindow$9$1;->val$dlg:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 258
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$9$1;->this$1:Lcom/metamoji/ui/DetailWindow$9;

    iget-object p1, p1, Lcom/metamoji/ui/DetailWindow$9;->this$0:Lcom/metamoji/ui/DetailWindow;

    iget-object p2, p0, Lcom/metamoji/ui/DetailWindow$9$1;->val$dlg:Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-static {p1, p2}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mgetSettingsFromDialog(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    .line 259
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$9$1;->this$1:Lcom/metamoji/ui/DetailWindow$9;

    iget-object p1, p1, Lcom/metamoji/ui/DetailWindow$9;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->saveSettingsOnSystem()V

    :cond_0
    return-void
.end method
