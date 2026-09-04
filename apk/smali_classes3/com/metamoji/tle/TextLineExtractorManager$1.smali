.class Lcom/metamoji/tle/TextLineExtractorManager$1;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/tle/TextLineExtractorManager;->textLineExtract(Lcom/metamoji/tle/TextLineExtractType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$confirm:Z

.field final synthetic val$recognizeText:Z

.field final synthetic val$unnecessaryFigure:Z

.field final synthetic val$useEngine:Z


# direct methods
.method constructor <init>(ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 477
    iput-boolean p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$recognizeText:Z

    iput-boolean p2, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$useEngine:Z

    iput-boolean p3, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$confirm:Z

    iput-boolean p4, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$unnecessaryFigure:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 480
    iget-boolean v0, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$recognizeText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 481
    invoke-static {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->setRecognitionInText(Z)V

    .line 482
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getInputViewForTLE()Lcom/metamoji/tle/InputViewForTLE;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/metamoji/tle/InputViewForTLE;->initRecognizeText()Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_NotSupportConvertStrokes:I

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(II)V

    .line 488
    invoke-virtual {v0}, Lcom/metamoji/tle/InputViewForTLE;->uninitRecognizeText()V

    .line 489
    invoke-static {v1}, Lcom/metamoji/tle/TextLineExtractorManager;->setRecognitionInText(Z)V

    return-void

    .line 496
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 497
    instance-of v2, v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v2, :cond_1

    .line 498
    check-cast v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 499
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getSelectedStrokeInformations()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 509
    :goto_0
    iget-boolean v2, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$useEngine:Z

    iget-boolean v3, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$recognizeText:Z

    iget-boolean v4, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$confirm:Z

    iget-boolean v5, p0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$unnecessaryFigure:Z

    invoke-static {v0, v2, v3, v4, v5}, Lcom/metamoji/tle/TextLineExtractorManager;->-$$Nest$smanalyzeTextLineExtract(Ljava/util/List;ZZZZ)V

    .line 517
    invoke-static {v1}, Lcom/metamoji/tle/TextLineExtractorManager;->setRecognitionInText(Z)V

    .line 519
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/tle/TextLineExtractorManager$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/tle/TextLineExtractorManager$1$1;-><init>(Lcom/metamoji/tle/TextLineExtractorManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
