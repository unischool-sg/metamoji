.class public Lcom/metamoji/forSchool/ui/ScClassImportDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScClassImportDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScClassImportDialog$IScClassImportDialogAfterAction;
    }
.end annotation


# instance fields
.field public m_afterAction:Lcom/metamoji/forSchool/ui/ScClassImportDialog$IScClassImportDialogAfterAction;

.field m_editText:Landroid/widget/EditText;

.field public m_groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m_prevClassName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mhandleDoneButtonTapAfterExec(Lcom/metamoji/forSchool/ui/ScClassImportDialog;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->handleDoneButtonTapAfterExec(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScClassImportDialog$IScClassImportDialogAfterAction;

    .line 42
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_groupList:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_prevClassName:Ljava/lang/String;

    return-void
.end method

.method private handleDoneButtonTapAfterExec(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 138
    const-string v1, "forSchoolClassDicList"

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    .line 140
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 142
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScClassImportDialog$IScClassImportDialogAfterAction;

    if-eq p2, p1, :cond_0

    .line 143
    invoke-interface {p2, p3}, Lcom/metamoji/forSchool/ui/ScClassImportDialog$IScClassImportDialogAfterAction;->action(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "actionId = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " event = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p2, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onEditorAction"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 63
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_1

    .line 64
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 52
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_class_import:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->mViewId:I

    .line 53
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_ClassImportDlg_Title:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->mTitleId:I

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->editText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_editText:Landroid/widget/EditText;

    .line 61
    new-instance p3, Lcom/metamoji/forSchool/ui/ScClassImportDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/forSchool/ui/ScClassImportDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 71
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_prevClassName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 72
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 8

    .line 94
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 95
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getClassDicList()Ljava/util/List;

    move-result-object v5

    .line 105
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "className"

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 106
    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v7

    :goto_0
    if-nez v3, :cond_3

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "groupDicList"

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0, p1, v5, v6}, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->handleDoneButtonTapAfterExec(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_ClassImportDlg_Msg_Exist_Name:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;-><init>(Lcom/metamoji/forSchool/ui/ScClassImportDialog;Ljava/util/Map;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0, v7, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 96
    :cond_4
    :goto_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->School_ClassImportDlg_Msg_No_Name:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
