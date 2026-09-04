.class Lcom/metamoji/nt/NtPageController$3;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->handlePDFLocation(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/PDFLocation;

.field final synthetic val$l_pdfUnit:Lcom/metamoji/un/pdf/UnPDFUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/ui/dialog/PDFLocation;Lcom/metamoji/un/pdf/UnPDFUnit;)V
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

    .line 1258
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$3;->this$0:Lcom/metamoji/nt/NtPageController;

    iput-object p2, p0, Lcom/metamoji/nt/NtPageController$3;->val$dlg:Lcom/metamoji/ui/dialog/PDFLocation;

    iput-object p3, p0, Lcom/metamoji/nt/NtPageController$3;->val$l_pdfUnit:Lcom/metamoji/un/pdf/UnPDFUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 6

    if-eqz p3, :cond_0

    .line 1262
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController$3;->val$dlg:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v1, p1, Lcom/metamoji/ui/dialog/PDFLocation;->offsetX:F

    .line 1263
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController$3;->val$dlg:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, p1, Lcom/metamoji/ui/dialog/PDFLocation;->offsetY:F

    .line 1264
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController$3;->val$dlg:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v3, p1, Lcom/metamoji/ui/dialog/PDFLocation;->scale:F

    .line 1265
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController$3;->val$dlg:Lcom/metamoji/ui/dialog/PDFLocation;

    iget p1, p1, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    int-to-float v4, p1

    .line 1266
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController$3;->this$0:Lcom/metamoji/nt/NtPageController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtPageController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v5

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController$3;->val$l_pdfUnit:Lcom/metamoji/un/pdf/UnPDFUnit;

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/pdf/UnPDFUnit;->setPDFLocationWithOffsetX(FFFFLcom/metamoji/df/controller/EditContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    :catch_0
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController$3;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {p1, v5}, Lcom/metamoji/nt/NtPageController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, Lcom/metamoji/nt/NtPageController$3;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {p2, v5}, Lcom/metamoji/nt/NtPageController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 1275
    throw p1

    :cond_0
    return-void
.end method
