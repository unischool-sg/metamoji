.class public Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "UserManagementDialog.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;
.implements Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;,
        Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;
    }
.end annotation


# static fields
.field static final PICK_CONTACT_REQUEST:I = 0x1

.field public static TAG:Ljava/lang/String; = "UserManagement"

.field private static _instance:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;


# instance fields
.field _adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

.field private _alreadyAddressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
            ">;"
        }
    .end annotation
.end field

.field private _groupHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
            ">;"
        }
    .end annotation
.end field

.field private _normalAddressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
            ">;"
        }
    .end annotation
.end field

.field _param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

.field _this:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

.field m_alreadyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_callback:Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;

.field private m_historyTypeGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field m_instructionStringId:I

.field private m_inviteMsgText:Landroid/widget/EditText;

.field private m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

.field private m_mode:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    .line 70
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupList:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_normalAddressList:Ljava/util/ArrayList;

    .line 72
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_alreadyAddressList:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupHistory:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    .line 132
    sput-object p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;ILjava/util/ArrayList;ILcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    .line 70
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupList:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_normalAddressList:Ljava/util/ArrayList;

    .line 72
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_alreadyAddressList:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupHistory:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    .line 137
    iput p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->mTitleId:I

    .line 138
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_callback:Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;

    .line 139
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_alreadyList:Ljava/util/ArrayList;

    .line 140
    iput p4, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_instructionStringId:I

    .line 141
    iput-object p5, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mode:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    return-void
.end method

.method private buildInnerList()V
    .locals 10

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupList:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_normalAddressList:Ljava/util/ArrayList;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_alreadyAddressList:Ljava/util/ArrayList;

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupHistory:Ljava/util/List;

    .line 365
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;->getUserManagementHistory()Ljava/util/List;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 387
    check-cast v2, Ljava/util/Map;

    .line 389
    const-string/jumbo v3, "usermgr_grouptitle"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 390
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 393
    const-string/jumbo v6, "usermgr_addresslist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 394
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 395
    iget-object v8, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_alreadyList:Ljava/util/ArrayList;

    invoke-static {v8, v7}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    .line 396
    new-instance v9, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    invoke-direct {v9}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;-><init>()V

    .line 397
    invoke-virtual {v9, v7, v8}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->initAsAddress(Ljava/lang/String;Z)V

    if-eqz v8, :cond_2

    .line 399
    iget-object v8, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_alreadyAddressList:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->containsIgnoreCase(Ljava/util/List;Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 400
    iget-object v8, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_alreadyAddressList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 403
    :cond_2
    iget-object v8, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_normalAddressList:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->containsIgnoreCase(Ljava/util/List;Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 404
    iget-object v8, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_normalAddressList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_3
    :goto_2
    invoke-static {v5, v7}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 408
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_0

    .line 411
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 412
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 413
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupHistory:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    invoke-direct {v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;-><init>()V

    add-int/lit8 v3, v1, 0x1

    .line 418
    invoke-virtual {v2, v4, v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->initAsGroup(Ljava/lang/String;I)V

    .line 419
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static containsIgnoreCase(Ljava/util/List;Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
            ">;",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
            ")Z"
        }
    .end annotation

    .line 484
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    .line 485
    iget-object v1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 471
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 472
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private getAlreadyAddressList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_alreadyAddressList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->buildInnerList()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_alreadyAddressList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->buildInnerList()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;
    .locals 1

    .line 80
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    .line 84
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    return-object v0
.end method

.method private getNormalAddressList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_normalAddressList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->buildInnerList()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_normalAddressList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public OnDone_UserManagementCallBack(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0, p2}, Lcom/metamoji/ui/common/UiMailAddressEditText;->containsMailAddr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0, p2}, Lcom/metamoji/ui/common/UiMailAddressEditText;->addMailAddr(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public OnManagementItemAddAll()V
    .locals 0

    return-void
.end method

.method public OnManagementItemAddItem(Ljava/lang/String;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->replaceMailAddr(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->rebuildAdapter()V

    return-void
.end method

.method public OnManagementItemAddItemNotFiltering(Ljava/lang/String;)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->addMailAddr(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->rebuildAdapter()V

    return-void
.end method

.method public OnManagementItemOpenGroup(I)V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_groupHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 514
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_alreadyList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, p1}, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;-><init>(Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 515
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "UserGroupDialig"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/cabinet/user/management/UserGroupDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public OnManagementItemRemoveAll()V
    .locals 0

    .line 503
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;->allRemoveUserManagementHistory()V

    .line 504
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->buildInnerList()V

    .line 505
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->rebuildAdapter()V

    return-void
.end method

.method public OnManagementItemRemoveItemNotFiltering(Ljava/lang/String;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->removeMailAddr(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->rebuildAdapter()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 256
    const-string v0, "data1"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 259
    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v0, v4, p1

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 261
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 263
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->addMailAddr(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->rebuildAdapter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 153
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_usermanagement:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->mViewId:I

    .line 154
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_this:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    .line 156
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz p1, :cond_0

    return-object v0

    .line 164
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->InstructionText:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 165
    iget v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_instructionStringId:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    sget p1, Lcom/metamoji/noteanytime/R$id;->MailaddressText:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiMailAddressEditText;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    .line 169
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    sget p1, Lcom/metamoji/noteanytime/R$id;->selectButton:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButton;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v3, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 188
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 190
    new-instance v3, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$2;

    invoke-direct {v3, p0, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$2;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;Landroid/content/Intent;)V

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1, v4}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 210
    :cond_2
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->history_type_radiogroup:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_historyTypeGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 211
    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$3;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$3;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 217
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mode:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    sget-object v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->SHARE_NOTE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    .line 223
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_historyTypeGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    const/16 v4, 0x8

    if-ne p1, v2, :cond_3

    .line 219
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    iget p1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->currentRadioId:I

    invoke-virtual {v3, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 220
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_historyTypeGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->setEnabled(Z)V

    goto :goto_1

    .line 223
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$id;->history_address_btn:I

    invoke-virtual {v3, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 224
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_historyTypeGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v4}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 228
    :goto_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->listview:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 229
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 230
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    if-nez v1, :cond_4

    .line 231
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    .line 232
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->rebuildAdapter()V

    goto :goto_2

    .line 235
    :cond_4
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-direct {v1, v2, p0, v3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    .line 237
    :goto_2
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    sget p1, Lcom/metamoji/noteanytime/R$id;->edittext_invite_msg:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_inviteMsgText:Landroid/widget/EditText;

    .line 241
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mode:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->INVITE_DRIVE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    if-ne p1, v1, :cond_5

    .line 242
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_inviteMsgText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->inviteMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    .line 245
    :cond_5
    sget p1, Lcom/metamoji/noteanytime/R$id;->label_invite:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 246
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_inviteMsgText:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 147
    sput-object p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_instance:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 6

    .line 436
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->validateMailAddress()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 441
    sget p1, Lcom/metamoji/noteanytime/R$string;->UserManagement_Invalid_Mailaddress:I

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->emailAddresses()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 447
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 448
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_alreadyList:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    sget p1, Lcom/metamoji/noteanytime/R$string;->UserManagement_Already_Mailaddress:I

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 457
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mode:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    sget-object v3, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->INVITE_DRIVE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    if-ne v1, v3, :cond_4

    .line 458
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_inviteMsgText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    :cond_4
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_callback:Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;

    invoke-interface {v1, v0, v2}, Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;->OnDone_UserManagementCallBack(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 462
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 426
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiMailAddressEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->address:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_historyTypeGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v1

    iput v1, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->currentRadioId:I

    .line 429
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_inviteMsgText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->inviteMessage:Ljava/lang/String;

    .line 430
    sget-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_param:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public rebuildAdapter()V
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->clear()V

    .line 281
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiMailAddressEditText;->currentText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 283
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;->getUserManagementHistory()Ljava/util/List;

    move-result-object v1

    .line 284
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 285
    check-cast v2, Ljava/util/Map;

    .line 286
    const-string/jumbo v3, "usermgr_addresslist"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 287
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_1

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    move v3, v1

    .line 300
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_historyTypeGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiRadioGroup;->setEnabled(Z)V

    .line 301
    sget v4, Lcom/metamoji/noteanytime/R$id;->history_address_btn:I

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_historyTypeGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v5}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v5

    if-ne v4, v5, :cond_6

    move v1, v2

    .line 302
    :cond_6
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->setFilteing(Z)V

    if-nez v3, :cond_7

    .line 307
    new-instance v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    invoke-direct {v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;-><init>()V

    .line 308
    sget v4, Lcom/metamoji/noteanytime/R$string;->UserManagement_History_Title:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;->MANAGER:Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;

    invoke-virtual {v2, v4, v5}, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->initAsTitle(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/management/UserManagementItem$TitleType;)V

    .line 310
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v4, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->add(Ljava/lang/Object;)V

    :cond_7
    if-eqz v3, :cond_b

    .line 315
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getNormalAddressList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    .line 316
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    iget-object v4, v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiMailAddressEditText;->containsMailAddr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    .line 319
    :cond_9
    iget-object v3, v2, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 320
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    :goto_2
    return-void

    :cond_b
    if-eqz v1, :cond_d

    .line 326
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getNormalAddressList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    .line 327
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->m_mailaddressText:Lcom/metamoji/ui/common/UiMailAddressEditText;

    iget-object v3, v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/common/UiMailAddressEditText;->containsMailAddr(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isChecked:Z

    .line 328
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 330
    :cond_c
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getAlreadyAddressList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->addAll(Ljava/util/Collection;)V

    return-void

    .line 332
    :cond_d
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->getGroupList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method
