.class public Lcom/metamoji/forSchool/ui/ScSelectNote;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScSelectNote.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;
.implements Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$NormalTemplateViewHolder;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderViewHolder;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderBackViewHolder;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;,
        Lcom/metamoji/forSchool/ui/ScSelectNote$ViewHolder;
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

.field private _activeGroupId:Ljava/lang/String;

.field _btnDriveList:Landroid/view/View;

.field private _cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

.field private _currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

.field _doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field private _edittingDocId:Ljava/lang/String;

.field private _excludeDocIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

.field private _isReconstructDialogFlag:Z

.field private _itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
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
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
            ">;"
        }
    .end annotation
.end field

.field private _normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private _nowDriveId:Ljava/lang/String;

.field private _nowGroupId:Ljava/lang/String;

.field private _nowTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_Timer:Ljava/util/Timer;

.field public selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;


# direct methods
.method static bridge synthetic -$$Nest$fget_activeGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_activeGroupId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_folderPathMgr(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/FolderPathManager;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_forLocOnSc(Lcom/metamoji/forSchool/ui/ScSelectNote;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_forLocOnSc:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_itemList(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_itemList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalThumbOnTouchListner:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalView(Lcom/metamoji/forSchool/ui/ScSelectNote;)Lcom/metamoji/ui/cabinet/NoteListGridView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_nowTags(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_cabinetFolderMode(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_currentItem(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_nowDriveId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_nowGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTitleString(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getTitleString(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misShareTemplate(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->isShareTemplate(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTemplate(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->isTemplate(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetNormalViewNumColumns(Lcom/metamoji/forSchool/ui/ScSelectNote;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setNormalViewNumColumns()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTemplateIconVisibility(Lcom/metamoji/forSchool/ui/ScSelectNote;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setTemplateIconVisibility(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetThumbnailImage(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setThumbnailImage(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDoneButton(Lcom/metamoji/forSchool/ui/ScSelectNote;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateDoneButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 85
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const/4 v0, 0x2

    .line 166
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_forLocOnSc:[I

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_isReconstructDialogFlag:Z

    .line 188
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_imageCache:Ljava/util/WeakHashMap;

    .line 758
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$3;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalThumbOnTouchListner:Landroid/view/View$OnTouchListener;

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

    .line 199
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 85
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const/4 v0, 0x2

    .line 166
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_forLocOnSc:[I

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_isReconstructDialogFlag:Z

    .line 188
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_imageCache:Ljava/util/WeakHashMap;

    .line 758
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$3;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$3;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalThumbOnTouchListner:Landroid/view/View$OnTouchListener;

    .line 200
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->mTitleId:I

    .line 201
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_excludeDocIDs:Ljava/util/List;

    .line 202
    sget-object p1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 204
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_activeGroupId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

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

    .line 1333
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    .line 1334
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentFolder()Ljava/util/List;

    move-result-object v0

    .line 1336
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1337
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1338
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    .line 1342
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getCurrentNode()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    .line 1136
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-nez v0, :cond_6

    .line 1118
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_1

    .line 1121
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBox(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1124
    :cond_2
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_3

    .line 1125
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxOld()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1126
    :cond_3
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_4

    .line 1127
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupNameByGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxYear(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1130
    :cond_4
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_5

    .line 1131
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsUnknown()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1133
    :cond_5
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1136
    :cond_6
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v0, :cond_7

    .line 1137
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1138
    :cond_7
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1139
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1141
    :cond_8
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    .line 1144
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1142
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0

    .line 1144
    :cond_9
    invoke-static {v1, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxClass(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    return-object v0
.end method

.method public static getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 1390
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$7;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1401
    :pswitch_0
    invoke-static {p0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

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

.method public static getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, p1

    .line 1417
    invoke-static/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Ljava/lang/String;",
            "JJ)",
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

    .line 1420
    invoke-static {p0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getSearchConditions(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    move-result-object v2

    .line 1421
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 1423
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1424
    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    .line 1426
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagsObject()Ljava/util/ArrayList;

    move-result-object v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getItemList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 562
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v2, :cond_1

    .line 566
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_2

    .line 586
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_btnDriveList:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v7

    .line 598
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_3

    .line 599
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getRootItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_4

    .line 601
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getShareRootItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 602
    :cond_4
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_5

    .line 603
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCRBoxRootItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 604
    :cond_5
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_6

    .line 605
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCRBoxOldRootItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 606
    :cond_6
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_7

    .line 607
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCRBoxYearRootItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 608
    :cond_7
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_9

    .line 609
    const-string v0, ""

    .line 610
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 611
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 612
    :cond_8
    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 616
    :goto_1
    invoke-virtual {v7, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 617
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v8

    :goto_2
    if-ge v11, v10, :cond_9

    .line 619
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 620
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 625
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_d

    .line 627
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCurrentNode()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 628
    const-string v2, "application/vnd.metamoji.model.atdoc"

    invoke-static {v0, v2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 630
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_4
    if-ge v8, v10, :cond_d

    .line 632
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_edittingDocId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 640
    :cond_a
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_excludeDocIDs:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 641
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 642
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    .line 650
    :cond_c
    invoke-virtual {v7, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v4

    .line 651
    invoke-virtual {v7, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIconImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 652
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    return-object v6

    :catch_0
    move-exception v0

    .line 660
    const-string v1, "[SelectNote] :: ERROR getItemList:"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getSearchConditions(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/cm/CmException;
        }
    .end annotation

    .line 1435
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {v0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 1437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    new-instance v2, Lcom/metamoji/sd/SdSortCondition;

    sget-object v3, Lcom/metamoji/sd/SdSortCondition;->DOCUMENT_SEARCH_SORT_PRIORITY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 1441
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    new-instance v2, Lcom/metamoji/sd/SdSortCondition;

    sget-object v3, Lcom/metamoji/sd/SdSortCondition;->DOCUMENT_SEARCH_SORT_UPDATE:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 1444
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1447
    new-instance v2, Lcom/metamoji/sd/SdSortCondition;

    const-string v3, "update"

    invoke-direct {v2, v3, v4}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 1448
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSort(Ljava/util/List;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1454
    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setMimeType(Ljava/util/List;)V

    .line 1458
    :cond_1
    sget-object p1, Lcom/metamoji/forSchool/ui/ScSelectNote$7;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    .line 1477
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    goto :goto_0

    .line 1465
    :cond_2
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Trash:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    goto :goto_0

    .line 1469
    :cond_3
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Templates:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    goto :goto_0

    .line 1473
    :cond_4
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->CopiedShareNote:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    goto :goto_0

    .line 1461
    :cond_5
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->All:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    .line 1481
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p0

    .line 1482
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTags()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1484
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1485
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTags()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1486
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1488
    :cond_6
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setTags(Ljava/util/List;)V

    return-object v0

    .line 1489
    :cond_7
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTitleString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTextString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 1495
    :cond_8
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchNothings()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1497
    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    .line 1498
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setTags(Ljava/util/List;)V

    :cond_9
    return-object v0

    .line 1491
    :cond_a
    :goto_2
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTitleString()Ljava/lang/String;

    move-result-object p0

    .line 1493
    invoke-static {p0}, Lcom/metamoji/un/text/SearchWordUtil;->trimmingPatternText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1494
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTitleString(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;
    .locals 2

    .line 1168
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1169
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetFolderName(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1170
    :cond_0
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1171
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$mgetTitle(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1172
    :cond_1
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1173
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1174
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Main_BackButton:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1175
    :cond_2
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1176
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1177
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Private_Drive_Name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1178
    :cond_3
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Template:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1179
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1180
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoteTemplate_Title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1181
    :cond_4
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 1182
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 1183
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1184
    :cond_5
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Share:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 1185
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1186
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSdRootLabel_Text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1187
    :cond_6
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBox:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 1188
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1189
    sget v0, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_ClassBox:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1190
    :cond_7
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 1191
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1192
    sget v0, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_PastClassBox:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1193
    :cond_8
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 1194
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 1195
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1196
    :cond_9
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxYear:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_a

    .line 1197
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    .line 1198
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1200
    :cond_a
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private isShareTemplate(Ljava/lang/Object;)Z
    .locals 1

    .line 687
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_0

    .line 688
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isShareTemplate()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isTemplate(Ljava/lang/Object;)Z
    .locals 1

    .line 679
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_0

    .line 680
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

    .line 929
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 930
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_itemList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$4;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    .line 1103
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1105
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1106
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 1107
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1113
    :goto_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCurrentNode()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/FolderPathManager;->updateView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method private setEtc()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 520
    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    goto :goto_0

    .line 522
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v0, v2, :cond_2

    .line 525
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_activeGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 527
    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    .line 528
    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 532
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 546
    :cond_4
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void

    .line 536
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 537
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 540
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    return-void

    .line 542
    :cond_7
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

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

    .line 672
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p2, 0x8

    .line 674
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setThumbnailImage(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V
    .locals 8

    .line 1209
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_metadata(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 1211
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_lock_note:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    move-object v7, p2

    goto/16 :goto_2

    .line 1214
    :cond_1
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1215
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 1218
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-static {p1, v0, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 1226
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1227
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 1231
    :cond_4
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1234
    :cond_5
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1236
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->getDocumentId()Ljava/lang/String;

    move-result-object v4

    .line 1237
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 1238
    invoke-virtual {v0, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v5

    .line 1240
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->isThumbnailMissingForDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/ui/ScSelectNote$5;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/forSchool/ui/ScSelectNote$5;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 1250
    :goto_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private updateDoneButton()V
    .locals 3

    .line 908
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v0, :cond_4

    .line 910
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->CopyNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v0, v1, :cond_2

    .line 920
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 911
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    .line 924
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method btnDriveList_Click()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v0, v1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 303
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_0

    .line 306
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 308
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_itemList:Ljava/util/List;

    goto :goto_1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/FolderPathManager;->setVisibilty(I)V

    .line 315
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 317
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getRootItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_itemList:Ljava/util/List;

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    .line 322
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateDoneButton()V

    .line 323
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->prepareNormalView()V

    return-void
.end method

.method protected downloadThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V
    .locals 4

    .line 1256
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 1257
    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveStatus(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    and-int/2addr v1, v2

    sget v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1261
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 1262
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->isThumbnailMissingForDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1263
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->cloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    .line 1264
    new-instance v1, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;-><init>()V

    .line 1265
    iput-object p2, v1, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->documentId:Ljava/lang/String;

    .line 1266
    iput-object p3, v1, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->revision:Ljava/lang/String;

    .line 1267
    invoke-virtual {v0, v1}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/cs/response/SdFileResult;

    if-eqz v0, :cond_3

    .line 1268
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v1, :cond_3

    .line 1270
    :try_start_0
    iget-object v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->readFileAsByte(Ljava/io/File;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, p3, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1273
    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1274
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1275
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/forSchool/ui/ScSelectNote$6;

    invoke-direct {v3, p0, p4, p3, p5}, Lcom/metamoji/forSchool/ui/ScSelectNote$6;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1291
    :cond_1
    invoke-virtual {p1, p2, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1294
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1296
    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    const-wide/16 p1, 0xc8

    .line 1300
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1302
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method getCRBoxOldRootItemList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 445
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 446
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 450
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    .line 451
    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_activeGroupId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 458
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 461
    :cond_3
    new-instance v5, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v7, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxYear:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method getCRBoxRootItemList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 429
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_activeGroupId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 430
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

    .line 431
    new-instance v3, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v5, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getCRBoxYearRootItemList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 473
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 474
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 479
    new-instance v3, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v5, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method getCRShareRootItemList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 382
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;

    move-result-object v0

    .line 383
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    .line 384
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_activeGroupId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v8, v8}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 387
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBox:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    .line 395
    invoke-virtual {v7, v0, v8, v8}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 397
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Share:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_2
    invoke-virtual {v7, v8, v8}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;

    move-result-object v0

    .line 407
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    .line 408
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_activeGroupId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 409
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v8, v8}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 410
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 411
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v6
.end method

.method getRootItemList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-eq v0, v1, :cond_0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v3, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCRShareRootItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCRShareRootItemList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getShareRootItemList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 365
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

    .line 366
    new-instance v3, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    sget-object v5, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->mV4Compatible:Z

    if-eqz p3, :cond_0

    .line 227
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->mTitleId:I

    :cond_0
    const/4 v1, 0x0

    .line 229
    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    .line 230
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_select_note:I

    iput v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->mViewId:I

    .line 231
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->mDone:Z

    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 234
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-eq p2, v0, :cond_2

    .line 235
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 237
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->select_note_drive_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_btnDriveList:Landroid/view/View;

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 239
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_folder_path_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 240
    new-instance v1, Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-direct {v1, v0, p2, p0, p0}, Lcom/metamoji/ui/cabinet/FolderPathManager;-><init>(Landroid/widget/HorizontalScrollView;Landroid/content/Context;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    .line 242
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_normal_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/NormalGridView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    .line 244
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 245
    new-instance v0, Lcom/metamoji/forSchool/ui/ScSelectNote$1;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$1;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 251
    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    if-nez p3, :cond_6

    .line 254
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez p2, :cond_5

    .line 255
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object p3, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne p2, p3, :cond_3

    .line 257
    sget-object p2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->UNKNOWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_1

    .line 261
    :cond_3
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object p3, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne p2, p3, :cond_5

    .line 262
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p2

    .line 263
    invoke-virtual {p2}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentDrive()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez p3, :cond_4

    .line 265
    sget-object p2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_1

    .line 267
    :cond_4
    invoke-virtual {p2, p3}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    .line 271
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    if-nez p2, :cond_6

    .line 272
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object p3, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne p2, p3, :cond_6

    .line 273
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCurrentFolder()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    .line 278
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getItemList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_itemList:Ljava/util/List;

    .line 279
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq p2, p3, :cond_7

    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne p2, p3, :cond_8

    .line 281
    :cond_7
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_doneBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p2, :cond_8

    const/4 p3, 0x4

    .line 282
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 286
    :cond_8
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_btnDriveList:Landroid/view/View;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScSelectNote$2;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$2;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->prepareNormalView()V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 1314
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->ShareFolder:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v0, v1, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->Note:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v0, v1, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->DocumentID:Ljava/lang/String;

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->DriveID:Ljava/lang/String;

    .line 1324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->Tags:Ljava/util/List;

    .line 1325
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1326
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->Tags:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1328
    :cond_2
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onFolderChanged()V
    .locals 0

    return-void
.end method

.method public onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 3

    .line 1353
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 1354
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    if-ne v1, v2, :cond_1

    .line 1355
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    .line 1362
    :cond_1
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 1363
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    .line 1364
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowGroupId:Ljava/lang/String;

    .line 1365
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_3

    .line 1366
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1367
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_0

    .line 1370
    :cond_2
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_cabinetFolderMode:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 1373
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    .line 1374
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getTagNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1375
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList(Ljava/util/ArrayList;)V

    .line 1376
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateDoneButton()V

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

    .line 553
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 554
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->mTitleId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote;->Key_ReconstructDialogFlag:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_isReconstructDialogFlag:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEdittingDocId(Ljava/lang/String;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_edittingDocId:Ljava/lang/String;

    return-void
.end method

.method public setInitDriveId(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 505
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setEtc()V

    return-void
.end method

.method public setInitOnCurrentFolder()V
    .locals 1

    .line 513
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getCurrentDrive()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowDriveId:Ljava/lang/String;

    .line 514
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getCurrentFolder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    .line 515
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setEtc()V

    return-void
.end method

.method public setReconstructDialogFlag(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_isReconstructDialogFlag:Z

    return-void
.end method

.method public updateList()V
    .locals 1

    .line 1162
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_itemList:Ljava/util/List;

    .line 1163
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->prepareNormalView()V

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

    .line 1152
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    goto :goto_0

    .line 1155
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote;->_nowTags:Ljava/util/List;

    .line 1157
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->updateList()V

    return-void
.end method
