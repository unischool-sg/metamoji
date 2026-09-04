.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DriveMemberAdminDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemberListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    const/4 p1, 0x0

    .line 83
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 84
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 91
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_drive_member_admin_listitem:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 96
    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdMemberNoNickname:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_2
    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    const-string/jumbo v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 102
    const-string/jumbo v3, "status"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 103
    const-string v4, "isOwner"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_3

    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v5

    .line 106
    :goto_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v7

    .line 107
    invoke-virtual {v7}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v7

    .line 108
    iget-object v7, v7, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 111
    sget v7, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 119
    invoke-virtual {v7, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v8, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v8, v8, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    new-instance v8, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;

    invoke-direct {v8, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;Ljava/util/Map;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v8, 0x4

    .line 113
    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 114
    invoke-virtual {v7, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    invoke-virtual {v7, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    :goto_2
    sget v8, Lcom/metamoji/noteanytime/R$id;->roleImage:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 136
    const-string v9, "isTeacher"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_6

    .line 138
    sget v9, Lcom/metamoji/noteanytime/R$drawable;->school_user_teacher:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 140
    :cond_6
    sget v9, Lcom/metamoji/noteanytime/R$drawable;->school_user_student:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :goto_3
    sget v8, Lcom/metamoji/noteanytime/R$id;->loginName:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 143
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v9

    .line 144
    const-string v10, "loginName"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 145
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    if-nez v9, :cond_8

    .line 146
    :cond_7
    const-string v10, ""

    .line 148
    :cond_8
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget v8, Lcom/metamoji/noteanytime/R$id;->name:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v3, :cond_9

    .line 154
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    .line 155
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/metamoji/noteanytime/R$string;->MailAddrDlg_TableRowPrefixInviting:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 154
    const-string v3, "[%s] %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 157
    :cond_9
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_4
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$2;

    invoke-direct {v0, p0, v7}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$2;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget v0, Lcom/metamoji/noteanytime/R$id;->scrollView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 168
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 169
    new-instance v7, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;

    invoke-direct {v7, p0, v0, v8}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;Landroid/widget/HorizontalScrollView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 180
    sget v0, Lcom/metamoji/noteanytime/R$id;->typeRadioGroup:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 181
    sget v3, Lcom/metamoji/noteanytime/R$id;->typeRadioGroup_Admin:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/common/UiRadioButton;

    .line 182
    sget v7, Lcom/metamoji/noteanytime/R$id;->typeRadioGroup_Editor:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ui/common/UiRadioButton;

    .line 183
    invoke-virtual {v0, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 184
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->roleToCtrlId(I)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    if-nez v4, :cond_b

    if-eqz v1, :cond_a

    goto :goto_5

    .line 189
    :cond_a
    invoke-virtual {v7, v5}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 190
    new-instance p3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$4;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$4;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;Ljava/util/Map;)V

    invoke-virtual {v0, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_6

    .line 187
    :cond_b
    :goto_5
    invoke-virtual {v7, v6}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    :goto_6
    const/4 p1, 0x2

    if-eqz v4, :cond_c

    if-eq v2, p1, :cond_c

    .line 198
    sget p3, Lcom/metamoji/noteanytime/R$string;->CabinetSdUserTypeOwnew:I

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/metamoji/ui/common/UiRadioButton;->setMainTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 200
    :cond_c
    sget p3, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdDriveAdmin:I

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/metamoji/ui/common/UiRadioButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 204
    :goto_7
    sget p3, Lcom/metamoji/noteanytime/R$id;->labelType:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 205
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_groupId:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v1, :cond_f

    .line 206
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    if-eqz v4, :cond_d

    .line 209
    sget p1, Lcom/metamoji/noteanytime/R$string;->CabinetSdUserTypeOwnew:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2

    :cond_d
    if-ne v2, p1, :cond_e

    .line 211
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdDriveAdmin:I

    goto :goto_8

    :cond_e
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdDriveEditor:I

    :goto_8
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2

    .line 214
    :cond_f
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {v0, v6}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    return-object p2
.end method
