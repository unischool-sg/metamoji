.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$17;
.super Ljava/lang/Object;
.source "ScDeadlineSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->modeSelectButtonTap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

.field final synthetic val$isPrevStart:Z


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;Z)V
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

    .line 425
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$17;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$17;->val$isPrevStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 427
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$17;->val$isPrevStart:Z

    .line 430
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$17;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    if-eqz p1, :cond_0

    .line 428
    check-cast p2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-virtual {p3, p2}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->handlePrevStartModeSelectMenuTap(Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;)V

    return-void

    .line 430
    :cond_0
    check-cast p2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-virtual {p3, p2}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->handleEndModeSelectMenuTap(Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;)V

    return-void
.end method
