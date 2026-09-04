.class public Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "VcRenameTitleDialog.java"


# static fields
.field private static Key_VcRenameTitle:Ljava/lang/String; = "VcRenameTitle"


# instance fields
.field private _initialTitle:Ljava/lang/String;

.field private _titleEditText:Lcom/metamoji/ui/common/UiEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 65
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

    .line 66
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_1

    .line 67
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getRenamedTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->_titleEditText:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->_initialTitle:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 48
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_voice_rename_title:I

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->mViewId:I

    .line 49
    sget v0, Lcom/metamoji/noteanytime/R$string;->VOICE_RENAME_TITLE_TITLE:I

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->mTitleId:I

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->enableAutoDetectTextViewMode()V

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    if-eqz p3, :cond_0

    .line 56
    sget-object p2, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->Key_VcRenameTitle:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->_initialTitle:Ljava/lang/String;

    .line 59
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->voice_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->_titleEditText:Lcom/metamoji/ui/common/UiEditText;

    .line 60
    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->_initialTitle:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 61
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->_titleEditText:Lcom/metamoji/ui/common/UiEditText;

    sget p3, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setHint(I)V

    .line 64
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->_titleEditText:Lcom/metamoji/ui/common/UiEditText;

    new-instance p3, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    sget-object v0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    sget-object v0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->Key_VcRenameTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->_titleEditText:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
