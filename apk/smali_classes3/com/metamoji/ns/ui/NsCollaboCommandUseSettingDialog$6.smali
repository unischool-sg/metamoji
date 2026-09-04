.class Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$6;
.super Ljava/lang/Object;
.source "NsCollaboCommandUseSettingDialog.java"

# interfaces
.implements Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->tabButtonChanged(Z)V
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

    .line 428
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$6;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V
    .locals 0

    .line 431
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$6;->this$0:Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;

    const/4 p2, 0x1

    invoke-static {p3, p4, p5, p6, p7}, Lcom/metamoji/ns/NsShareViewCommand;->createLocalDateTime(IIIII)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->setDate(ZLjava/util/Date;)V

    return-void
.end method
