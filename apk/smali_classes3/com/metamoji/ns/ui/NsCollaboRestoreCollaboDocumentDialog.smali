.class public Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "NsCollaboRestoreCollaboDocumentDialog.java"


# instance fields
.field public createDate:Ljava/util/Date;

.field public docId:Ljava/lang/String;

.field public driveId:Ljava/lang/String;

.field m_minDate:Ljava/util/Date;

.field m_restoreDateTime:Ljava/util/Date;

.field m_restoreDateTimeBtn:Lcom/metamoji/ui/common/UiButton;

.field m_restoreDateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->driveId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->docId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->createDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method handleDateTimeButtonTap()V
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 115
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_minDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 119
    new-instance v2, Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$2;

    invoke-direct {v4, p0}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;)V

    iget-object v7, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTime:Ljava/util/Date;

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/ui/DateTimePickerDialog;-><init>(Landroid/content/Context;Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;IILjava/util/Date;Z)V

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    .line 125
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/DateTimePickerDialog;->setIncrementTimeUnit(I)V

    .line 126
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DateTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 132
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/DateTimePickerDialog;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 55
    iget v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->mViewId:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-virtual {p0, v2}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->setModal(Z)V

    .line 63
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_restore_collabo_document:I

    iput v1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->mViewId:I

    .line 64
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_COLLABORESTORECOLLABODOCUMENTDLG_TITLE:I

    iput v1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->mTitleId:I

    .line 66
    iput-boolean v2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->mV4Compatible:Z

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_minDate:Ljava/util/Date;

    if-nez p2, :cond_2

    .line 75
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->createDate:Ljava/util/Date;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_minDate:Ljava/util/Date;

    .line 78
    invoke-static {p2}, Lcom/metamoji/ns/NsShareViewCommand;->clearSecondsDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTime:Ljava/util/Date;

    .line 82
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->guidance:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 83
    sget p3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_COLLABORESTORECOLLABODOCUMENTDLG_GUIDANCE:I

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p3

    .line 88
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget p2, Lcom/metamoji/noteanytime/R$id;->dateTimeBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTimeBtn:Lcom/metamoji/ui/common/UiButton;

    .line 92
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTime:Ljava/util/Date;

    invoke-virtual {p0, p2}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->setDateTime(Ljava/util/Date;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 162
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 165
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->driveId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->docId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTime:Ljava/util/Date;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/ns/NsCollaboCommand;->restoreCollaboDocumentSubInner(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;)V

    return-void
.end method

.method setDateTime(Ljava/util/Date;)V
    .locals 2

    .line 141
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_minDate:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_minDate:Ljava/util/Date;

    .line 150
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->clearSecondsDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTime:Ljava/util/Date;

    .line 151
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->m_restoreDateTimeBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->dateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
