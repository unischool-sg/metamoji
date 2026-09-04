.class Lcom/metamoji/noteanytime/EditorActivity$79$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$79;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

.field final synthetic val$dlg:Lcom/metamoji/ex/SendDialog;

.field final synthetic val$document:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$sendTextMutable:Lcom/metamoji/cm/mutable/Mutable;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$79;Lcom/metamoji/ex/SendDialog;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 8491
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iput-object p4, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput-object p5, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$sendTextMutable:Lcom/metamoji/cm/mutable/Mutable;

    iput-object p6, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p3, :cond_27

    .line 8495
    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

    iget-object p2, p2, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_a

    .line 8496
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->getSelectedType()Lcom/metamoji/ex/SendDialog$Type;

    move-result-object p1

    .line 8497
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_1

    .line 8498
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 8500
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-boolean p3, p3, Lcom/metamoji/ex/SendDialog;->allInOnePDF:Z

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {v0}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[I)V

    return-void

    .line 8505
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p2}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/metamoji/nt/NtShare;->shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V

    return-void

    .line 8508
    :cond_1
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_6

    .line 8509
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->getSelectedPage()Lcom/metamoji/ex/SendDialog$Page;

    move-result-object p1

    .line 8510
    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->Current:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p2, p1, :cond_3

    .line 8511
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 8514
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 8515
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result p1

    .line 8516
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p3, p3, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-static {p2, p3, p1, p1}, Lcom/metamoji/nt/NtShare;->shareMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V

    return-void

    .line 8519
    :cond_2
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p1, p3}, Lcom/metamoji/nt/NtShare;->shareCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return-void

    .line 8521
    :cond_3
    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->All:Lcom/metamoji/ex/SendDialog$Page;

    if-eq p2, p1, :cond_4

    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->Selected:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p2, p1, :cond_27

    .line 8523
    :cond_4
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 8524
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget p3, p3, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget v0, v0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V

    return-void

    .line 8526
    :cond_5
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget p2, p2, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget v0, v0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    invoke-static {p1, p2, v0, p3}, Lcom/metamoji/nt/NtShare;->sharePageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;)V

    return-void

    .line 8530
    :cond_6
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->Text:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_7

    .line 8531
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$sendTextMutable:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/metamoji/nt/NtShare;->shareAsText(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 8533
    :cond_7
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->TextFile:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_8

    .line 8534
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$sendTextMutable:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p1, p2, p3}, Lcom/metamoji/nt/NtShare;->shareAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return-void

    .line 8536
    :cond_8
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_27

    .line 8537
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->isIncludeVoiceFile()Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    move-result-object p1

    .line 8538
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9

    .line 8540
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p3, p3, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-static {p2, p1, p3}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;)V

    return-void

    .line 8545
    :cond_9
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p2, p1, p3}, Lcom/metamoji/nt/NtShare;->shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;)V

    return-void

    .line 8549
    :cond_a
    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

    iget-object p2, p2, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p2, :cond_17

    .line 8550
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->getSelectedType()Lcom/metamoji/ex/SendDialog$Type;

    move-result-object p1

    .line 8551
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p2}, Lcom/metamoji/ex/SendDialog;->getSelectedPage()Lcom/metamoji/ex/SendDialog$Page;

    move-result-object p2

    .line 8552
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v0, p1, :cond_c

    .line 8553
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 8555
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-boolean p3, p3, Lcom/metamoji/ex/SendDialog;->allInOnePDF:Z

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {v0}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->saveAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[I)V

    return-void

    .line 8559
    :cond_b
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p2}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/metamoji/nt/NtShare;->saveAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V

    return-void

    .line 8562
    :cond_c
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v0, p1, :cond_13

    .line 8563
    sget-object p1, Lcom/metamoji/ex/SendDialog$Page;->SelectedArea:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p1, p2, :cond_d

    .line 8565
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity$79;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/metamoji/nt/NtShare;->saveSelectedAreaAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return-void

    .line 8567
    :cond_d
    sget-object p1, Lcom/metamoji/ex/SendDialog$Page;->Current:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p1, p2, :cond_f

    .line 8569
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 8573
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 8574
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result p1

    .line 8575
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p3, p3, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-static {p2, p3, p1, p1}, Lcom/metamoji/nt/NtShare;->saveMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V

    return-void

    .line 8579
    :cond_e
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p1, p3}, Lcom/metamoji/nt/NtShare;->saveCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return-void

    .line 8581
    :cond_f
    sget-object p1, Lcom/metamoji/ex/SendDialog$Page;->All:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p1, p2, :cond_11

    .line 8582
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 8584
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget p3, p3, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget v0, v0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->saveMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V

    return-void

    .line 8588
    :cond_10
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p1, p3}, Lcom/metamoji/nt/NtShare;->saveAllPagesAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return-void

    .line 8590
    :cond_11
    sget-object p1, Lcom/metamoji/ex/SendDialog$Page;->Selected:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p1, p2, :cond_27

    .line 8591
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_12

    .line 8593
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget p3, p3, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget v0, v0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->saveMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V

    return-void

    .line 8597
    :cond_12
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget p2, p2, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget v0, v0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    invoke-static {p1, p2, v0, p3}, Lcom/metamoji/nt/NtShare;->saveSelectedPagesAsImage(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;)V

    return-void

    .line 8601
    :cond_13
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->Text:Lcom/metamoji/ex/SendDialog$Type;

    if-eq p2, p1, :cond_16

    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->TextFile:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_14

    goto :goto_0

    .line 8605
    :cond_14
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_27

    .line 8607
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->isIncludeVoiceFile()Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    move-result-object p1

    .line 8608
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_15

    .line 8610
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p3, p3, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-static {p2, p1, p3}, Lcom/metamoji/nt/NtShare;->saveAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;)V

    return-void

    .line 8614
    :cond_15
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p2, p1, p3}, Lcom/metamoji/nt/NtShare;->saveAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;)V

    return-void

    .line 8603
    :cond_16
    :goto_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$sendTextMutable:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p1, p2, p3}, Lcom/metamoji/nt/NtShare;->saveAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return-void

    .line 8618
    :cond_17
    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/ui/PopupCommand;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

    iget-object p2, p2, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p2, :cond_1a

    .line 8619
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->getSelectedPage()Lcom/metamoji/ex/SendDialog$Page;

    move-result-object p1

    .line 8620
    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->SelectedArea:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p2, p1, :cond_18

    .line 8622
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_SELECTION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 8624
    :cond_18
    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->All:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p2, p1, :cond_19

    .line 8626
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_ALLPAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 8628
    :cond_19
    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->Current:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p2, p1, :cond_27

    .line 8630
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_THISPAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 8633
    :cond_1a
    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/ui/PopupCommand;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

    iget-object p2, p2, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p2, :cond_25

    .line 8635
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->getSelectedType()Lcom/metamoji/ex/SendDialog$Type;

    move-result-object p1

    .line 8636
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_1c

    .line 8637
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 8639
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-boolean p3, p3, Lcom/metamoji/ex/SendDialog;->allInOnePDF:Z

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {v0}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->ExportWebDavAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[I)V

    return-void

    .line 8643
    :cond_1b
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p2}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/metamoji/nt/NtShare;->ExportWebDavAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V

    return-void

    .line 8646
    :cond_1c
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_21

    .line 8647
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->getSelectedPage()Lcom/metamoji/ex/SendDialog$Page;

    move-result-object p1

    .line 8648
    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->Current:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p2, p1, :cond_1e

    .line 8649
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1d

    .line 8650
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget p3, p3, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget v0, v0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->ExportWebDavMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V

    return-void

    .line 8652
    :cond_1d
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p1, p3}, Lcom/metamoji/nt/NtShare;->ExportWebDavCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return-void

    .line 8654
    :cond_1e
    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->All:Lcom/metamoji/ex/SendDialog$Page;

    if-eq p2, p1, :cond_1f

    sget-object p2, Lcom/metamoji/ex/SendDialog$Page;->Selected:Lcom/metamoji/ex/SendDialog$Page;

    if-ne p2, p1, :cond_27

    .line 8656
    :cond_1f
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_20

    .line 8657
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget p3, p3, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget v0, v0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->ExportWebDavMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V

    return-void

    .line 8659
    :cond_20
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget p2, p2, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget v0, v0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    invoke-static {p1, p2, v0, p3}, Lcom/metamoji/nt/NtShare;->ExportWebDavPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;)V

    return-void

    .line 8663
    :cond_21
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->TextFile:Lcom/metamoji/ex/SendDialog$Type;

    if-eq p2, p1, :cond_24

    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->Text:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_22

    goto :goto_1

    .line 8666
    :cond_22
    sget-object p2, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    if-ne p2, p1, :cond_27

    .line 8667
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog;->isIncludeVoiceFile()Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    move-result-object p1

    .line 8668
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_23

    .line 8670
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p3, p3, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-static {p2, p1, p3}, Lcom/metamoji/nt/NtShare;->ExportWebDavAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;)V

    return-void

    .line 8674
    :cond_23
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p2, p1, p3}, Lcom/metamoji/nt/NtShare;->ExportWebDavAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;)V

    return-void

    .line 8664
    :cond_24
    :goto_1
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$sendTextMutable:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-static {p1, p2, p3}, Lcom/metamoji/nt/NtShare;->ExportWebDavAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return-void

    .line 8678
    :cond_25
    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$79;

    iget-object p2, p2, Lcom/metamoji/noteanytime/EditorActivity$79;->val$id:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, p2, :cond_27

    .line 8679
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p1, p1, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_26

    .line 8681
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    iget-object p2, p2, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p3}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/metamoji/nt/NtShare;->printAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;[I)V

    return-void

    .line 8685
    :cond_26
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$document:Lcom/metamoji/nt/NtDocument;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$79$1;->val$dlg:Lcom/metamoji/ex/SendDialog;

    invoke-virtual {p2}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/metamoji/nt/NtShare;->printAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V

    :cond_27
    return-void
.end method
