.class public Lcom/metamoji/ui/cabinet/user/UserView;
.super Landroidx/fragment/app/Fragment;
.source "UserView.java"


# static fields
.field public static Key_UserViewTaskCallBack:Ljava/lang/String; = "userviewtaskcallback"

.field public static final TAG_USERVIEW:Ljava/lang/String; = "UserView"


# instance fields
.field m_callback:Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

.field m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$mfinish(Lcom/metamoji/ui/cabinet/user/UserView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/UserView;->finish(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnCancelClose(Lcom/metamoji/ui/cabinet/user/UserView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/UserView;->handleOnCancelClose(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mjumpURL(Lcom/metamoji/ui/cabinet/user/UserView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/UserView;->jumpURL(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_callback:Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

    .line 39
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    return-void
.end method

.method private finish(Z)V
    .locals 3

    .line 189
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_0
    const/4 v1, 0x0

    .line 194
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method private handleOnCancelClose(Z)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/UserView;->finish(Z)V

    .line 182
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_callback:Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;->OnClickCancelButton_UserViewTaskCallBack()V

    .line 184
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_callback:Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;->OnDestroy_UserViewTaskCallBack()V

    :cond_0
    return-void
.end method

.method private jumpURL(Ljava/lang/String;I)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/UserView;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "DigitalCabinet_Question"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 228
    invoke-static {p1}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 230
    new-instance v0, Lcom/metamoji/ui/dialog/PreviewView;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/PreviewView;-><init>()V

    const/4 v2, 0x0

    .line 231
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/PreviewView;->setHeaderButton(Z)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/dialog/PreviewView;->setTitle(I)V

    .line 233
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/PreviewView;->setUrl(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/PreviewView;->safeShow(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/UserView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/UserView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 218
    sget p2, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 219
    sget p2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p2, 0x1

    .line 220
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 221
    new-instance p2, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/UserView;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/UserView;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 139
    sget-object v0, Lcom/metamoji/ui/cabinet/user/UserView;->Key_UserViewTaskCallBack:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_callback:Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 46
    sget p2, Lcom/metamoji/noteanytime/R$layout;->activity_cabinet_user:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 49
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_user_entry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 50
    new-instance v0, Lcom/metamoji/ui/cabinet/user/UserView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/UserView$1;-><init>(Lcom/metamoji/ui/cabinet/user/UserView;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_user_login:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 63
    new-instance v0, Lcom/metamoji/ui/cabinet/user/UserView$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/UserView$2;-><init>(Lcom/metamoji/ui/cabinet/user/UserView;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 76
    new-instance v0, Lcom/metamoji/ui/cabinet/user/UserView$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/UserView$3;-><init>(Lcom/metamoji/ui/cabinet/user/UserView;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_question:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 87
    new-instance v0, Lcom/metamoji/ui/cabinet/user/UserView$4;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/UserView$4;-><init>(Lcom/metamoji/ui/cabinet/user/UserView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance p2, Lcom/metamoji/ui/cabinet/user/UserView$5;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/user/UserView$5;-><init>(Lcom/metamoji/ui/cabinet/user/UserView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    if-eqz p2, :cond_1

    .line 105
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 109
    :cond_0
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 111
    :cond_1
    new-instance p2, Lcom/metamoji/ui/cabinet/user/UserView$6;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/user/UserView$6;-><init>(Lcom/metamoji/ui/cabinet/user/UserView;)V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 125
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 127
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/UserView;->m_listener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_2
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 166
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
