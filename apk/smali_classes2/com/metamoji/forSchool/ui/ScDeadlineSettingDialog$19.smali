.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$19;
.super Ljava/lang/Object;
.source "ScDeadlineSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->handleStartDateButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 536
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$19;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 539
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$19;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    return-void
.end method
