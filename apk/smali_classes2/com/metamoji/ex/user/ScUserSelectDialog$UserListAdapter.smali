.class Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScUserSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ex/user/ScUserSelectDialog;
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

.field final synthetic this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ex/user/ScUserSelectDialog;Landroid/content/Context;)V
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

    .line 39
    iput-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_school_user_select_listitem:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 55
    sget p3, Lcom/metamoji/noteanytime/R$id;->labelText:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 56
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 61
    sget p3, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 62
    iget-object v1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    iget-object v1, v1, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 66
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolUserImage:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    const-string v0, "isTeacher"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->school_user_teacher:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 72
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->school_user_student:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->groupNameLabel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    const-string v1, "group"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 83
    new-instance v0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;-><init>(Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;Landroid/widget/CheckBox;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method selectChange(Landroid/widget/CheckBox;Ljava/util/Map;)V
    .locals 2
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

    .line 94
    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    invoke-virtual {v0, p2}, Lcom/metamoji/ex/user/ScUserSelectDialog;->isSelectedUserDic(Ljava/util/Map;)Z

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, v1, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, v1, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/user/ScUserSelectDialog;->updateDoneBtnVisible()V

    .line 105
    iget-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    invoke-virtual {p1}, Lcom/metamoji/ex/user/ScUserSelectDialog;->updateSelectButtonEnable()V

    return-void
.end method
