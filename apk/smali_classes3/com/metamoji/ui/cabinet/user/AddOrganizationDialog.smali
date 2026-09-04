.class public Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "AddOrganizationDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHAR_SLASH:Ljava/lang/String; = "/"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_PROCESSABLE:Ljava/lang/String; = "processable"

.field private static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field private _btnServerURL:Lcom/metamoji/ui/common/UiButton;

.field private _lblServerURL:Lcom/metamoji/ui/common/UiTextView;

.field private _organizationID:Ljava/lang/String;

.field private _previousOrganization:Ljava/lang/String;

.field private _processable:Z

.field private _serverURL:Ljava/lang/String;

.field private _txtOrganizationID:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fget_lblServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Lcom/metamoji/ui/common/UiTextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_lblServerURL:Lcom/metamoji/ui/common/UiTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_processable(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_txtOrganizationID(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_txtOrganizationID:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_processable(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddOrganization(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->addOrganization(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallSuperOnDone(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->callSuperOnDone(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_previousOrganization:Ljava/lang/String;

    return-void
.end method

.method private addOrganization(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 310
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 313
    const-string v1, "OrganizationIdList"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 315
    const-string v3, ""

    if-eqz v2, :cond_3

    .line 319
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 322
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 325
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "url"

    .line 326
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_1

    .line 332
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 333
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Msg_Same_Id_And_Url:I

    .line 334
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 332
    invoke-static {v8, v9, v3}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v8

    .line 338
    :try_start_3
    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    move v8, v5

    :goto_1
    if-eqz v8, :cond_0

    .line 344
    iput-object v7, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_previousOrganization:Ljava/lang/String;

    .line 345
    invoke-static {p2, v3, p3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->createJSONStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    .line 354
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_organizationID:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v7

    new-instance v8, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$4;

    invoke-direct {v8, p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$4;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_0
    const/4 v7, 0x1

    .line 368
    iput-boolean v7, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_1
    move-exception v7

    .line 377
    :try_start_4
    invoke-static {v7}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-static {p2, v3, p3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->createJSONStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    .line 389
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_organizationID:Ljava/lang/String;

    .line 392
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$5;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$5;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    return-void

    :catch_2
    move-exception p1

    .line 404
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void

    .line 409
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-static {p2, v3, p3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->createJSONStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    .line 417
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_organizationID:Ljava/lang/String;

    .line 420
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$6;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$6;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private callSuperOnDone(Landroid/view/View;)V
    .locals 0

    .line 440
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public static createJSONStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 510
    const-string v0, ""

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, v0

    .line 514
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"id\" : \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\", \"name\" : \""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\", \"url\" : \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getOrganizationID()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_organizationID:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousOrganization()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_previousOrganization:Ljava/lang/String;

    return-object v0
.end method

.method public getServerURL()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    .line 78
    const-string v1, ""

    if-eqz p1, :cond_0

    .line 80
    const-string v2, "id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_organizationID:Ljava/lang/String;

    .line 81
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    .line 82
    const-string v1, "processable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    goto :goto_0

    .line 86
    :cond_0
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_organizationID:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    .line 88
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    .line 91
    :goto_0
    sget v1, Lcom/metamoji/noteanytime/R$layout;->cabinet_dialog_add_organization:I

    iput v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->mViewId:I

    .line 92
    sget v1, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Title:I

    iput v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->mTitleId:I

    .line 94
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->mDone:Z

    .line 95
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->mCancel:Z

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->mClose:Z

    .line 98
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 101
    sget v0, Lcom/metamoji/noteanytime/R$id;->add_organization_txt_id:I

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_txtOrganizationID:Landroid/widget/EditText;

    .line 104
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_organizationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_txtOrganizationID:Landroid/widget/EditText;

    new-instance v1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$1;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    sget v0, Lcom/metamoji/noteanytime/R$id;->add_organization_btn_url:I

    .line 119
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_btnServerURL:Lcom/metamoji/ui/common/UiButton;

    .line 122
    sget v0, Lcom/metamoji/noteanytime/R$id;->add_organization_lbl_url:I

    .line 123
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_lblServerURL:Lcom/metamoji/ui/common/UiTextView;

    .line 126
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_lblServerURL:Lcom/metamoji/ui/common/UiTextView;

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Url_Comment:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_btnServerURL:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 9

    .line 211
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    .line 219
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_txtOrganizationID:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 225
    sget p1, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Msg_No_Id:I

    invoke-static {p1, v0, v8}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 227
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_txtOrganizationID:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    return-void

    .line 235
    :cond_1
    new-instance v4, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-direct {v4}, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;-><init>()V

    .line 236
    iput-object v6, v4, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    .line 239
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v7

    .line 243
    new-instance v2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$3;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Landroid/view/View;Ljava/lang/String;Lcom/metamoji/cm/CmTaskManager;)V

    invoke-virtual {v7, v2, v8, v8}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 467
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 469
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_txtOrganizationID:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_serverURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v0, "processable"

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->_processable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
