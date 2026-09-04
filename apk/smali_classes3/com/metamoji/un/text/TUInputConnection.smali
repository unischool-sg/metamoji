.class public Lcom/metamoji/un/text/TUInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "TUInputConnection.java"


# instance fields
.field private DEBUG:Z

.field private _client:Lcom/metamoji/un/text/ITUInputConnectionClient;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/metamoji/un/text/ITUInputConnectionClient;)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 42
    iput-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    .line 47
    iput-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    return-void
.end method

.method private createStrAttrsListFromSpannable(Landroid/text/Spannable;Lcom/metamoji/un/text/model/attr/Attributes;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;"
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 538
    :goto_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz p2, :cond_1

    .line 541
    instance-of v3, p2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v3, :cond_0

    .line 542
    new-instance v3, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    move-object v4, p2

    check-cast v4, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {v3, v4}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 543
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->resetComposingColor()V

    .line 544
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->resetComposingBgColor()V

    .line 545
    invoke-virtual {v3, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setComposingUnderline(Z)V

    goto :goto_1

    .line 548
    :cond_0
    new-instance v3, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v3, p2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    goto :goto_1

    .line 551
    :cond_1
    new-instance v3, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 552
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_2
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p2

    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 555
    array-length v2, p2

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, p2, v1

    .line 556
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 557
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 558
    invoke-direct {p0, v3, v4, v5, v0}, Lcom/metamoji/un/text/TUInputConnection;->setSpanToStrAttrsList(Ljava/lang/Object;IILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method private curPenIndexChanged(I)V
    .locals 2

    .line 234
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MazecPenPaletteCurrentTab"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method private setSpanToStrAttrsList(Ljava/lang/Object;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;)V"
        }
    .end annotation

    .line 565
    new-instance v0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 567
    instance-of v1, p1, Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_0

    .line 568
    move-object v1, p1

    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    .line 569
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setComposingColor(I)V

    .line 570
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 572
    :goto_0
    instance-of v2, p1, Landroid/text/style/BackgroundColorSpan;

    if-eqz v2, :cond_1

    .line 573
    check-cast p1, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setComposingBgColor(I)V

    .line 574
    sget-object p1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingBgColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    goto :goto_1

    .line 576
    :cond_1
    instance-of p1, p1, Landroid/text/style/UnderlineSpan;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 577
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setComposingUnderline(Z)V

    .line 578
    sget-object p1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingUnderline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    :cond_2
    :goto_1
    if-ge p2, p3, :cond_3

    .line 582
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 583
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private showPenSettings(I)V
    .locals 3

    .line 251
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 253
    const-string v2, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 254
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "fromMazec"

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_PEN_ATTR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "beginBatchEdit"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "clearMetaKeyStates: states=%d"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "commitCompletion: text=%s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "commitCorrection: correctionInfo=%s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4

    .line 308
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "commitText: text=%s, newCursorPosition=%d"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setQueueing(Z)V

    .line 316
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getUndoDatasForComposingText()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    iget-object v3, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    if-eqz v1, :cond_2

    .line 322
    :try_start_1
    invoke-interface {v3}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getUndoDatasForComposingText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->processUndoTask(Ljava/util/List;Z)V

    .line 323
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getUndoDatasForComposingText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 327
    :cond_2
    invoke-interface {v3}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 328
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 329
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->deleteBackward()V

    .line 335
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 340
    :cond_4
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_2

    .line 336
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextModel;->insertText(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :goto_2
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 346
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1, v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setQueueing(Z)V

    .line 348
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 350
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V

    return v2

    :catchall_0
    move-exception p1

    .line 345
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 346
    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2, v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setQueueing(Z)V

    .line 347
    throw p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 3

    .line 80
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "deleteSurroundingText: beforeLength=%d, afterLength=%d"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    if-eqz v2, :cond_2

    return v1

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 97
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->deleteSurroundingText(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "endBatchEdit"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 6

    .line 276
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "finishComposingText"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v5, v4, :cond_2

    .line 296
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v4

    .line 297
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 298
    invoke-virtual {p0, v1, v3}, Lcom/metamoji/un/text/TUInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 300
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 301
    new-instance v2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v2, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    :cond_2
    return v3
.end method

.method public getCursorCapsMode(I)I
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getCursorCapsMode: reqModes=%d"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getExtractedText: request=%s, flags=%d"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getSelectedText: flags=%d"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 4

    .line 146
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getTextAfterCursor: n=%d, flags=%d"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    .line 149
    const-string v0, ""

    if-nez p2, :cond_1

    return-object v0

    .line 152
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, p1, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 154
    new-instance v2, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 p1, 0x1

    .line 156
    invoke-virtual {p2, v2, p1}, Lcom/metamoji/un/text/model/TextModel;->textInRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 4

    .line 131
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getTextBeforeCursor: n=%d, flags=%d"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    .line 134
    const-string v0, ""

    if-nez p2, :cond_1

    return-object v0

    .line 137
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    neg-int p1, p1

    const/4 v3, 0x0

    invoke-virtual {p2, v2, p1, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 139
    new-instance v2, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p2, v2, p1}, Lcom/metamoji/un/text/model/TextModel;->textInRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "performContextMenuAction: id=%d"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 2

    .line 168
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "performEditorAction: editorAction=%d"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result p1

    return p1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    .line 177
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "performPrivateCommand: action=%s, data=%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 184
    const-string v0, "com.metamoji.mazecapi.client_notify.input_start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    const-string/jumbo v1, "support_reedit"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setSupportReedit(Z)V

    .line 188
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getMazecAction()Lcom/metamoji/un/text/MazecAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/MazecAction;->sendPenInfo()V

    .line 192
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->applyBackgroundColorToMazec()V

    goto/16 :goto_1

    .line 195
    :cond_2
    const-string v0, "com.metamoji.mazecapi.client_action.commit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 197
    const-string/jumbo v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "stroke_data"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    .line 199
    invoke-virtual {v1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->getStrokesList()Ljava/util/List;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokesListFromNA(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v2, v1, v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->insertStrokes(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_3
    const-string v0, "com.metamoji.mazecapi.action_reply.set_strokes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    const-string v0, "count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v1, v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->selectRangeAfterSendStrokes(I)V

    goto :goto_1

    .line 209
    :cond_4
    const-string v0, "com.metamoji.mazecapi.client_action.skip_reedit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->skipStrokeReedit()V

    goto :goto_1

    .line 213
    :cond_5
    const-string v0, "com.metamoji.mazecapi.client_notify.properties_changed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "cur_pen_index"

    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 215
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 216
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/TUInputConnection;->curPenIndexChanged(I)V

    goto :goto_1

    .line 220
    :cond_6
    const-string v0, "com.metamoji.mazecapi.client_action.edit_pen_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/TUInputConnection;->showPenSettings(I)V

    .line 225
    :cond_7
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "reportFullscreenMode: enabled=%b"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 1

    const/16 v0, 0x15

    .line 589
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->checkOsVersion(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v0, p1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->requestCursorUpdates(I)Z

    move-result p1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 267
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "sendKeyEvent: event=%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 5

    .line 464
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setComposingRegion: start=%d, end=%d"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getUndoDatasForComposingText()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-lt p1, p2, :cond_3

    .line 478
    iget-object v4, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v4}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v4

    if-nez v4, :cond_3

    return v1

    .line 484
    :cond_3
    iget-object v4, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v4}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 485
    invoke-virtual {p0}, Lcom/metamoji/un/text/TUInputConnection;->finishComposingText()Z

    .line 505
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    sub-int/2addr p2, p1

    .line 506
    invoke-virtual {v0, v4, p2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 507
    new-instance p2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p2, v4, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 508
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1, p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V

    .line 510
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1, v3}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setDuringInsertComposingText(Z)V

    if-eqz v2, :cond_5

    .line 514
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getUndoDatasForComposingText()Ljava/util/List;

    move-result-object p1

    .line 515
    invoke-static {p2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createSetSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;

    move-result-object v2

    .line 514
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_5
    new-instance p1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 519
    invoke-virtual {p1, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setComposingUnderline(Z)V

    .line 520
    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingUnderline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1, v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setDuringInsertComposingText(Z)V

    return v3

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2, v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setDuringInsertComposingText(Z)V

    .line 524
    throw p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8

    .line 357
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "setComposingText: text=%s, newCursorPosition=%d"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getUndoDatasForComposingText()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 365
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 366
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    if-nez p1, :cond_3

    .line 369
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1, v3}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V

    goto :goto_1

    .line 374
    :cond_3
    const-string p1, ""

    invoke-virtual {p0, p1, v2}, Lcom/metamoji/un/text/TUInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 375
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->updateImmSelection()V

    :goto_1
    return v2

    .line 381
    :cond_4
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getAttributeForInsertTextOrStroke()Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v4

    .line 383
    instance-of v5, p1, Landroid/text/Spannable;

    if-eqz v5, :cond_5

    .line 384
    move-object v5, p1

    check-cast v5, Landroid/text/Spannable;

    invoke-direct {p0, v5, v4}, Lcom/metamoji/un/text/TUInputConnection;->createStrAttrsListFromSpannable(Landroid/text/Spannable;Lcom/metamoji/un/text/model/attr/Attributes;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_7

    .line 390
    instance-of v5, v4, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v5, :cond_6

    .line 391
    new-instance v5, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    check-cast v4, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {v5, v4}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    goto :goto_2

    .line 393
    :cond_6
    new-instance v5, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v5, v4}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    goto :goto_2

    .line 396
    :cond_7
    new-instance v5, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v5}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 397
    :goto_2
    invoke-virtual {v5, v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setComposingUnderline(Z)V

    .line 398
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    .line 399
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 400
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 404
    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v5}, Lcom/metamoji/un/text/ITUInputConnectionClient;->endReconvertTaskIfNeeded()V

    .line 406
    iget-object v5, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v5, v2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setDuringInsertComposingText(Z)V

    if-eqz v1, :cond_9

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getUndoDatasForComposingText()Ljava/util/List;

    move-result-object v1

    .line 411
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createSetSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/Map;

    move-result-object v5

    .line 410
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_9
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 416
    iget-object v1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getComposingSpan()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 421
    :cond_a
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/metamoji/un/text/model/TextModel;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    .line 424
    iget-object v5, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {v5, v2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setQueueing(Z)V

    .line 426
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/df/model/IModelManager;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 428
    :try_start_1
    invoke-virtual {p2, p1, v4}, Lcom/metamoji/un/text/model/TextModel;->insertTextInternalCore(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 431
    invoke-virtual {p2, v4}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 432
    invoke-virtual {p2, v4, v4}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 439
    :cond_b
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 440
    iget-object v5, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_c

    new-instance v3, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v3, v1, v4}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    :cond_c
    invoke-interface {v5, v3}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V

    .line 443
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    iput-boolean v2, p1, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    .line 446
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :try_start_2
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 451
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1, v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setQueueing(Z)V

    .line 454
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 457
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1, v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setDuringInsertComposingText(Z)V

    .line 458
    iget-object p1, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p1}, Lcom/metamoji/un/text/ITUInputConnectionClient;->updateImmSelection()V

    return v2

    :catchall_0
    move-exception p1

    .line 450
    :try_start_3
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 451
    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2, v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setQueueing(Z)V

    .line 452
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 457
    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2, v0}, Lcom/metamoji/un/text/ITUInputConnectionClient;->setDuringInsertComposingText(Z)V

    .line 458
    iget-object p2, p0, Lcom/metamoji/un/text/TUInputConnection;->_client:Lcom/metamoji/un/text/ITUInputConnectionClient;

    invoke-interface {p2}, Lcom/metamoji/un/text/ITUInputConnectionClient;->updateImmSelection()V

    .line 459
    throw p1
.end method

.method public setSelection(II)Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/metamoji/un/text/TUInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "setSelection: start=%d, end=%d"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
