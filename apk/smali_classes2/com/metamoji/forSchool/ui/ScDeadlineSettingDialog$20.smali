.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$20;
.super Ljava/lang/Object;
.source "ScDeadlineSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->handleEndDateButtonTap()V
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

    .line 648
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$20;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V
    .locals 0

    .line 651
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$20;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-static {p3, p4, p5, p6, p7}, Lcom/metamoji/ns/NsShareViewCommand;->createLocalDateTime(IIIII)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setEndDate(Ljava/util/Date;)V

    .line 652
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$20;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateChanged:Z

    return-void
.end method
