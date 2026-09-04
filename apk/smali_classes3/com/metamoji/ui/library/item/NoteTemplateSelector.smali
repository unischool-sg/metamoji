.class public Lcom/metamoji/ui/library/item/NoteTemplateSelector;
.super Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;
.source "NoteTemplateSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;,
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;,
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;,
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;,
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalSeparatorViewHolder;,
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalHeaderViewHolder;,
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;,
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalViewHolder;,
        Lcom/metamoji/ui/library/item/NoteTemplateSelector$ViewHolder;
    }
.end annotation


# instance fields
.field private _activity:Landroidx/fragment/app/FragmentActivity;

.field private _driveId:Ljava/lang/String;

.field private _headerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;",
            ">;"
        }
    .end annotation
.end field

.field _imageCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private _itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;",
            ">;"
        }
    .end annotation
.end field

.field private _listener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;

.field _lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

.field private _thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_activity(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_itemList(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_itemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_listener(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_listener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetActivity(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetItem(Lcom/metamoji/ui/library/item/NoteTemplateSelector;I)Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getItem(I)Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTitleString(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getTitleString(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetShareIconVisibility(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->setShareIconVisibility(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTemplateIconVisibility(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->setTemplateIconVisibility(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetThumbnailImage(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->setThumbnailImage(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 169
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_imageCache:Ljava/util/WeakHashMap;

    .line 164
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_driveId:Ljava/lang/String;

    .line 488
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    .line 171
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iput-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_activity:Landroidx/fragment/app/FragmentActivity;

    .line 174
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_itemList:Ljava/util/ArrayList;

    .line 177
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->cancelThumbTaskAll()V

    .line 179
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->prepareNormalView()V

    .line 181
    new-instance p1, Lcom/metamoji/ui/library/item/NoteTemplateSelector$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$1;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    new-instance p1, Lcom/metamoji/ui/library/item/NoteTemplateSelector$2;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$2;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 225
    iget-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    if-nez p1, :cond_0

    .line 226
    new-instance p1, Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    iget-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_imageCache:Ljava/util/WeakHashMap;

    invoke-direct {p1, p2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;-><init>(Ljava/util/WeakHashMap;)V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    .line 227
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    invoke-interface {p1, p2}, Lcom/metamoji/cm/ICmAppLowMemory;->addLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    :cond_0
    return-void
.end method

.method private cancelThumbTaskAll()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    .line 451
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method private getHeader(I)Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;
    .locals 1

    if-ltz p1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_headerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_headerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItem(I)Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;
    .locals 1

    if-ltz p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 250
    const-string v6, "application/vnd.metamoji.model.atdoc"

    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_headerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 254
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_headerList:Ljava/util/ArrayList;

    .line 256
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    .line 261
    invoke-static {v9}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 262
    invoke-static {v0, v6}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 263
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v11, :cond_1

    .line 265
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 268
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    new-instance v0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_headerList:Ljava/util/ArrayList;

    new-instance v2, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;

    sget v3, Lcom/metamoji/noteanytime/R$string;->NoteTemplate_Private:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v12, v11, v3}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_driveId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 279
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v4, v0

    if-nez v4, :cond_3

    return-object v7

    .line 287
    :cond_3
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 288
    invoke-virtual {p0, v0, v6}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getSdTemplateDocumentList(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 289
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    move v11, v12

    :goto_2
    if-ge v11, v10, :cond_4

    .line 291
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v2

    .line 296
    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    new-instance v0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_headerList:Ljava/util/ArrayList;

    new-instance v2, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v12, v9}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_headerList:Ljava/util/ArrayList;

    new-instance v2, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;

    sget v3, Lcom/metamoji/noteanytime/R$string;->NoteTemplate_Share:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v12, v10, v3}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    .line 305
    const-string v2, "[SelectNote] :: ERROR getItemList:"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getThumbnailDrawable(Ljava/lang/String;Lcom/metamoji/cm/Size;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 556
    iget v0, p2, Lcom/metamoji/cm/Size;->width:I

    iget p2, p2, Lcom/metamoji/cm/Size;->height:I

    invoke-static {p1, v0, p2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 558
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 559
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p2
.end method

.method private getTitleString(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;
    .locals 0

    .line 433
    invoke-static {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->-$$Nest$mgetTitle(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private prepareNormalView()V
    .locals 6

    .line 360
    iget-object v5, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 361
    new-instance v0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_headerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_itemList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/NoteTemplateSelectorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setShareIconVisibility(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 426
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p2, 0x8

    .line 428
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setTemplateIconVisibility(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 418
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p2, 0x8

    .line 420
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setThumbnailImage(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 7

    .line 495
    invoke-static {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 496
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->getDocId()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 497
    iget-object v1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 499
    invoke-static {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p3, :cond_1

    if-eqz v1, :cond_1

    .line 503
    iget-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    .line 507
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p1, p3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 508
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 513
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object v5, p2

    goto :goto_3

    .line 517
    :cond_3
    invoke-static {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->-$$Nest$fget_metadata(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_6

    .line 518
    new-instance v6, Lcom/metamoji/cm/Size;

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-direct {v6, v0, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 519
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->getDocId()Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 522
    invoke-static {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->-$$Nest$fget_metadata(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 524
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 526
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_lock_note:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 529
    :cond_4
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 530
    invoke-virtual {p1, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 533
    invoke-direct {p0, p1, v6}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getThumbnailDrawable(Ljava/lang/String;Lcom/metamoji/cm/Size;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 534
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 536
    :cond_5
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 540
    :goto_2
    invoke-static {}, Lcom/metamoji/sd/SdThumbnailLoader;->getInstance()Lcom/metamoji/sd/SdThumbnailLoader;

    move-result-object v1

    .line 541
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, p2

    .line 540
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/sd/SdThumbnailLoader;->addTask(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p3, :cond_7

    .line 544
    iget-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object v5, p2

    .line 549
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    :cond_7
    :goto_3
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getSdTemplateDocumentList(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 316
    sget-object v0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$4;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 327
    :pswitch_0
    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getSearchConditions(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    move-result-object v3

    .line 328
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 329
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagsObject()Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroyViewFromFragment()V
    .locals 2

    .line 438
    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->cancelThumbTaskAll()V

    .line 441
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    if-eqz v0, :cond_0

    .line 442
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmAppLowMemory;->removeLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    .line 443
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;->dispose()V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_lowMemoryListener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$LowMemoryListener;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_driveId:Ljava/lang/String;

    return-void
.end method

.method public setOnNoteTemplateSelectorListener(Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->_listener:Lcom/metamoji/ui/library/item/NoteTemplateSelector$Listener;

    return-void
.end method
