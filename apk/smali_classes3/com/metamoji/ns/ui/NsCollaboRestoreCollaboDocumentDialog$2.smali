.class Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$2;
.super Ljava/lang/Object;
.source "NsCollaboRestoreCollaboDocumentDialog.java"

# interfaces
.implements Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->handleDateTimeButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;

    invoke-static {p3, p4, p5, p6, p7}, Lcom/metamoji/ns/NsShareViewCommand;->createLocalDateTime(IIIII)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->setDateTime(Ljava/util/Date;)V

    return-void
.end method
