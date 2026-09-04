.class public Lcom/metamoji/un/web/BookmarkListDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "BookmarkListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;,
        Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;,
        Lcom/metamoji/un/web/BookmarkListDialog$Item;,
        Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;
    }
.end annotation


# instance fields
.field private _addButton:Lcom/metamoji/ui/common/UiButton;

.field private _addedBookmarkName:Ljava/lang/String;

.field private _addedBookmarkUrl:Ljava/lang/String;

.field private _backButton:Lcom/metamoji/ui/common/UiButtonHeader;

.field private _bookmarkSettings:Lcom/metamoji/un/web/BookmarkSettings;

.field private _currentFolderModel:Lcom/metamoji/df/model/IModel;

.field private _deleteButton:Lcom/metamoji/ui/common/UiButton;

.field private _editButton:Lcom/metamoji/ui/common/UiButtonHeader;

.field private _isEditable:Z

.field private _items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

.field private _list:Landroid/widget/ListView;

.field private _onBookmarkSelected:Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;


# direct methods
.method static bridge synthetic -$$Nest$fget_addedBookmarkName(Lcom/metamoji/un/web/BookmarkListDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_addedBookmarkName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_addedBookmarkUrl(Lcom/metamoji/un/web/BookmarkListDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_addedBookmarkUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_deleteButton(Lcom/metamoji/un/web/BookmarkListDialog;)Lcom/metamoji/ui/common/UiButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_isEditable(Lcom/metamoji/un/web/BookmarkListDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_isEditable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_list(Lcom/metamoji/un/web/BookmarkListDialog;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddBookmark(Lcom/metamoji/un/web/BookmarkListDialog;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/web/BookmarkListDialog;->addBookmark(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteItems(Lcom/metamoji/un/web/BookmarkListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/web/BookmarkListDialog;->deleteItems()V

    return-void
.end method

.method static bridge synthetic -$$Nest$meditItem(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/un/web/BookmarkListDialog$Item;Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/web/BookmarkListDialog;->editItem(Lcom/metamoji/un/web/BookmarkListDialog$Item;Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mitemSelected(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/un/web/BookmarkListDialog$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/web/BookmarkListDialog;->itemSelected(Lcom/metamoji/un/web/BookmarkListDialog$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEditable(Lcom/metamoji/un/web/BookmarkListDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/web/BookmarkListDialog;->setEditable(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_onBookmarkSelected:Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;

    .line 89
    iput-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    return-void
.end method

.method private addBookmark(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_bookmarkSettings:Lcom/metamoji/un/web/BookmarkSettings;

    invoke-virtual {v0}, Lcom/metamoji/un/web/BookmarkSettings;->newBookmarkModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 221
    invoke-static {v0, p1}, Lcom/metamoji/un/web/BookmarkSettings;->setName(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 222
    invoke-static {v0, p2}, Lcom/metamoji/un/web/BookmarkSettings;->setUrl(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_currentFolderModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 225
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    new-instance p2, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p2}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtSystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 227
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    new-instance p2, Lcom/metamoji/un/web/BookmarkListDialog$Item;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/un/web/BookmarkListDialog$Item;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/df/model/IModel;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->add(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private deleteItems()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 277
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    iget-object v4, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/web/BookmarkListDialog$Item;

    .line 279
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/web/BookmarkListDialog$Item;

    .line 283
    iget-object v2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->remove(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v1}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->remove()V

    goto :goto_1

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 288
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    new-instance v1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    return-void
.end method

.method private editItem(Lcom/metamoji/un/web/BookmarkListDialog$Item;Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;)V
    .locals 2

    .line 242
    new-instance v0, Lcom/metamoji/un/web/BookmarkEditDialog;

    invoke-direct {v0}, Lcom/metamoji/un/web/BookmarkEditDialog;-><init>()V

    .line 243
    invoke-virtual {p1}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/web/BookmarkEditDialog;->setBookmarkTitle(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/web/BookmarkEditDialog;->setAddress(Ljava/lang/String;)V

    .line 245
    new-instance v1, Lcom/metamoji/un/web/BookmarkListDialog$5;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/metamoji/un/web/BookmarkListDialog$5;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/un/web/BookmarkEditDialog;Lcom/metamoji/un/web/BookmarkListDialog$Item;Lcom/metamoji/un/web/BookmarkListDialog$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/web/BookmarkEditDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/un/web/BookmarkListDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "BookmarkEdit"

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/web/BookmarkEditDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private itemSelected(Lcom/metamoji/un/web/BookmarkListDialog$Item;)V
    .locals 1

    .line 232
    invoke-virtual {p1}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->isFolder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_onBookmarkSelected:Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;->onBookmarkSelected(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/web/BookmarkListDialog$Item;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/web/BookmarkListDialog;->setCurrentFolder(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private setCurrentFolder(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 193
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_currentFolderModel:Lcom/metamoji/df/model/IModel;

    .line 194
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->clear()V

    .line 195
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 196
    iget-object v1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    new-instance v2, Lcom/metamoji/un/web/BookmarkListDialog$Item;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/un/web/BookmarkListDialog$Item;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;Lcom/metamoji/df/model/IModel;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setEditable(Z)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_addButton:Lcom/metamoji/ui/common/UiButton;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_editButton:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p1, :cond_2

    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 205
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_editButton:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p1, :cond_3

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    :goto_2
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 207
    iput-boolean p1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_isEditable:Z

    .line 208
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 209
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_list:Landroid/widget/ListView;

    if-eqz p1, :cond_4

    const/4 v2, 0x2

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 212
    iget-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    invoke-virtual {p1}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getAddedBookmarkName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_addedBookmarkName:Ljava/lang/String;

    return-object v0
.end method

.method public getAddedBookmarkUrl()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_addedBookmarkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 107
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_bookmark_list:I

    iput v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->mViewId:I

    .line 108
    sget v0, Lcom/metamoji/noteanytime/R$string;->Bookmark_List_Title:I

    iput v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->mBack:Z

    const/4 v1, 0x1

    .line 113
    iput-boolean v1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->mCancel:Z

    .line 115
    iput-boolean v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->mDone:Z

    .line 116
    iput-boolean v0, p0, Lcom/metamoji/un/web/BookmarkListDialog;->mClose:Z

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 120
    sget p2, Lcom/metamoji/noteanytime/R$id;->bookmarklist_add:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_addButton:Lcom/metamoji/ui/common/UiButton;

    .line 121
    new-instance p3, Lcom/metamoji/un/web/BookmarkListDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/un/web/BookmarkListDialog$1;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget p2, Lcom/metamoji/noteanytime/R$id;->bookmarklist_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    .line 143
    new-instance p3, Lcom/metamoji/un/web/BookmarkListDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/un/web/BookmarkListDialog$2;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_backButton:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/un/web/BookmarkListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 152
    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_backButton:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 156
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_editButton:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 157
    sget p3, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 158
    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_editButton:Lcom/metamoji/ui/common/UiButtonHeader;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 159
    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_editButton:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 160
    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_editButton:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance p3, Lcom/metamoji/un/web/BookmarkListDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/un/web/BookmarkListDialog$3;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    if-nez p2, :cond_1

    .line 168
    new-instance p2, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    invoke-virtual {p0}, Lcom/metamoji/un/web/BookmarkListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p0, p3, v0}, Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    .line 171
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p2

    .line 172
    const-string p3, "MMJUnWebBookmarkSettings"

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/web/BookmarkSettings;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_bookmarkSettings:Lcom/metamoji/un/web/BookmarkSettings;

    .line 173
    invoke-virtual {p2}, Lcom/metamoji/un/web/BookmarkSettings;->getRootFolderModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/un/web/BookmarkListDialog;->setCurrentFolder(Lcom/metamoji/df/model/IModel;)V

    .line 175
    sget p2, Lcom/metamoji/noteanytime/R$id;->bookmarklist_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_list:Landroid/widget/ListView;

    .line 176
    iget-object p3, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_items:Lcom/metamoji/un/web/BookmarkListDialog$BookmarkItemAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object p2, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_list:Landroid/widget/ListView;

    new-instance p3, Lcom/metamoji/un/web/BookmarkListDialog$4;

    invoke-direct {p3, p0}, Lcom/metamoji/un/web/BookmarkListDialog$4;-><init>(Lcom/metamoji/un/web/BookmarkListDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/metamoji/un/web/BookmarkListDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public setAddedBookmarkName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_addedBookmarkName:Ljava/lang/String;

    return-void
.end method

.method public setAddedBookmarkUrl(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_addedBookmarkUrl:Ljava/lang/String;

    return-void
.end method

.method public setOnBookmarkSelectedListener(Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/metamoji/un/web/BookmarkListDialog;->_onBookmarkSelected:Lcom/metamoji/un/web/BookmarkListDialog$OnBookmarkSelected;

    return-void
.end method
