.class Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScClassListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScClassListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClassListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;Landroid/content/Context;)V
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

    .line 211
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    const/4 p1, 0x0

    .line 212
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 213
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method createClassListCtrl(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)Landroid/view/View;
    .locals 3

    .line 271
    sget v0, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    iget-boolean v2, p2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->selected:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    new-instance v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;-><init>(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    sget v0, Lcom/metamoji/noteanytime/R$id;->textView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 291
    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 294
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 227
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    if-nez p2, :cond_0

    .line 230
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_school_class_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 232
    :cond_0
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    .line 233
    move-object p3, p2

    check-cast p3, Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    .line 234
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 237
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->createClassListCtrl(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method isSelected()Z
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 250
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    iget-boolean v3, v3, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->selected:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public removeSelected()V
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    .line 263
    iget-boolean v2, v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->selected:Z

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 221
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
