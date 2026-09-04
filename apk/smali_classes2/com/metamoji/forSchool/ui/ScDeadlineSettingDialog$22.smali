.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;
.super Ljava/lang/Object;
.source "ScDeadlineSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;Landroid/view/View;)V
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

    .line 751
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 759
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22$1;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22$1;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
