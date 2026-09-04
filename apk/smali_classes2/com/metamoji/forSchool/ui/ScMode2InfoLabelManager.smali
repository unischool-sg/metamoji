.class public Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;
.super Ljava/lang/Object;
.source "ScMode2InfoLabelManager.java"


# static fields
.field private static _sharedInstance:Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;


# instance fields
.field m_deadlineInfoStr:Ljava/lang/String;

.field m_scoreInfoStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->m_deadlineInfoStr:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->m_scoreInfoStr:Ljava/lang/String;

    return-void
.end method

.method public static sharedInstance()Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->_sharedInstance:Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;-><init>()V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->_sharedInstance:Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->_sharedInstance:Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;

    return-object v0
.end method

.method private updateMode2InfoLanbel(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->m_scoreInfoStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->m_scoreInfoStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->m_deadlineInfoStr:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 48
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_PEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const-string v0, ""

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getModeBarController()Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->mode2InfoText()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->updateMode2InfoView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public setDeadlineInfoStr(Ljava/lang/String;Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->m_deadlineInfoStr:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p2}, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->updateMode2InfoLanbel(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method

.method public setScoreInfoStr(Ljava/lang/String;Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->m_scoreInfoStr:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p2}, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->updateMode2InfoLanbel(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method
