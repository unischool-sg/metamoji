.class public Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "LibraryStoreViewDialog.java"

# interfaces
.implements Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;
.implements Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;


# static fields
.field static final HEADER_ID:I = 0x64


# instance fields
.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field m_dlgLayout:Landroid/widget/RelativeLayout;

.field m_handler:Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

.field protected m_mainContent:Landroid/widget/LinearLayout;

.field m_storePageDataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnLayoutChangeListener(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method


# virtual methods
.method public addBookmark(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public appendStorePage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_handler:Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->appendStorePage(Ljava/util/List;)V

    return-void
.end method

.method protected backMainViewController()V
    .locals 1

    .line 464
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    .line 467
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->dismiss()V

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected createStoreViewClass(Landroid/content/Context;Ljava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPageView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ui/library/item/LibraryPageView;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;-><init>(Landroid/content/Context;)V

    .line 214
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/library/item/LibraryPageView;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;Ljava/util/Map;II)V

    return-object v0
.end method

.method public deletePart(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected downloadAlertMessageId()I
    .locals 1

    .line 455
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Download_Item_Msg:I

    return v0
.end method

.method public downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/lb/LbConstants$DownloadMode;",
            "Lcom/metamoji/ui/library/item/LibraryStorePageView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 347
    sget-object p3, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$5;->$SwitchMap$com$metamoji$lb$LbConstants$DownloadMode:[I

    invoke-virtual {p2}, Lcom/metamoji/lb/LbConstants$DownloadMode;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto :goto_1

    .line 354
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p3

    .line 355
    invoke-virtual {p3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p3

    const/4 v1, 0x0

    .line 356
    const-string v2, "LibraryStoreViewDialog#downloadProduct"

    if-eqz p3, :cond_4

    iget p3, p3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v3, 0x4

    if-eq p3, v3, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    sget-boolean p3, Lcom/metamoji/ui/library/LibraryConstants;->IS_OVER_PIGEON:Z

    if-eqz p3, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->backMainViewController()V

    .line 399
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_handler:Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {p3, p1, p2, v1, p4}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    .line 404
    invoke-virtual {p3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 408
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 409
    sget v5, Lcom/metamoji/noteanytime/R$string;->LibraryLabelToShowcase:I

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->downloadAlertMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 411
    sget v5, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;

    invoke-direct {v6, p0, p1, p2, p4}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$4;-><init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 419
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 420
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v4, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;Z)V

    .line 421
    invoke-virtual {p1, p3, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 360
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_5

    :goto_1
    return-void

    .line 363
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 364
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 365
    sget p4, Lcom/metamoji/noteanytime/R$string;->LibraryLabelToShowcase:I

    invoke-virtual {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 366
    sget p4, Lcom/metamoji/noteanytime/R$string;->MMJID_LIBRARY_CABINETUSER_MSG:I

    invoke-virtual {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 367
    sget p4, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNIN_LABEL:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance v3, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$3;-><init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;)V

    invoke-virtual {p3, p4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 387
    sget p4, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 388
    new-instance p2, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p2, p3, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;Z)V

    .line 389
    invoke-virtual {p2, p1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public getCustomMenuView()Lcom/metamoji/ui/CustomMenuView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDlgActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getStorePageDataArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_handler:Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->getStorePageDataArray()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopLayer()Landroid/view/ViewGroup;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_dlgLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public lockScroll(Z)V
    .locals 0

    return-void
.end method

.method public longPressPart(Lcom/metamoji/ui/library/item/LibraryPartView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public longPressPart(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public navigationStorePage(I)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_handler:Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->navigationStorePage(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 91
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_libraryview:I

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->mViewId:I

    .line 92
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_LIBRARY_DOWNLOAD_ITEM:I

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->mDone:Z

    .line 94
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->mCancel:Z

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->mBack:Z

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 114
    sget p3, Lcom/metamoji/noteanytime/R$id;->body:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_dlgLayout:Landroid/widget/RelativeLayout;

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/high16 p3, 0x41c80000    # 25.0f

    .line 119
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    float-to-int p3, p3

    .line 120
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_dlgLayout:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, p3, v0, p3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 124
    :cond_1
    new-instance p3, Landroid/widget/ImageButton;

    invoke-direct {p3, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x64

    .line 125
    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 126
    new-instance v3, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$1;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$1;-><init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;)V

    invoke-virtual {p3, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setAdjustViewBounds(Z)V

    .line 133
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->library_cclicense:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 134
    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 135
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 136
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 137
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_dlgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    .line 154
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/metamoji/noteanytime/R$dimen;->bodyPaddingTop:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 p3, 0x9

    .line 156
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p3, 0x3

    .line 157
    invoke-virtual {p2, p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p3, 0xc

    .line 158
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_dlgLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->group_background_down:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 169
    new-instance p2, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog$2;-><init>(Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;)V

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 182
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    :cond_2
    :goto_0
    return-object p1
.end method

.method public onSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public partInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public selectPart(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public selectStorePart(Ljava/lang/String;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_handler:Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->selectStorePart(Ljava/lang/String;)V

    return-void
.end method

.method public setStorePageDataArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_storePageDataArray:Ljava/util/List;

    return-void
.end method

.method public setStorePageViewHandler(Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_handler:Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    return-void
.end method

.method protected showAddonStoreDialog(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V
    .locals 0

    return-void
.end method

.method public showCCLicense()V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showCCLicense(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Resources;)V

    return-void
.end method

.method public startArrangementModeAllPages()V
    .locals 0

    return-void
.end method

.method public stopArrangementModeAllPages()V
    .locals 0

    return-void
.end method

.method tilePages()V
    .locals 4

    .line 200
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_storePageDataArray:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->createStoreViewClass(Landroid/content/Context;Ljava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPageView;

    move-result-object v0

    .line 203
    iput v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_index:I

    .line 204
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->m_mainContent:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
