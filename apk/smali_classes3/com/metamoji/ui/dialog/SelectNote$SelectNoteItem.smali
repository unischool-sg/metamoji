.class Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;
.super Ljava/lang/Object;
.source "SelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectNoteItem"
.end annotation


# instance fields
.field private _content:Ljava/lang/Object;

.field private _metadata:Ljava/lang/Object;

.field private _thumbnailPath:Ljava/lang/String;

.field private _type:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/SelectNote;


# direct methods
.method static bridge synthetic -$$Nest$fget_content(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_content:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_metadata(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_metadata:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_thumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_type:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFolderName(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->getFolderName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTitle(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 124
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;-><init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_type:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    .line 118
    iput-object p3, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_content:Ljava/lang/Object;

    .line 119
    iput-object p4, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_metadata:Ljava/lang/Object;

    .line 120
    iput-object p5, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method private getFolderName()Ljava/lang/String;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_content:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_metadata:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v1, :cond_0

    .line 143
    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDocumentId()Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_type:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    sget-object v1, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->_content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
