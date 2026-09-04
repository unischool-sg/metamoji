.class public Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;
.super Landroidx/fragment/app/Fragment;
.source "NsCollaboChatInputFragment.java"


# instance fields
.field m_Cancel:Lcom/metamoji/ui/common/UiButtonHeader;

.field m_Done:Lcom/metamoji/ui/common/UiButtonHeader;

.field private m_isOrientationChange:Z


# direct methods
.method static bridge synthetic -$$Nest$mhideSoftInput(Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->m_isOrientationChange:Z

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->setRetainInstance(Z)V

    return-void
.end method

.method private hideSoftInput(Landroid/view/View;)V
    .locals 2

    .line 121
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    const-string v1, "input_method"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method public initializeChatInputView()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->chatInputField:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/TextUnitEdit;

    .line 113
    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->initTextModel()V

    .line 115
    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->requestFocus()Z

    .line 116
    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->showSoftInput()Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 52
    sget v0, Lcom/metamoji/noteanytime/R$id;->chat_cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->m_Cancel:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 53
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v0, Lcom/metamoji/noteanytime/R$id;->chat_done_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->m_Done:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 65
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->m_isOrientationChange:Z

    if-nez p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->initializeChatInputView()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->m_isOrientationChange:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    sget p3, Lcom/metamoji/noteanytime/R$layout;->collabo_chat_input_phone:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
