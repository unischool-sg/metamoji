.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CabinetUserSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserListAdapter"
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

.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;Landroid/content/Context;)V
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

    .line 74
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 76
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_user_select_listitem:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 90
    sget v0, Lcom/metamoji/noteanytime/R$id;->labelText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    const-string v1, "nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 97
    sget v2, Lcom/metamoji/noteanytime/R$id;->loginName:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    const-string v3, "loginName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_1
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 107
    sget v2, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 108
    iget-object v3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v3, v3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 113
    sget v3, Lcom/metamoji/noteanytime/R$id;->schoolUserImage:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 114
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    const-string v4, "isTeacher"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->school_user_teacher:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 119
    :cond_2
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->school_user_student:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_1
    sget v3, Lcom/metamoji/noteanytime/R$id;->selectedLabel:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 125
    const-string/jumbo v4, "userId"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    iget-object v5, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v5, v5, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->alreadyAddedUserIdList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v5, v5, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->alreadyAddedUserIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x4

    .line 128
    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 129
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x9c

    const/16 v2, 0xa0

    const/16 v3, 0x99

    .line 130
    invoke-static {v3, p1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 136
    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 p3, 0x8

    .line 137
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p3, 0x1

    .line 140
    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    .line 141
    new-instance p3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter$1;

    invoke-direct {p3, p0, v2, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter$1;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;Landroid/widget/CheckBox;Ljava/util/Map;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method selectChange(Landroid/widget/CheckBox;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CheckBox;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0, p2}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->isSelectedUserDic(Ljava/util/Map;)Z

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 157
    :cond_0
    iget-boolean v0, v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->multiSelect:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectAllButtonTapInner(Z)V

    .line 161
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    :goto_0
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateDoneBtnVisible()V

    .line 170
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateSelectButtonEnable()V

    return-void
.end method
