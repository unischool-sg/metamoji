.class Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScGroupListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScGroupListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;Landroid/content/Context;)V
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

    .line 94
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    const/4 p1, 0x0

    .line 95
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method createGroupListCtrl(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;)Landroid/view/View;
    .locals 3

    .line 125
    sget v0, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v2, 0x0

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    new-instance v2, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter$1;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    sget v0, Lcom/metamoji/noteanytime/R$id;->textView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 110
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    if-nez p2, :cond_0

    .line 113
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_school_class_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    :cond_0
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    .line 116
    move-object p3, p2

    check-cast p3, Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    .line 117
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 120
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->createGroupListCtrl(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 104
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
