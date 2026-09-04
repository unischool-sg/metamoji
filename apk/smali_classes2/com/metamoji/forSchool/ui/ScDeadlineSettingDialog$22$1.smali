.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22$1;
.super Ljava/lang/Object;
.source "ScDeadlineSettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 759
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22$1;->this$1:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22$1;->this$1:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22$1;->this$1:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->access$001(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;Landroid/view/View;)V

    return-void
.end method
