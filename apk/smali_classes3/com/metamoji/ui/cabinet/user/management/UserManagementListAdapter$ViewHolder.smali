.class Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserManagementListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private _addressClickListener:Landroid/view/View$OnClickListener;

.field private _btn:Lcom/metamoji/ui/common/UiButton;

.field private _checkBox:Landroid/widget/CheckBox;

.field private _deleteHistory:Landroid/view/View$OnClickListener;

.field private _image:Landroid/widget/ImageView;

.field private _insertAllUsers:Landroid/view/View$OnClickListener;

.field private _item:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

.field private _openGroupListener:Landroid/view/View$OnClickListener;

.field private _text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fget_checkBox(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_item(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_item:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_text(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_text:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget v0, Lcom/metamoji/noteanytime/R$id;->nameText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_text:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    .line 78
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget v0, Lcom/metamoji/noteanytime/R$id;->button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_btn:Lcom/metamoji/ui/common/UiButton;

    .line 94
    sget v0, Lcom/metamoji/noteanytime/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_image:Landroid/widget/ImageView;

    .line 96
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$2;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_openGroupListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_addressClickListener:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_deleteHistory:Landroid/view/View$OnClickListener;

    .line 139
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$5;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$5;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_insertAllUsers:Landroid/view/View$OnClickListener;

    .line 147
    sget v0, Lcom/metamoji/noteanytime/R$id;->scrollView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 149
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$6;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;)V
    .locals 6

    .line 161
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_item:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    .line 164
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_text:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->TITLE:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->ADDRESS:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->-$$Nest$fget_isFiltering(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    iget-boolean v0, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isAlreadyAdded:Z

    .line 172
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 181
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_item:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    iget-boolean v0, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isAlreadyAdded:Z

    .line 186
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_text:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    sget v0, Lcom/metamoji/noteanytime/R$string;->UserManagement_Already_Title:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_text:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 186
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_text:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$1;->$SwitchMap$com$metamoji$ui$cabinet$user$management$UserManagementItem$Type:[I

    iget-object v5, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_text:Landroid/widget/TextView;

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    .line 199
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 195
    :cond_4
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_openGroupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_addressClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :goto_2
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->TITLE:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    .line 218
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_btn:Lcom/metamoji/ui/common/UiButton;

    if-ne v0, v1, :cond_7

    .line 206
    invoke-virtual {v5, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 207
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_titleType:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->MANAGER:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    .line 213
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_btn:Lcom/metamoji/ui/common/UiButton;

    if-ne v0, v1, :cond_6

    .line 209
    sget v0, Lcom/metamoji/noteanytime/R$string;->UserManagement_Delete_History_Title:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_btn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_deleteHistory:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 213
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$string;->UserManagement_Insert_AllUser_Title:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_btn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_insertAllUsers:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 218
    :cond_7
    const-string v0, ""

    invoke-virtual {v5, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_btn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 223
    :goto_3
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_type:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;->GROUP:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$Type;

    .line 227
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_image:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 224
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_openGroupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 227
    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->_image:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
