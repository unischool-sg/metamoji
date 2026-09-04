.class Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$7;
.super Ljava/lang/Object;
.source "NsCollaboSettingsDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 306
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_action:Lcom/metamoji/ns/INsCollaboAction;

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_action:Lcom/metamoji/ns/INsCollaboAction;

    xor-int/lit8 p2, p3, 0x1

    invoke-interface {p1, p2}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_0
    return-void
.end method
