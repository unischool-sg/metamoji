.class Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4;
.super Ljava/lang/Object;
.source "NsCollaboCommandUseSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    iget-boolean v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->hasPresenterRole:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_canEdit:Ljava/lang/Boolean;

    .line 304
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_canEdit:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    return-void
.end method
