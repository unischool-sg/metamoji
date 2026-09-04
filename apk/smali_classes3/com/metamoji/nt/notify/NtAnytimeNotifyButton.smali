.class public Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;
.super Lcom/metamoji/noteanytime/ActionBarButton;
.source "NtAnytimeNotifyButton.java"


# instance fields
.field final _bar_btn:[I

.field _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 56
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/ActionBarButton;-><init>(Landroid/content/Context;)V

    .line 40
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_menu:I

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_menu_i:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_menu_share:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_menu_i_share:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->_bar_btn:[I

    .line 57
    iput-object p1, p0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->_context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/ActionBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_menu:I

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_menu_i:I

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_menu_share:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_menu_i_share:I

    filled-new-array {p2, v0, v1, v2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->_bar_btn:[I

    .line 52
    iput-object p1, p0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->_context:Landroid/content/Context;

    return-void
.end method

.method public static handleCommandExec(Lcom/metamoji/nt/NtCommand;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_LOOK_MANUAL:Lcom/metamoji/nt/NtCommand;

    if-ne p0, v0, :cond_0

    .line 163
    const-string p0, "manual"

    sget v0, Lcom/metamoji/noteanytime/R$string;->Menu_Manual:I

    invoke-static {p0, v0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->showURLByBrowserWithDicKey(Ljava/lang/String;I)V

    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_LOOK_LEGAL_NOTICES:Lcom/metamoji/nt/NtCommand;

    if-ne p0, v0, :cond_1

    .line 165
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    .line 166
    new-instance v0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$handleCommandExec$0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "SystemOption_LegalNotices"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance p0, Lcom/metamoji/ui/dialog/PreviewView;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PreviewView;-><init>()V

    const/4 v1, 0x1

    .line 173
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/PreviewView;->setHeaderButton(Z)V

    .line 174
    sget v1, Lcom/metamoji/noteanytime/R$string;->SystemOption_LegalNotices:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/PreviewView;->setTitle(I)V

    .line 175
    const-string v1, "file:///android_asset/webview/LegalNotices.html"

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/PreviewView;->setUrl(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/PreviewView;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showURLByBrowserWithDicKey$1(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 258
    invoke-static {p0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static menuEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 130
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    .line 132
    invoke-static {p0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static openAdminWeb()V
    .locals 1

    .line 300
    const-string v0, "mmjeditor2/usradm/"

    invoke-static {v0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->openweb(Ljava/lang/String;)V

    return-void
.end method

.method public static openShareCordinator()V
    .locals 1

    .line 304
    const-string v0, "mmjCloudWeb/mypage/"

    invoke-static {v0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->openweb(Ljava/lang/String;)V

    return-void
.end method

.method private static openweb(Ljava/lang/String;)V
    .locals 4

    .line 308
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v1, v2, :cond_0

    const-string v1, "ja"

    goto :goto_0

    :cond_0
    const-string v1, "en"

    .line 311
    :goto_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/cs/CsCloudServiceContext;->getRestHost()Ljava/lang/String;

    move-result-object v2

    .line 312
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    filled-new-array {v2, p0, v1, v3, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s%s%s/login.html?cuid=%s&uuid=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 314
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 326
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static showOfflineMsg(I)V
    .locals 2

    .line 89
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-static {v0, p0, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static showPreviewViewWithDicKey(Ljava/lang/String;I)V
    .locals 2

    .line 275
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 282
    invoke-static {p0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/metamoji/ui/dialog/PreviewView;

    invoke-direct {v1}, Lcom/metamoji/ui/dialog/PreviewView;-><init>()V

    if-lez p1, :cond_0

    .line 285
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/dialog/PreviewView;->setTitle(I)V

    .line 286
    :cond_0
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/PreviewView;->setUrl(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, p0}, Lcom/metamoji/ui/dialog/PreviewView;->safeShow(Ljava/lang/String;)V

    return-void

    .line 278
    :cond_1
    invoke-static {p1}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->showOfflineMsg(I)V

    return-void
.end method

.method public static showURLByBrowserWithDicKey(Ljava/lang/String;I)V
    .locals 2

    .line 250
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 256
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    .line 257
    new-instance v0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void

    .line 253
    :cond_0
    invoke-static {p1}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->showOfflineMsg(I)V

    return-void
.end method


# virtual methods
.method makeManual(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 62
    const-string v0, "manual"

    invoke-static {v0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->menuEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->MENU_MANUAL:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Menu_Manual:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->menu_anytime_about_manual:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_anytime_about_manual:I

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateBtnImage()V
    .locals 0

    .line 295
    invoke-virtual {p0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->updateImage()V

    return-void
.end method

.method protected updateImage()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->_context:Landroid/content/Context;

    instance-of v0, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->_bar_btn:[I

    aget v1, v1, v0

    .line 117
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->existNotifyFlag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v1, p0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->_bar_btn:[I

    add-int/lit8 v0, v0, 0x1

    aget v1, v1, v0

    .line 120
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->setImageResource(I)V

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->invalidate()V

    return-void
.end method
