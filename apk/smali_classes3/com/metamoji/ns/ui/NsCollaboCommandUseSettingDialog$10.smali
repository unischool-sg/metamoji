.class Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$10;
.super Ljava/lang/Object;
.source "NsCollaboCommandUseSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$IChangePasswordAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->handlePasswordSettingButtonTap()V
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

    .line 617
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeSecureRoom:Z

    .line 621
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoom:Z

    .line 622
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iput-object p1, v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoomPassword:Ljava/lang/String;

    .line 624
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$10;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->updatePasswordBtnLabel()V

    return-void
.end method
