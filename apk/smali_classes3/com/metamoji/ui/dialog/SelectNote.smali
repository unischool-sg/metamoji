.class public Lcom/metamoji/ui/dialog/SelectNote;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "SelectNote.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;
.implements Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/SelectNote$Mode;,
        Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;,
        Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;,
        Lcom/metamoji/ui/dialog/SelectNote$NormalShareViewHolder;,
        Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;,
        Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;,
        Lcom/metamoji/ui/dialog/SelectNote$NormalLocalRootViewHolder;,
        Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;,
        Lcom/metamoji/ui/dialog/SelectNote$NormalFolderViewHolder;,
        Lcom/metamoji/ui/dialog/SelectNote$NormalFolderBackViewHolder;,
        Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;,
        Lcom/metamoji/ui/dialog/SelectNote$ViewHolder;
    }
.end annotation


# static fields
.field public static final KEY_DOCUMENT_ID:Ljava/lang/String; = "docid"

.field public static TAG:Ljava/lang/String; = "SelectNoteTitleID"


# instance fields
.field public DocumentID:Ljava/lang/String;

.field public DriveID:Ljava/lang/String;

.field public Tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _btnDriveList:Landroid/view/View;

.field private _cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field private _currentItem:Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

.field _doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field private _edittingDocId:Ljava/lang/String;

.field private _excludeDocIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

.field private _forLocOnSc:[I

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
            "Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;",
            ">;"
        }
    .end annotation
.end field

.field private _normalThumbOnTouchListner:Landroid/view/View$OnTouchListener;

.field private _normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

.field private _normalViewAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;",
            ">;"
        }
    .end annotation
.end field

.field private _normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private _nowDriveId:Ljava/lang/String;

.field private _nowTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_Timer:Ljava/util/Timer;

.field private m_targetDoc:Lcom/metamoji/nt/NtDocument;

.field public selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

.field public targetShareDriveOnly:Z


# direct methods
.method static bridge synthetic -$$Nest$fget_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_folderPathMgr(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_forLocOnSc(Lcom/metamoji/ui/dialog/SelectNote;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_forLocOnSc:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_itemList(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_itemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/ui/dialog/SelectNote;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalThumbOnTouchListner:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalView(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/NoteListGridView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_nowDriveId(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_nowTags(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_cabinetFolderMode(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_currentItem(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_currentItem:Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_nowDriveId(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTitleString(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/SelectNote;->getTitleString(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misShareNote(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/SelectNote;->isShareNote(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTemplate(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/SelectNote;->isTemplate(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetNormalViewNumColumns(Lcom/metamoji/ui/dialog/SelectNote;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->setNormalViewNumColumns()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTemplateIconVisibility(Lcom/metamoji/ui/dialog/SelectNote;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/SelectNote;->setTemplateIconVisibility(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetThumbnailImage(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/SelectNote;->setThumbnailImage(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;Landroid/widget/ImageView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 79
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_forLocOnSc:[I

    .line 168
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_imageCache:Ljava/util/WeakHashMap;

    .line 655
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/SelectNote$3;-><init>(Lcom/metamoji/ui/dialog/SelectNote;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalThumbOnTouchListner:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 79
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_forLocOnSc:[I

    .line 168
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_imageCache:Ljava/util/WeakHashMap;

    .line 655
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/SelectNote$3;-><init>(Lcom/metamoji/ui/dialog/SelectNote;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalThumbOnTouchListner:Landroid/view/View$OnTouchListener;

    .line 180
    iput p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->mTitleId:I

    .line 181
    iput-object p2, p0, Lcom/metamoji/ui/dialog/SelectNote;->_excludeDocIDs:Ljava/util/ArrayList;

    .line 182
    sget-object p1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    return-void
.end method

.method private getCurrentFolder()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    .line 1063
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentFolder()Ljava/util/List;

    move-result-object v0

    .line 1065
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1066
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1067
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    .line 1071
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getCurrentNode()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    .line 945
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-nez v0, :cond_3

    .line 935
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_1

    .line 938
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_2

    .line 940
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsUnknown()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 945
    :cond_3
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v0, :cond_4

    .line 946
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 948
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 950
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0
.end method

.method private getItemList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 459
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 461
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->MoveNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v2, :cond_1

    .line 463
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->targetShareDriveOnly:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_3

    .line 483
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 473
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_5

    .line 474
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 492
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v7

    .line 495
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_6

    .line 496
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getRootItemList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 498
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_7

    .line 499
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getShareRootItemList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 500
    :cond_7
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_a

    .line 501
    const-string v9, ""

    .line 502
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 503
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 504
    :cond_8
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v2, :cond_9

    .line 505
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Template:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_9
    :goto_2
    invoke-virtual {v7, v9}, Lcom/metamoji/sd/SdDriveDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 509
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v8

    :goto_3
    if-ge v11, v10, :cond_a

    .line 511
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 512
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 517
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectShareNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v2, :cond_10

    .line 519
    :cond_b
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getCurrentNode()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 520
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v3, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v2, v3, :cond_c

    const-string v2, "application/vnd.metamoji.model.atdoc"

    goto :goto_5

    :cond_c
    const-string v2, "application/vnd.metamoji.model.atshare"

    :goto_5
    invoke-static {v0, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 522
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_6
    if-ge v8, v10, :cond_10

    .line 524
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_edittingDocId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7

    .line 532
    :cond_d
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_excludeDocIDs:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    .line 542
    :cond_f
    invoke-virtual {v7, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v4

    .line 543
    invoke-virtual {v7, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIconImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 544
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_10
    return-object v6

    :catch_0
    move-exception v0

    .line 552
    const-string v1, "[SelectNote] :: ERROR getItemList:"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getTitleString(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;
    .locals 2

    .line 973
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 974
    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$mgetFolderName(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 975
    :cond_0
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 976
    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$mgetTitle(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 977
    :cond_1
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 978
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 979
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Main_BackButton:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 980
    :cond_2
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 981
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 982
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Private_Drive_Name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 983
    :cond_3
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Template:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 984
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 985
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoteTemplate_Title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 986
    :cond_4
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 987
    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 988
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 989
    :cond_5
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Share:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 990
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 991
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSdRootLabel_Text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 993
    :cond_6
    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private isShareNote(Ljava/lang/Object;)Z
    .locals 2

    .line 581
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_1

    .line 582
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 583
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.metamoji.model.atshare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 584
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isShareTemplate()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isTemplate(Ljava/lang/Object;)Z
    .locals 1

    .line 571
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_0

    .line 572
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private prepareNormalView()V
    .locals 4

    .line 791
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$4;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SelectNote;->_itemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/metamoji/ui/dialog/SelectNote$4;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    .line 924
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 929
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 930
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getCurrentNode()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/FolderPathManager;->updateView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method private setNormalViewNumColumns()V
    .locals 0

    return-void
.end method

.method private setTemplateIconVisibility(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 564
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p2, 0x8

    .line 566
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setThumbnailImage(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;Landroid/widget/ImageView;)V
    .locals 3

    .line 1002
    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_metadata(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 1003
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_lock_note:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1006
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1007
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 1010
    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-static {p1, v0, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 1018
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1019
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1020
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 1025
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1028
    :cond_4
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    :goto_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method btnDriveList_Click()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->MoveNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 271
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_0

    .line 274
    :cond_1
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 276
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_itemList:Ljava/util/ArrayList;

    goto :goto_2

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->targetShareDriveOnly:Z

    if-nez v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 281
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_1

    .line 284
    :cond_3
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 286
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getRootItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_itemList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    .line 289
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->CopyNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_5

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 294
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->prepareNormalView()V

    return-void
.end method

.method getRootItemList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->targetShareDriveOnly:Z

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object v1

    .line 307
    new-instance v2, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v4, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 308
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 309
    new-instance v8, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v10, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Share:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getShareRootItemList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getShareRootItemList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 326
    invoke-virtual {v1, v2, v3, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 327
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 328
    new-instance v3, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    sget-object v5, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method isSelectFolder()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectShareNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    if-eqz p1, :cond_0

    .line 203
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->mTitleId:I

    .line 205
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_select_note:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->mViewId:I

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->isSelectFolder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->mDone:Z

    .line 208
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->isSelectFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 212
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->select_note_drive_list:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_btnDriveList:Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 214
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_folder_path_view:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    .line 215
    new-instance v2, Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-direct {v2, v1, v0, p0, p0}, Lcom/metamoji/ui/cabinet/FolderPathManager;-><init>(Landroid/widget/HorizontalScrollView;Landroid/content/Context;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    iput-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    .line 217
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_normal_view:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/NormalGridView;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    .line 219
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/metamoji/ui/dialog/SelectNote$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SelectNote$1;-><init>(Lcom/metamoji/ui/dialog/SelectNote;)V

    iput-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 228
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_2

    .line 230
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_3

    .line 232
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentDrive()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 234
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 238
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_4

    .line 240
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getCurrentFolder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    .line 244
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_itemList:Ljava/util/ArrayList;

    .line 245
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_5

    .line 246
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 247
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    .line 248
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_btnDriveList:Landroid/view/View;

    new-instance v1, Lcom/metamoji/ui/dialog/SelectNote$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SelectNote$2;-><init>(Lcom/metamoji/ui/dialog/SelectNote;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->prepareNormalView()V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 1041
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectShareNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_2

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_currentItem:Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->DocumentID:Ljava/lang/String;

    .line 1050
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->DriveID:Ljava/lang/String;

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->Tags:Ljava/util/List;

    .line 1052
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1054
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote;->Tags:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1057
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onFolderChanged()V
    .locals 0

    return-void
.end method

.method public onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 3

    .line 1086
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->MoveNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v1, v2, :cond_0

    .line 1088
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_0

    return-void

    .line 1092
    :cond_0
    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 1093
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1096
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_0

    .line 1099
    :cond_1
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 1102
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    .line 1103
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getTagNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1104
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/SelectNote;->updateList(Ljava/util/ArrayList;)V

    .line 1105
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->updateDoneButton()V

    return-void
.end method

.method public onFolderItemClickEx(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 450
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 451
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/metamoji/ui/dialog/SelectNote;->mTitleId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCurrentDocument(Lcom/metamoji/nt/NtDocument;Z)V
    .locals 1

    .line 385
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->m_targetDoc:Lcom/metamoji/nt/NtDocument;

    if-eqz p1, :cond_2

    .line 387
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object p1

    .line 388
    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    .line 389
    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p2

    .line 391
    invoke-virtual {p2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 392
    invoke-virtual {p2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 393
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    .line 396
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object p2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq p1, p2, :cond_0

    .line 398
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_0

    .line 402
    :cond_0
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 404
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object p2, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectShareNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 406
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    :cond_1
    return-void

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->setInitOnCurrentFolder()V

    return-void
.end method

.method public setEdittingDocId(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_edittingDocId:Ljava/lang/String;

    return-void
.end method

.method public setInitDriveId(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    .line 352
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    .line 369
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 372
    :cond_3
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void

    .line 370
    :cond_4
    :goto_1
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void

    .line 359
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne p1, v0, :cond_6

    .line 360
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void

    :cond_6
    if-eqz p2, :cond_8

    .line 362
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 365
    :cond_7
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void

    .line 363
    :cond_8
    :goto_3
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void
.end method

.method setInitOnCurrentFolder()V
    .locals 2

    .line 420
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getCurrentDrive()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-eq v0, v1, :cond_0

    .line 425
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_0

    .line 429
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 439
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    .line 441
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectShareNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 443
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    :cond_1
    return-void
.end method

.method updateDoneButton()V
    .locals 3

    .line 770
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->isSelectFolder()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v0, :cond_4

    .line 772
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->CopyNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->MoveNote:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->selectMode:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$Mode;->SelectSharedDrive:Lcom/metamoji/ui/dialog/SelectNote$Mode;

    if-ne v0, v1, :cond_2

    .line 782
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowDriveId:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 773
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    .line 786
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public updateList()V
    .locals 1

    .line 967
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote;->_itemList:Ljava/util/ArrayList;

    .line 968
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote;->prepareNormalView()V

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 957
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    goto :goto_0

    .line 960
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote;->_nowTags:Ljava/util/ArrayList;

    .line 962
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SelectNote;->updateList()V

    return-void
.end method
