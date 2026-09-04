.class Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;
.super Ljava/lang/Object;
.source "NsCollaboModeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSchoolStatusBtn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

.field final synthetic val$doItBtnSelected:Z

.field final synthetic val$helpBtnSelected:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1152
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    iput-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->val$doItBtnSelected:Z

    iput-boolean p3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->val$helpBtnSelected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1155
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->val$doItBtnSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;->val$helpBtnSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method
