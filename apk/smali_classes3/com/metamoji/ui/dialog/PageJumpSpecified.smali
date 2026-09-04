.class public Lcom/metamoji/ui/dialog/PageJumpSpecified;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "PageJumpSpecified.java"


# static fields
.field private static final Key_SpecifiedNumber:Ljava/lang/String; = "PageJumpSpecified_PageNo"


# instance fields
.field private _numberPicker:Landroid/widget/NumberPicker;

.field private _pageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageIndex()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PageJumpSpecified;->enableAutoDetectTextViewMode()V

    .line 48
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->_pageCount:I

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 53
    const-string v2, "PageJumpSpecified_PageNo"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getPageIndex(Lcom/metamoji/df/controller/DfPageController;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-gtz v1, :cond_1

    move v1, v2

    .line 62
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_page_jump_specified:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->mViewId:I

    .line 63
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PAGE_JUMP_SPECIFIED_TITLE:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->mTitleId:I

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 67
    sget p2, Lcom/metamoji/noteanytime/R$id;->pageNumberLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 68
    sget p3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PAGE_JUMP_SPECIFIED_NUMBER:I

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p3

    iget v0, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->_pageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "%s ( 1 \u301c %d )"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 69
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget p2, Lcom/metamoji/noteanytime/R$id;->numPicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/NumberPicker;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->_numberPicker:Landroid/widget/NumberPicker;

    .line 73
    iget p3, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->_pageCount:I

    invoke-virtual {p2, p3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 74
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {p2, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 76
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {p2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    sget-object v0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PageJumpSpecified;->_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    const-string v1, "PageJumpSpecified_PageNo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
