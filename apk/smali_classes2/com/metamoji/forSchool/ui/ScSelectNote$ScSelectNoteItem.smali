.class Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;
.super Ljava/lang/Object;
.source "ScSelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScSelectNoteItem"
.end annotation


# instance fields
.field private _content:Ljava/lang/Object;

.field private _metadata:Ljava/lang/Object;

.field private _thumbnailPath:Ljava/lang/String;

.field private _type:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;


# direct methods
.method static bridge synthetic -$$Nest$fget_content(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_content:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_metadata(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_metadata:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_thumbnailPath(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_thumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_type:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_thumbnailPath(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFolderName(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->getFolderName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetGroupId(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->getGroupId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTitle(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;)V
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

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
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

    .line 127
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_type:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    .line 129
    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_content:Ljava/lang/Object;

    .line 130
    iput-object p4, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_metadata:Ljava/lang/Object;

    .line 131
    iput-object p5, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method private getFolderName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_content:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGroupId()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_content:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    instance-of v1, v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    if-eqz v1, :cond_1

    .line 160
    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_metadata:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v1, :cond_0

    .line 151
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

    .line 139
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_type:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->_content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
