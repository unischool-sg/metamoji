.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$18;
.super Ljava/lang/Object;
.source "ScDeadlineSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;


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

    .line 529
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V
    .locals 0

    .line 532
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-static {p3, p4, p5, p6, p7}, Lcom/metamoji/ns/NsShareViewCommand;->createLocalDateTime(IIIII)Ljava/util/Date;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setStartDate(Ljava/util/Date;Z)V

    .line 533
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    iput-boolean p3, p1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateChanged:Z

    return-void
.end method
