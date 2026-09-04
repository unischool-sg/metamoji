.class Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$9;
.super Ljava/lang/Object;
.source "NsCollaboCommandUseSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

.field final synthetic val$action:Lcom/metamoji/ns/INsCollaboAction;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Lcom/metamoji/ns/INsCollaboAction;)V
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

    .line 586
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$9;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$9;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 589
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$9;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void
.end method
