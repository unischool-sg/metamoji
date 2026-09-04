.class Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$3;
.super Ljava/lang/Object;
.source "NsCollaboRestoreCollaboDocumentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 126
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    return-void
.end method
