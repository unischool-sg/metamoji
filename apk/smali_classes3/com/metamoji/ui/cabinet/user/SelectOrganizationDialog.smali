.class public Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "SelectOrganizationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;,
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;,
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;,
        Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$ViewHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KEY_CURRENT_ID:Ljava/lang/String; = "currentID"

.field private static final KEY_CURRENT_URL:Ljava/lang/String; = "currentURL"


# instance fields
.field private _adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

.field private _btnAdd:Lcom/metamoji/ui/common/UiButton;

.field private _btnDelete:Lcom/metamoji/ui/common/UiButton;

.field private _btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

.field private _btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

.field private _checked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;",
            ">;"
        }
    .end annotation
.end field

.field private _currentID:Ljava/lang/String;

.field private _currentURL:Ljava/lang/String;

.field private _editing:Z

.field private _list:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

.field private _moved:Z

.field private _organizationID:Ljava/lang/String;

.field private _organizationName:Ljava/lang/String;

.field private _serverURL:Ljava/lang/String;

.field public _this:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;


# direct methods
.method static bridge synthetic -$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_checked(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_checked:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_currentID(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_currentURL(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentURL:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_editing(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_editing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_list(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/OrganizationListView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_list:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_moved(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_moved:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_moved(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_moved:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_organizationID(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_organizationID:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_organizationName(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_organizationName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_serverURL(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_serverURL:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteItems(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->deleteItems()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectItem(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->selectItem(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMode(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->setMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_editing:Z

    .line 174
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_moved:Z

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_checked:Ljava/util/Set;

    return-void
.end method

.method private deleteItems()V
    .locals 7

    .line 447
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 449
    const-string v1, "OrganizationIdList"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 452
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_checked:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    .line 454
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    invoke-virtual {v5, v4}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->remove(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->createJSONStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->notifyDataSetChanged()V

    .line 462
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    .line 464
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_checked:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 465
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnDelete:Lcom/metamoji/ui/common/UiButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method private selectItem(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;Z)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_checked:Ljava/util/Set;

    if-eqz p2, :cond_1

    .line 472
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 473
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnDelete:Lcom/metamoji/ui/common/UiButton;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 475
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_checked:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 477
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 478
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_checked:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 479
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnDelete:Lcom/metamoji/ui/common/UiButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setMode(Z)V
    .locals 1

    .line 411
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_editing:Z

    .line 413
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_list:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setSortable(Z)V

    .line 416
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_checked:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_moved:Z

    .line 418
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->notifyDataSetChanged()V

    .line 420
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->updateButton()V

    return-void
.end method

.method private updateButton()V
    .locals 3

    .line 425
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_editing:Z

    .line 434
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 427
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 428
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 429
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnDelete:Lcom/metamoji/ui/common/UiButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void

    .line 434
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 435
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 436
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnDelete:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getOrganizationID()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_organizationID:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationName()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_organizationName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerURL()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_serverURL:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 393
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    if-eqz p1, :cond_0

    .line 195
    const-string v0, "currentID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentID:Ljava/lang/String;

    .line 196
    const-string v0, "currentURL"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentURL:Ljava/lang/String;

    .line 199
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->cabinet_dialog_select_organization:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->mViewId:I

    .line 200
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Select_Organization_Title:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->mDone:Z

    const/4 v1, 0x1

    .line 203
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->mCancel:Z

    .line 204
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->mClose:Z

    .line 206
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 208
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_this:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    .line 210
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 211
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnRight:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$1;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnLeft:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 237
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 239
    sget v0, Lcom/metamoji/noteanytime/R$id;->select_organization_btn_delete:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnDelete:Lcom/metamoji/ui/common/UiButton;

    .line 240
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$2;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->updateButton()V

    .line 250
    sget v0, Lcom/metamoji/noteanytime/R$id;->select_organization_list_view:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_list:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    .line 251
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$DragListener;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 252
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_list:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_editing:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setSortable(Z)V

    .line 253
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_list:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$3;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    sget v0, Lcom/metamoji/noteanytime/R$id;->select_organization_btn_add:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_btnAdd:Lcom/metamoji/ui/common/UiButton;

    .line 290
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    if-nez v0, :cond_2

    .line 339
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    .line 341
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 343
    const-string v1, "OrganizationIdList"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    new-instance v3, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentID:Ljava/lang/String;

    iget-object v8, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentURL:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    :try_start_2
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 363
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 368
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_list:Lcom/metamoji/ui/cabinet/user/OrganizationListView;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OrganizationListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 382
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 402
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 404
    const-string v0, "currentID"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "currentURL"

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCurrentOrganizationID(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentID:Ljava/lang/String;

    return-void
.end method

.method public setCurrentServerURL(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->_currentURL:Ljava/lang/String;

    return-void
.end method
