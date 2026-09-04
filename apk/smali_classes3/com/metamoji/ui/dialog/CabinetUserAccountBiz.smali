.class public Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "CabinetUserAccountBiz.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# static fields
.field private static Key_CompanyId:Ljava/lang/String; = "CompanyId"

.field private static Key_EditEnable:Ljava/lang/String; = "EditEnable"

.field private static Key_Nickname:Ljava/lang/String; = "Nickname"

.field private static Key_Server:Ljava/lang/String; = "Server"

.field private static Key_UserId:Ljava/lang/String; = "UserId"

.field public static TAG:Ljava/lang/String; = "CabinetUserAccountBiz"


# instance fields
.field _this:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

.field private isReadFlg:Z

.field private m_buttonChangePassword:Lcom/metamoji/ui/common/UiButton;

.field private m_buttonForceLogout:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method static bridge synthetic -$$Nest$mupdateUserInfo(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->updateUserInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->isReadFlg:Z

    return-void
.end method

.method private updateUserInfo()V
    .locals 9

    .line 269
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 273
    iget v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 279
    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_company_id:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiTextView;

    .line 280
    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    const-string v6, "%s\uff08%s\uff09"

    const-string v7, "%s (%s)"

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 281
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v5

    sget-object v8, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v5, v8, :cond_1

    .line 282
    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    iget-object v8, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 284
    :cond_1
    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    iget-object v8, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 287
    :cond_2
    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_1
    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_user_id:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiTextView;

    .line 292
    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_user_name:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiTextView;

    .line 296
    iget-object v4, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 297
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    if-eqz v0, :cond_4

    .line 298
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v0

    sget-object v5, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v0, v5, :cond_3

    .line 299
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_SYSTEM_ADMINISTRATOR:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 301
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_SYSTEM_ADMINISTRATOR:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 304
    :cond_4
    :goto_2
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonChangePassword:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 308
    :cond_5
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->isReadFlg:Z

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 331
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$4;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$4;-><init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 333
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    .line 335
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$3;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$3;-><init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 323
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 83
    sget-object v2, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->isReadFlg:Z

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 87
    :goto_0
    sget v3, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_user_account_biz:I

    iput v3, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->mViewId:I

    .line 88
    sget v3, Lcom/metamoji/noteanytime/R$string;->ForBiz_Account:I

    iput v3, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->mTitleId:I

    .line 89
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->mDone:Z

    .line 90
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->mCancel:Z

    .line 91
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->mBack:Z

    .line 92
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->mClose:Z

    .line 93
    iput-object p0, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->_this:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 100
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_cabinetuser_changepassword:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonChangePassword:Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_1

    .line 102
    new-instance v3, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$1;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$1;-><init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;)V

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    const/16 v3, 0x8

    if-nez p2, :cond_2

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppStudentChangePassword:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 125
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonChangePassword:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 130
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_cabinetuser_forcelogout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonForceLogout:Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_4

    .line 132
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 133
    invoke-interface {p2}, Lcom/metamoji/nt/INtEditor;->isClosing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 135
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonForceLogout:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonForceLogout:Lcom/metamoji/ui/common/UiButton;

    new-instance v4, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;-><init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;)V

    invoke-virtual {p2, v4}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_4
    :goto_1
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->isReadFlg:Z

    if-eqz p2, :cond_7

    if-nez p3, :cond_5

    goto :goto_3

    .line 210
    :cond_5
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_server_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 211
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_server:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    .line 212
    sget-object v2, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_Server:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 214
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 217
    :cond_6
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    :goto_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_company_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    .line 222
    sget-object v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_CompanyId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_user_id:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    .line 226
    sget-object v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_UserId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_user_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    .line 230
    sget-object v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_Nickname:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sget-object p2, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_EditEnable:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 233
    iget-object p3, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonChangePassword:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-object p1

    .line 172
    :cond_7
    :goto_3
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p2

    .line 173
    invoke-virtual {p2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 176
    sget p3, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_server_group:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 177
    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_server:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiTextView;

    .line 178
    iget-boolean v5, p2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    if-eqz v5, :cond_9

    .line 179
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/cs/CsCloudServiceContext;->getRestHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 181
    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 184
    :cond_8
    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 187
    :cond_9
    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    :cond_a
    :goto_4
    iget-object p3, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonChangePassword:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    if-eqz p2, :cond_b

    .line 193
    iget p3, p2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    if-ne p3, v0, :cond_b

    goto :goto_6

    :cond_b
    if-eqz p2, :cond_e

    .line 195
    iget p3, p2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_c

    iget p2, p2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_e

    :cond_c
    if-nez v2, :cond_d

    .line 199
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object p2

    .line 200
    sget-object p3, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {p2, p0, p3}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    goto :goto_5

    .line 202
    :cond_d
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object p2

    .line 203
    invoke-virtual {p2, p0}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->setCallbak(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 205
    :goto_5
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    :cond_e
    :goto_6
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 316
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 242
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    sget-object v1, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->TAG:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->isReadFlg:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_server:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiTextView;

    .line 248
    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 250
    sget-object v2, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_Server:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_company_id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiTextView;

    .line 255
    sget-object v2, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_CompanyId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_user_id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiTextView;

    .line 259
    sget-object v2, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_UserId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_account_biz_user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    .line 263
    sget-object v1, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_Nickname:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->Key_EditEnable:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->m_buttonChangePassword:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiButton;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
