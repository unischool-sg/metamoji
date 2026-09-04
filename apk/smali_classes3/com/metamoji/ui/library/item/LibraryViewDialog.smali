.class public Lcom/metamoji/ui/library/item/LibraryViewDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "LibraryViewDialog.java"

# interfaces
.implements Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;
.implements Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;
.implements Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0xa

.field protected static final DEFAULT_CURRENT_INDEX:I = 0x2

.field public static final EXTENSION_PAGE_INDEX:I = 0x2

.field private static final KEEP_ALIVE:J = 0x1L

.field static final LABEL_FONT_SIZE:F = 16.0f

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field static final PAGER_MARGIN_TOP:I = 0x8

.field static final PAGE_BUTTON_HEIGHT:I = 0x1e

.field public static final PAGE_BUTTON_WIDTH:I = 0x19

.field static final PHONE_MARGIN_BOTTOM:I = 0x8

.field public static final TABLET_MARGIN_BOTTOM:I = 0x10

.field static final TAB_MARGIN_BOTTOM:I = 0x8

.field private static s_PoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static s_thread_pool_executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field _editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field protected _footer:Landroid/widget/RelativeLayout;

.field private _isSheetInfoDocIdNoteTemplate:Z

.field protected _noteTemplatePageView:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;

.field private _rootView:Landroid/view/ViewGroup;

.field private _sheetInfoDocId:Ljava/lang/String;

.field private _sheetInfoDriveId:Ljava/lang/String;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected m_context:Lcom/metamoji/cm/CmContext;

.field m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

.field protected m_detailMessage:Landroid/widget/TextView;

.field m_dlgLayout:Landroid/widget/RelativeLayout;

.field m_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field m_downloadPanel:Landroid/widget/LinearLayout;

.field m_downloadPanelVisibility:I

.field m_downloadProgressBar:Landroid/widget/ProgressBar;

.field m_downloadProgressBarIsIndeterminate:Z

.field m_downloadProgressBarMax:I

.field m_downloadProgressBarProgress:I

.field m_downloadTask:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

.field m_driveId:Ljava/lang/String;

.field private m_hasDownload:Z

.field protected m_imgView:Landroid/widget/ImageView;

.field m_isArrangementMode:Z

.field protected m_libraryPageDataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_nextBtn:Lcom/metamoji/ui/common/UiImageButton;

.field protected m_pagerBtn:Lcom/metamoji/ui/library/item/LibraryPagerButton;

.field m_prevBtn:Lcom/metamoji/ui/common/UiImageButton;

.field m_scrollContent:Landroid/widget/LinearLayout;

.field protected m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

.field m_storePageDataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected m_tabGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field private m_titleId:Ljava/lang/Integer;

.field protected m_titleLabel:Landroid/widget/TextView;

.field private m_toStoreButton:Lcom/metamoji/ui/common/UiButton;

.field private m_useStore:Z

.field m_visiblePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7u03gev_GzYuuVJiksyeEpTIhkQ(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->lambda$onNoteTemplateItemLongClicked$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hu4KbDJ7RezLulSKdn8eaqST1Po(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->lambda$onNoteTemplateItemLongClicked$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fget_isSheetInfoDocIdNoteTemplate(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_isSheetInfoDocIdNoteTemplate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_rootView(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_sheetInfoDocId(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_sheetInfoDocId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_sheetInfoDriveId(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_sheetInfoDriveId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnLayoutChangeListener(Lcom/metamoji/ui/library/item/LibraryViewDialog;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_sheetInfoDocId(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_sheetInfoDocId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_sheetInfoDriveId(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_sheetInfoDriveId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$monEditBtnTapped(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->onEditBtnTapped()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNoteTemplateGroupCheckedChanged(Lcom/metamoji/ui/library/item/LibraryViewDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->onNoteTemplateGroupCheckedChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSheetInfoView(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showSheetInfoView(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/16 v0, 0x8

    .line 179
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanelVisibility:I

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_driveId:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->loadPageData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->init(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/16 v0, 0x8

    .line 179
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanelVisibility:I

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_driveId:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 240
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->init(Ljava/util/List;)V

    return-void
.end method

.method private static clearThumbnailThreadPool()V
    .locals 2

    .line 214
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_PoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :catch_0
    sput-object v1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_PoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 221
    :cond_0
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_thread_pool_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 223
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :catch_1
    sput-object v1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_thread_pool_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    return-void
.end method

.method public static getThumbnailThreadPoolExecutor()Ljava/util/concurrent/Executor;
    .locals 8

    .line 199
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_PoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_PoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 202
    :cond_0
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_thread_pool_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 203
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_PoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    const/16 v2, 0xa

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_thread_pool_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 205
    :cond_1
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->s_thread_pool_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic lambda$onNoteTemplateItemLongClicked$0(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1224
    check-cast p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showSheetInfoView(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$onNoteTemplateItemLongClicked$1(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    if-eqz p3, :cond_0

    .line 1223
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onNoteTemplateItemLongClicked$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1218
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1219
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryViewDialog$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    invoke-static {p0, p2, p1, v0, v1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->inputAndVerifyPassword(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    return-void

    .line 1230
    :cond_0
    invoke-direct {p0, p2, p3, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showSheetInfoView(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onNoteTemplateItemLongClicked$3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1210
    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->quickViewDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1215
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtDocument;->getPasswordHash(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v1

    .line 1216
    sget-object v2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v0, v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 1217
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/library/item/LibraryViewDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onEditBtnTapped()V
    .locals 0

    .line 564
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->startArrangementModeAllPages()V

    return-void
.end method

.method private onNoteTemplateGroupCheckedChanged(I)V
    .locals 4

    .line 2529
    sget v0, Lcom/metamoji/noteanytime/R$id;->sheetButton:I

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, p1, :cond_2

    .line 2530
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->setVisibility(I)V

    .line 2532
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_noteTemplatePageView:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->setVisibility(I)V

    .line 2534
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_toStoreButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_1

    .line 2535
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useStore()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 2538
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p1, :cond_5

    .line 2539
    invoke-virtual {p1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    return-void

    .line 2544
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_noteTemplatePageView:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;

    invoke-virtual {p1, v3}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->setVisibility(I)V

    .line 2545
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2546
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_noteTemplatePageView:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;

    invoke-virtual {v0, p1, p0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->loadData(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    .line 2547
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->setVisibility(I)V

    .line 2549
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_toStoreButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_4

    .line 2550
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useStore()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 2553
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->stopArrangementModeAllPages()V

    .line 2555
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p1, :cond_5

    .line 2556
    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private onNoteTemplateItemLongClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1208
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static showCCLicense(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Resources;)V
    .locals 2

    .line 286
    const-string v0, "LibraryViewDialog#showCCLicense"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 292
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_CCLicense_Url:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showSheetInfoView(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1271
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1273
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$7;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$7;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1280
    new-instance v1, Lcom/metamoji/nt/NtSheetInfoView;

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/metamoji/nt/NtSheetInfoView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1282
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ui/library/item/LibraryViewDialog$8;

    invoke-direct {v4, p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$8;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Landroid/widget/FrameLayout;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtSheetInfoView;->setGestureDetector(Landroid/view/GestureDetector;)V

    const v2, 0x43fc8000    # 505.0f

    .line 1293
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    .line 1298
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1299
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1300
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    .line 1301
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1303
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 1304
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1305
    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1307
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_rootView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_sheetInfoDocId:Ljava/lang/String;

    .line 1312
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_sheetInfoDriveId:Ljava/lang/String;

    .line 1313
    iput-boolean p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_isSheetInfoDocIdNoteTemplate:Z

    return-void
.end method


# virtual methods
.method public addBookmark(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1349
    const-string v0, "entityId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1350
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->findAddPage(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1351
    const-string v2, "isExist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1357
    :cond_0
    const-string v2, "appendPageIndex"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1359
    const-string v3, "appendPartsArray"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1362
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageViewOfIndex(I)Lcom/metamoji/ui/library/item/LibraryPageView;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1367
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3, p1, v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;Z)V

    .line 1371
    :cond_1
    invoke-virtual {p0, v0, v2, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->addBookmarkAfterExec(Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected addBookmarkAfterExec(Ljava/lang/String;ZZ)V
    .locals 1

    .line 1381
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->updateItemBookmarked(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    .line 1387
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    sget-object p3, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/lb/LbLibraryItemManager;->savePageDataArray(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)V

    :cond_0
    return-void
.end method

.method afterCurrentChanged()V
    .locals 2

    .line 976
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getCurrentIndex()I

    move-result v0

    .line 977
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_tabGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v1, :cond_0

    .line 978
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_pagerBtn:Lcom/metamoji/ui/library/item/LibraryPagerButton;

    if-eqz v1, :cond_1

    .line 983
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/library/item/LibraryPagerButton;->setCurrentIndex(I)V

    .line 987
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->displayPageBtn()V

    .line 990
    sget-object v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$19;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    return-void

    .line 993
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->stopArrangementModeAllPages()V

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

    .line 2327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_storePageDataArray:Ljava/util/List;

    .line 2330
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method checkBookmarked(Ljava/lang/String;)Z
    .locals 4

    .line 837
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 839
    check-cast v1, Ljava/util/Map;

    .line 842
    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    const-string/jumbo v3, "type"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/lb/LbConstants$LbPageType;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 848
    :cond_1
    const-string v2, "partsArray"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 849
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 851
    check-cast v2, Ljava/util/Map;

    .line 853
    const-string v3, "entityId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected checkSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected completedAlertMessageFormat(Z)Ljava/lang/String;
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1979
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Purchased_Item_Product:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download_Item_WithNum:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method contentSizeForPagingScrollView()I
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected createLibraryStoreViewDialog()Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;
    .locals 1

    .line 619
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;-><init>()V

    return-object v0
.end method

.method protected createViewClass(Landroid/content/Context;ZLjava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPageView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ui/library/item/LibraryPageView;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 608
    new-instance p2, Lcom/metamoji/ui/library/item/LibraryStorePageView;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, p2

    .line 609
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v4

    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/library/item/LibraryPageView;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;Ljava/util/Map;II)V

    return-object v0
.end method

.method protected createViewExClass(Landroid/content/Context;Ljava/util/List;)Lcom/metamoji/ui/library/item/LibraryPageViewEx;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/metamoji/ui/library/item/LibraryPageViewEx;"
        }
    .end annotation

    .line 2250
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;-><init>(Landroid/content/Context;)V

    .line 2251
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/List;II)V

    return-object v0
.end method

.method protected delayMillSec()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method protected deleteItem(Ljava/lang/String;)V
    .locals 1

    .line 1491
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->deleteItem(Ljava/lang/String;)V

    return-void
.end method

.method public deletePart(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V
    .locals 2

    .line 1454
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$19;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    .line 1463
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->deleteItem(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->removeHistory(Ljava/lang/String;)V

    .line 1469
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->removeBookmark(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 1457
    :cond_1
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->deleteMyItem(Ljava/lang/String;)V

    return-void

    .line 1476
    :cond_2
    invoke-virtual {p0, p2, v1, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->addBookmarkAfterExec(Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected dialogTitleId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 643
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Tab_Item:I

    return p1

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_ContextMenu_PartInfo:I

    return p1
.end method

.method displayDownloadView()V
    .locals 3

    const/4 v0, 0x1

    .line 1679
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setModal(Z)V

    const/4 v1, 0x0

    .line 1681
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setCancelable(Z)V

    .line 1684
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1687
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void
.end method

.method displayPageBtn()V
    .locals 6

    .line 676
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->updateTextLabel()V

    .line 679
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getCurrentIndex()I

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_prevBtn:Lcom/metamoji/ui/common/UiImageButton;

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 681
    invoke-virtual {v1, v5}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    .line 682
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_prevBtn:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_nextBtn:Lcom/metamoji/ui/common/UiImageButton;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 685
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_nextBtn:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_nextBtn:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method protected doDownload(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/lb/LbConstants$DownloadMode;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 1721
    const-string v9, "category"

    const-string v10, "appendPartsArray"

    const-string v11, "appendPageIndex"

    const-string v0, "p_id"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1722
    const-string v2, "productURL"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1723
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->downloadProductDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1727
    const-string/jumbo v3, "tempDir"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1728
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 1733
    :goto_0
    const-string v5, "jsonDic"

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v20, v3

    goto/16 :goto_d

    :cond_2
    :goto_1
    const/4 v6, 0x1

    .line 1734
    :goto_2
    const-string v14, ""

    const-string v8, "errorMessage"

    if-nez v6, :cond_e

    :try_start_1
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto/16 :goto_a

    .line 1741
    :cond_3
    sget-object v6, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1, v6, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->findAddPage(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1743
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1744
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1745
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1748
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v15

    .line 1749
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1750
    new-instance v8, Lcom/metamoji/ui/library/item/LibraryViewDialog$10;

    invoke-direct {v8, v1, v6}, Lcom/metamoji/ui/library/item/LibraryViewDialog$10;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;I)V

    invoke-virtual {v15, v8}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1758
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1761
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v8

    .line 1763
    const-string v5, "p_parts"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1764
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v0, 0x0

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1765
    check-cast v5, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1769
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->delayMillSec()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    const/16 v17, 0x1

    .line 1773
    :try_start_3
    const-string v13, "entityId"

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1777
    sget-object v12, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1, v12, v13}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->findAddPage(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v19, v3

    .line 1780
    :try_start_4
    const-string v3, "isExist"

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v20, v3

    .line 1784
    sget-object v3, Lcom/metamoji/lb/LbConstants$DownloadMode;->Trial:Lcom/metamoji/lb/LbConstants$DownloadMode;

    if-ne v7, v3, :cond_4

    move/from16 v3, v17

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1, v13, v5, v3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->isNeedUpdate(Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NtLibraryViewDialog] already exist item! entityId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    move-object/from16 v3, v19

    goto :goto_3

    .line 1789
    :cond_5
    const-string v3, "existPageIndex"

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v21, v3

    .line 1790
    const-string v3, "existPartsArray"

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v22, v3

    .line 1791
    const-string v3, "existPartIndex"

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1792
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    const-string v3, "[NtLibraryViewDialog] update exist item! entityId="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    move-object/from16 v12, v21

    move-object/from16 v21, v10

    move-object/from16 v10, v22

    move-object/from16 v22, v12

    move/from16 v12, v23

    goto :goto_5

    :cond_6
    move/from16 v20, v3

    .line 1794
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1795
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object/from16 v22, v3

    move-object/from16 v21, v10

    move-object v10, v12

    const/4 v12, 0x0

    .line 1798
    :goto_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 1800
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1801
    new-instance v3, Lcom/metamoji/ui/library/item/LibraryViewDialog$11;

    invoke-direct {v3, v1, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$11;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;I)V

    invoke-virtual {v15, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1807
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_7
    move-object v3, v5

    move-object v5, v13

    move v13, v2

    move-object/from16 v2, v19

    move/from16 v19, v6

    move/from16 v6, v20

    .line 1811
    :try_start_5
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->registerDounloadContent(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZLcom/metamoji/lb/LbConstants$DownloadMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v20, v2

    move v3, v6

    if-nez v5, :cond_8

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move v2, v13

    move/from16 v6, v19

    :goto_6
    move-object/from16 v3, v20

    move-object/from16 v10, v21

    goto/16 :goto_3

    :cond_8
    if-eqz v3, :cond_9

    .line 1820
    :try_start_6
    invoke-interface {v10, v12, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    goto :goto_9

    .line 1823
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_b

    .line 1824
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1825
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v14}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 1826
    invoke-interface {v10, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 v1, v17

    goto :goto_8

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_c

    .line 1832
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move v6, v1

    :goto_9
    add-int/lit8 v10, v0, 0x1

    .line 1840
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v1, p0

    move v4, v12

    move/from16 v2, v19

    :try_start_7
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/library/item/LibraryViewDialog$12;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;IZILjava/util/Map;Z)V

    invoke-virtual {v15, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    move-object/from16 v4, p1

    move v6, v2

    move v0, v10

    move v2, v13

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v20, v2

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v20, v19

    goto :goto_d

    :cond_d
    move-object/from16 v20, v3

    const/16 v17, 0x1

    .line 1861
    invoke-virtual {v1, v7, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showCompletedMessage(Lcom/metamoji/lb/LbConstants$DownloadMode;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1864
    invoke-static/range {v20 .. v20}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v17

    :cond_e
    :goto_a
    move-object/from16 v20, v3

    if-eqz v6, :cond_f

    :goto_b
    const/4 v0, 0x0

    goto :goto_c

    .line 1736
    :cond_f
    :try_start_8
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    goto :goto_b

    :goto_c
    invoke-virtual {v1, v7, v0, v14}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showCompletedMessage(Lcom/metamoji/lb/LbConstants$DownloadMode;ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1864
    invoke-static/range {v20 .. v20}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    :catchall_4
    move-exception v0

    :goto_d
    invoke-static/range {v20 .. v20}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1865
    throw v0
.end method

.method public downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V
    .locals 0
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

    .line 2385
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->downloadProductExec(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V

    return-void
.end method

.method protected downloadProductDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1875
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/metamoji/lb/LbLibraryItemManager;->downloadProduct(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected downloadProductExec(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V
    .locals 0
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

    .line 1636
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->displayDownloadView()V

    .line 1640
    :try_start_0
    new-instance p3, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Ljava/lang/String;)V

    .line 1665
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p3, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1668
    :catch_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->hideDownloadView()V

    return-void
.end method

.method protected findAddPage(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 883
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->maxDisplayCount()I

    move-result v0

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    .line 886
    :goto_0
    iget-object v6, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "isExist"

    if-ge v5, v6, :cond_4

    .line 889
    iget-object v6, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 890
    const-string/jumbo v8, "type"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/lb/LbConstants$LbPageType;

    if-eq p1, v8, :cond_0

    goto :goto_2

    .line 895
    :cond_0
    const-string v8, "partsArray"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-gez v2, :cond_1

    .line 897
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v0, :cond_1

    move v2, v5

    move-object v3, v6

    :cond_1
    if-eqz p2, :cond_3

    .line 906
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v4

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 907
    check-cast v10, Ljava/util/Map;

    .line 909
    const-string v11, "entityId"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 p1, 0x1

    .line 910
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    invoke-virtual {p0, v5}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageIndexFromPageDataArrayIndex(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "existPageIndex"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string p1, "existPartsArray"

    invoke-interface {v1, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string p1, "existPartIndex"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 921
    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageIndexFromPageDataArrayIndex(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "appendPageIndex"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string p1, "appendPartsArray"

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected getCurrentIndex()I
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getCustomMenuView()Lcom/metamoji/ui/CustomMenuView;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    return-object v0
.end method

.method public getDlgActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getPageCount()I
    .locals 1

    .line 2286
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
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

    .line 2340
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_storePageDataArray:Ljava/util/List;

    return-object v0
.end method

.method protected getTabButtonStringId()I
    .locals 1

    .line 652
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Tab_Item:I

    return v0
.end method

.method public getTopLayer()Landroid/view/ViewGroup;
    .locals 1

    .line 2425
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_dlgLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected hasDownload()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_hasDownload:Z

    return v0
.end method

.method hiddenPageBtn()V
    .locals 4

    .line 662
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_prevBtn:Lcom/metamoji/ui/common/UiImageButton;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_nextBtn:Lcom/metamoji/ui/common/UiImageButton;

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method hideDownloadView()V
    .locals 3

    const/4 v0, 0x0

    .line 1697
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadTask:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    const/4 v0, 0x0

    .line 1698
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarMax:I

    .line 1699
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarProgress:I

    .line 1702
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 1705
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 1708
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setCancelable(Z)V

    .line 1710
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setModal(Z)V

    return-void
.end method

.method protected init(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    .line 245
    invoke-static {}, Lcom/metamoji/ui/library/LibraryConstants;->getInstance()Lcom/metamoji/ui/library/LibraryConstants;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/library/LibraryConstants;->hasDownload(Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_hasDownload:Z

    .line 246
    invoke-static {}, Lcom/metamoji/ui/library/LibraryConstants;->getInstance()Lcom/metamoji/ui/library/LibraryConstants;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/library/LibraryConstants;->useStore()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_useStore:Z

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_titleId:Ljava/lang/Integer;

    return-void
.end method

.method protected isDisplayingPageForIndex(I)Z
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_visiblePages:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 629
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/library/item/LibraryPageView;

    .line 630
    iget v2, v2, Lcom/metamoji/ui/library/item/LibraryPageView;->m_index:I

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected isNeedUpdate(Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .line 1891
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/lb/LbLibraryItemManager;->needUpdate(Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result p1

    return p1
.end method

.method protected loadPageData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 255
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lb/LbLibraryItemManager;->loadPageDataArray()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lockScroll(Z)V
    .locals 1

    .line 2418
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->enableScroll(Z)V

    return-void
.end method

.method public longPressPart(Lcom/metamoji/ui/library/item/LibraryPartView;)Z
    .locals 3

    .line 1176
    instance-of v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1177
    instance-of v0, p1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;

    const-string v2, "entityId"

    if-eqz v0, :cond_0

    .line 1178
    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    .line 1179
    const-string v0, "driveId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1180
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1182
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->onNoteTemplateItemLongClicked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :cond_0
    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    .line 1186
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1188
    invoke-direct {p0, v0, p1, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showSheetInfoView(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public longPressPart(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1162
    instance-of v0, p0, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1163
    const-string v0, "entityId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1165
    invoke-direct {p0, v0, p1, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showSheetInfoView(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected maxDisplayCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public navigationStorePage(I)V
    .locals 3

    .line 2350
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2352
    const-string v1, "LibraryStoreViewDialog_Sub"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2357
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_storePageDataArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2362
    :cond_1
    new-instance v2, Lcom/metamoji/ui/library/item/LibraryViewDialog$16;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$16;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/Map;)V

    .line 2364
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->createLibraryStoreViewDialog()Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;

    move-result-object p1

    .line 2365
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->setStorePageViewHandler(Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;)V

    .line 2366
    invoke-virtual {p1, v2}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->setStorePageDataArray(Ljava/util/List;)V

    .line 2367
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/library/item/LibraryStoreViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected needActivityDisposeByActivityRecover()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChangeCurrentIndex()V
    .locals 0

    .line 947
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->hiddenPageBtn()V

    .line 952
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->afterCurrentChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 310
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_libraryview2:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_libraryview2_phone:I

    :goto_0
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->mViewId:I

    .line 313
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_titleId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->mTitleId:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->dialogTitleId(Z)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->mTitleId:I

    .line 320
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->needActivityDisposeByActivityRecover()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    .line 333
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->libraryCustomMenuView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/CustomMenuView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    .line 334
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 335
    iget-boolean p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_isArrangementMode:Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    move p3, v1

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 336
    sget p2, Lcom/metamoji/noteanytime/R$id;->downloadPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanel:Landroid/widget/LinearLayout;

    .line 337
    sget p2, Lcom/metamoji/noteanytime/R$id;->progressBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const p3, 0x1020002

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_rootView:Landroid/view/ViewGroup;

    .line 340
    iget p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanelVisibility:I

    if-nez p2, :cond_4

    .line 341
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    iget p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarMax:I

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 343
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    iget p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarProgress:I

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 344
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    iget-boolean p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarIsIndeterminate:Z

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 348
    :cond_4
    invoke-static {}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->clearThumbnailThreadPool()V

    .line 360
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 363
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useArrangementMode()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 364
    new-instance p3, Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-direct {p3, p2}, Lcom/metamoji/ui/common/UiButtonHeader;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 365
    sget v2, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    invoke-virtual {p3, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 366
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p3, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 367
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance v2, Lcom/metamoji/ui/library/item/LibraryViewDialog$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$1;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    invoke-virtual {p3, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    iget-boolean v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_isArrangementMode:Z

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    invoke-virtual {p3, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 375
    sget p3, Lcom/metamoji/noteanytime/R$id;->dlg_right_button_base:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 376
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 379
    :cond_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_visiblePages:Ljava/util/List;

    .line 383
    sget p3, Lcom/metamoji/noteanytime/R$id;->body:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_dlgLayout:Landroid/widget/RelativeLayout;

    .line 386
    sget p3, Lcom/metamoji/noteanytime/R$id;->storeButton:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_toStoreButton:Lcom/metamoji/ui/common/UiButton;

    .line 387
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useStore()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 388
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_toStoreButton:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$2;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    invoke-virtual {p3, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    :cond_7
    sget p3, Lcom/metamoji/noteanytime/R$id;->tabContainer:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 412
    new-instance v2, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-direct {v2, p2, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    iput-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    .line 413
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->enableScroll(Z)V

    .line 415
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollContent:Landroid/widget/LinearLayout;

    .line 416
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 417
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->contentSizeForPagingScrollView()I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->group_background_down:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->setBackgroundResource(I)V

    .line 423
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    sget v2, Lcom/metamoji/noteanytime/R$id;->noteTemplateTabGroup:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 428
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useNoteTemplate()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 429
    sget v3, Lcom/metamoji/noteanytime/R$id;->sheetButton:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    .line 430
    new-instance v3, Lcom/metamoji/ui/library/item/LibraryViewDialog$3;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$3;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 435
    new-instance v3, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_noteTemplatePageView:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;

    .line 436
    invoke-virtual {v3, v0}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_noteTemplatePageView:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->group_background_down:I

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;->setBackgroundResource(I)V

    .line 438
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_noteTemplatePageView:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePageViewEx;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useNoteTemplate()Z

    move-result p3

    const/16 v0, 0x8

    if-eqz p3, :cond_9

    move p3, v1

    goto :goto_4

    :cond_9
    move p3, v0

    :goto_4
    invoke-virtual {v2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setVisibility(I)V

    .line 461
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_toStoreButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useStore()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_5

    :cond_a
    move v2, v0

    :goto_5
    invoke-virtual {p3, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 463
    :cond_b
    sget p3, Lcom/metamoji/noteanytime/R$id;->header:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 464
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useNoteTemplate()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useStore()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    move v0, v1

    :cond_d
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 467
    sget p3, Lcom/metamoji/noteanytime/R$id;->footer:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_footer:Landroid/widget/RelativeLayout;

    .line 469
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setupFooter(Landroid/content/Context;)V

    .line 470
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_footer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 473
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_sheetInfoDocId:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 475
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_rootView:Landroid/view/ViewGroup;

    new-instance p3, Lcom/metamoji/ui/library/item/LibraryViewDialog$4;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$4;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 484
    :cond_e
    new-instance p2, Lcom/metamoji/ui/library/item/LibraryViewDialog$5;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$5;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 497
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 500
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 523
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 526
    invoke-static {}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->clearThumbnailThreadPool()V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 559
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->stopArrangementModeAllPages()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadPanelVisibility:I

    .line 516
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1318
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->checkSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->dismiss()V

    .line 1322
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->processSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected pageDataArrayArrayForPageViewEx()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 2261
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->hasDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2262
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$14;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$14;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    return-object v0

    .line 2269
    :cond_0
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$15;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$15;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    return-object v0
.end method

.method protected pageDataArrayIndexFromPageIndex(I)I
    .locals 1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    return p1
.end method

.method protected pageIndexFromPageDataArrayIndex(I)I
    .locals 2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    return v0

    :cond_1
    add-int/2addr p1, v0

    return p1
.end method

.method public pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 1

    if-ltz p1, :cond_2

    .line 815
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getPageCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageDataArrayIndexFromPageIndex(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 822
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_EXTENSION:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 827
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    .line 816
    :cond_2
    :goto_0
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_UNKNOWN:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1
.end method

.method protected pageViewOfIndex(I)Lcom/metamoji/ui/library/item/LibraryPageView;
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_visiblePages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/library/item/LibraryPageView;

    .line 802
    iget v2, v1, Lcom/metamoji/ui/library/item/LibraryPageView;->m_index:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public partInfo(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1552
    const-string v0, "entityId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1553
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/lb/LbLibraryItemManager;->itemMetaData(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1559
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->partInfoInner(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public partInfoDlgDone(ZLcom/metamoji/ui/library/item/LibraryInfoDialog;ZZ)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 1594
    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->isBookmarked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1596
    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->getPartDic()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->addBookmark(Ljava/util/Map;)V

    goto :goto_0

    .line 1599
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->getEntityId()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->removeBookmark(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 1606
    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->getEntityId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->updateItemName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 1611
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setModal(Z)V

    return-void
.end method

.method protected partInfoInner(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1568
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1570
    const-string v1, "LibraryViewDialog#partInfoInner"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 1575
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setModal(Z)V

    .line 1577
    const-string v2, "imagePath"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 1579
    new-instance v3, Lcom/metamoji/ui/library/item/LibraryInfoDialog;

    invoke-direct {v3}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;-><init>()V

    const/4 v2, 0x0

    .line 1580
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->dialogTitleId(Z)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->checkBookmarked(Ljava/lang/String;)Z

    move-result v10

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    invoke-virtual/range {v3 .. v10}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->init(Lcom/metamoji/ui/library/item/LibraryViewDialog;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1581
    invoke-virtual {v3, v0, v1}, Lcom/metamoji/ui/library/item/LibraryInfoDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected processSelectedNoteTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected registerDounloadContent(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZLcom/metamoji/lb/LbConstants$DownloadMode;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/metamoji/lb/LbConstants$DownloadMode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1901
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    .line 1902
    new-instance v1, Ljava/io/File;

    const-string v2, "partFile"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1903
    sget-object p1, Lcom/metamoji/lb/LbConstants$DownloadMode;->Trial:Lcom/metamoji/lb/LbConstants$DownloadMode;

    if-ne p6, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, p1, p7}, Lcom/metamoji/lb/LbLibraryItemManager;->createLibraryDownloadItemMetaData(Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    move-result-object p1

    .line 1904
    invoke-virtual {v0, v1, p1, p4, p5}, Lcom/metamoji/lb/LbLibraryItemManager;->registerLibraryItemFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1914
    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1909
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[NtLibraryViewDialog] item regist FAILED! entityId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method removeBookmark(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v0

    move v6, v5

    move-object v3, v1

    move v4, v2

    .line 1404
    :goto_0
    iget-object v7, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 1407
    iget-object v7, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1408
    const-string/jumbo v8, "type"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 1409
    sget-object v9, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-eq v9, v8, :cond_0

    goto :goto_1

    :cond_0
    if-ne v6, v0, :cond_1

    move v6, v4

    :cond_1
    if-ne v5, v0, :cond_3

    .line 1419
    const-string v8, "partsArray"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1420
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1421
    check-cast v9, Ljava/util/Map;

    .line 1422
    const-string v10, "entityId"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v5, v4

    move-object v3, v7

    move-object v1, v9

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 1435
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1439
    :cond_5
    invoke-virtual {p0, v5}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageViewOfIndex(I)Lcom/metamoji/ui/library/item/LibraryPageView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1441
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->removePartViewWithEntityId(Ljava/lang/String;)V

    .line 1445
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->addBookmarkAfterExec(Ljava/lang/String;ZZ)V

    return-void
.end method

.method removeHistory(Ljava/lang/String;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    move-object v2, v1

    .line 1506
    :goto_0
    iget-object v5, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1508
    iget-object v5, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1509
    const-string/jumbo v6, "type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 1510
    sget-object v7, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-eq v7, v6, :cond_0

    goto :goto_1

    :cond_0
    if-ne v4, v0, :cond_2

    .line 1516
    const-string v6, "partsArray"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1517
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1518
    check-cast v7, Ljava/util/Map;

    .line 1520
    const-string v8, "entityId"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v3

    move-object v1, v5

    move-object v2, v7

    :cond_2
    if-le v4, v0, :cond_3

    .line 1531
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1537
    :cond_4
    :goto_2
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageViewOfIndex(I)Lcom/metamoji/ui/library/item/LibraryPageView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1539
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->removePartViewWithEntityId(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected savePageDataArray()V
    .locals 2

    .line 1059
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->savePageDataArray(Ljava/util/List;)V

    return-void
.end method

.method public selectPart(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1074
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method protected selectPartInner(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1135
    const-string v0, "entityId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tapped!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1139
    const-string v1, "NOT_REGIST"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 1140
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1142
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 1143
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->systemOptionKeyCurrentPage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getCurrentIndex()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 1145
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->systemOptionKeyLastAccessId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1150
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->dismiss()V

    :cond_2
    return-object v0
.end method

.method public selectStorePart(Ljava/lang/String;)V
    .locals 1

    .line 2402
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$17;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$17;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;)V

    .line 2407
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->selectPart(Ljava/util/Map;)V

    return-void
.end method

.method public setCancelableTask(Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;)V
    .locals 1

    .line 2437
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadTask:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    .line 2438
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2439
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2440
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setCmContext(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    if-nez p1, :cond_0

    .line 263
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollView:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->setPage(I)V

    .line 966
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->afterCurrentChanged()V

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_driveId:Ljava/lang/String;

    return-void
.end method

.method protected setHasDownload(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_hasDownload:Z

    return-void
.end method

.method public setProgress(II)V
    .locals 1

    .line 2450
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarMax:I

    if-eq v0, p1, :cond_0

    .line 2451
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarMax:I

    .line 2452
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2453
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2456
    :cond_0
    iget p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarProgress:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarProgress:I

    .line 2457
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    .line 2458
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_1
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .line 2468
    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBarIsIndeterminate:Z

    .line 2469
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2470
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method

.method public setTitleId(Ljava/lang/Integer;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_titleId:Ljava/lang/Integer;

    return-void
.end method

.method public setUseStore(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_useStore:Z

    return-void
.end method

.method protected setupFooter(Landroid/content/Context;)V
    .locals 7

    .line 2479
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2481
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 2482
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2484
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->useFooter()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x2

    if-eqz v3, :cond_0

    .line 2486
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_detailMessage:Landroid/widget/TextView;

    .line 2488
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2489
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_detailMessage:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2490
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_detailMessage:Landroid/widget/TextView;

    sget v6, Lcom/metamoji/noteanytime/R$string;->LIBRARY_LABEL_NOTICE_DETAIL:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2496
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_detailMessage:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2499
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2500
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2501
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2502
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2505
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 2506
    new-instance p1, Lcom/metamoji/ui/library/item/LibraryViewDialog$18;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$18;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2512
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAdjustViewBounds(Z)V

    .line 2513
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->library_cclicense:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2514
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 2515
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2517
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 2518
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2519
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_footer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showCCLicense()V
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showCCLicense(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Resources;)V

    return-void
.end method

.method protected showCompletedMessage(Lcom/metamoji/lb/LbConstants$DownloadMode;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1923
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->showCompletedMessage(Lcom/metamoji/lb/LbConstants$DownloadMode;ILjava/lang/String;)V

    return-void
.end method

.method protected showCompletedMessage(Lcom/metamoji/lb/LbConstants$DownloadMode;ILjava/lang/String;)V
    .locals 5

    .line 1926
    sget-boolean v0, Lcom/metamoji/ui/library/LibraryConstants;->IS_OVER_PIGEON:Z

    if-eqz v0, :cond_0

    return-void

    .line 1932
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1934
    sget-object v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$19;->$SwitchMap$com$metamoji$lb$LbConstants$DownloadMode:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$DownloadMode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    move-object p1, v2

    goto/16 :goto_2

    .line 1949
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Download_Title:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_7

    if-lez p2, :cond_2

    .line 1951
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->completedAlertMessageFormat(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 1942
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Trial_Title:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_7

    if-lez p2, :cond_4

    .line 1944
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->completedAlertMessageFormat(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1936
    :cond_5
    sget p1, Lcom/metamoji/noteanytime/R$string;->InAppPurchase_Title_Purchase:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_7

    if-lez p2, :cond_6

    .line 1938
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->completedAlertMessageFormat(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_6
    sget p2, Lcom/metamoji/noteanytime/R$string;->InAppPurchase_Msg_Purchased_Product:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    :goto_1
    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    :goto_2
    if-eqz p3, :cond_8

    .line 1956
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download_Failed:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1957
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    .line 1958
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1964
    :cond_8
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/ui/library/item/LibraryViewDialog$13;

    invoke-direct {p3, p0, p1, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog$13;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startArrangementModeAllPages()V
    .locals 3

    const/4 v0, 0x1

    .line 1009
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_isArrangementMode:Z

    .line 1012
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_visiblePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/library/item/LibraryPageView;

    .line 1013
    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->startArrangementMode()Z

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 1019
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 1022
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setModal(Z)V

    return-void
.end method

.method public stopArrangementModeAllPages()V
    .locals 3

    .line 1031
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_isArrangementMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1034
    iput-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_isArrangementMode:Z

    .line 1037
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_visiblePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/library/item/LibraryPageView;

    .line 1038
    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->stopArrangementMode()V

    goto :goto_0

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->savePageDataArray()V

    .line 1045
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->_editBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 1047
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 1050
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->setModal(Z)V

    return-void
.end method

.method protected systemOptionKeyCurrentPage()Ljava/lang/String;
    .locals 1

    .line 746
    const-string v0, "LibraryItemCurrentPage"

    return-object v0
.end method

.method protected systemOptionKeyCurrentPageDefault()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected systemOptionKeyLastAccessId()Ljava/lang/String;
    .locals 1

    .line 764
    const-string v0, "LibraryItemLastaccessId"

    return-object v0
.end method

.method protected tabButtonStringId()I
    .locals 1

    .line 734
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Tab_Item:I

    return v0
.end method

.method tilePages(Landroid/content/Context;II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-gt p2, p3, :cond_3

    .line 577
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->isDisplayingPageForIndex(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageDataArrayArrayForPageViewEx()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->createViewExClass(Landroid/content/Context;Ljava/util/List;)Lcom/metamoji/ui/library/item/LibraryPageViewEx;

    move-result-object v0

    goto :goto_2

    .line 584
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageDataArrayIndexFromPageIndex(I)I

    move-result v0

    .line 586
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_libraryPageDataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 587
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 588
    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->createViewClass(Landroid/content/Context;ZLjava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPageView;

    move-result-object v0

    .line 590
    :goto_2
    iput p2, v0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_index:I

    .line 591
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_visiblePages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 597
    :cond_3
    iget-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_isArrangementMode:Z

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 598
    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->startArrangementMode()Z

    :cond_4
    return-void
.end method

.method protected updateItemName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1621
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->updateItemName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateTextLabel()V
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_titleLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_imgView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 702
    :cond_0
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$19;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getCurrentIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->pageTypeOfIndex(I)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 716
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_store:I

    .line 717
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Title_Store:I

    goto :goto_0

    .line 712
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_system:I

    .line 713
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->tabButtonStringId()I

    move-result v1

    goto :goto_0

    .line 708
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_bookmark:I

    .line 709
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Title_Bookmark:I

    goto :goto_0

    .line 704
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->library_icon_history:I

    .line 705
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Title_History:I

    .line 723
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 724
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_titleLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_imgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected useArrangementMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected useFooter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected useNoteTemplate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useStore()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_useStore:Z

    return v0
.end method
