.class Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;
.super Ljava/lang/Object;
.source "NoteTemplateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/NoteTemplateSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectNoteItem"
.end annotation


# instance fields
.field private _docId:Ljava/lang/String;

.field private _driveId:Ljava/lang/String;

.field private _metadata:Ljava/lang/Object;

.field private _thumbnailPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;


# direct methods
.method static bridge synthetic -$$Nest$fget_metadata(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_metadata:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_thumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTitle(Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 59
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_metadata:Ljava/lang/Object;

    .line 61
    iput-object p3, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_docId:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_driveId:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method private getTitle()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_metadata:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    instance-of v1, v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v1, :cond_1

    .line 83
    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 86
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDocId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_docId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public isShareTemplate()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_metadata:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isShareTemplate()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTemplate()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->_metadata:Ljava/lang/Object;

    instance-of v1, v0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getTemplateFlg()Z

    move-result v0

    return v0

    .line 95
    :cond_0
    instance-of v1, v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v1, :cond_1

    .line 96
    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
