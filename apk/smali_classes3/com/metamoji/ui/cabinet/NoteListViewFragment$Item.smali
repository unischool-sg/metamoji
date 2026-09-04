.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# static fields
.field public static final DOCUMENT_TYPE:I = 0x1

.field public static final FOLDER_TYPE:I = 0x2

.field public static final HEADER_TYPE:I = 0x3

.field public static final NEW_DOCUMENT_TYPE:I = 0x0

.field public static final NEW_DRIVE_TYPE:I = 0x4


# instance fields
.field private _content:Ljava/lang/Object;

.field private _createUser:Ljava/lang/String;

.field private _createUserId:Ljava/lang/String;

.field private _isWaitingSync:Z

.field private _metadata:Ljava/lang/Object;

.field private _noteCount:I

.field private _thumbnailPath:Ljava/lang/String;

.field private _type:I

.field private _updateUser:Ljava/lang/String;

.field private _updateUserId:Ljava/lang/String;

.field private _userName:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method static bridge synthetic -$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_content:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_createUserId(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_createUserId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_isWaitingSync(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_isWaitingSync:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_metadata:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_noteCount(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_noteCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_thumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_updateUserId(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_updateUserId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_isWaitingSync(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_isWaitingSync:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;)V
    .locals 8
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 215
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_type:I

    .line 203
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_content:Ljava/lang/Object;

    .line 204
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->SetMetaData(Ljava/lang/Object;)V

    .line 205
    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_thumbnailPath:Ljava/lang/String;

    .line 206
    iput p6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_noteCount:I

    .line 207
    iput-boolean p7, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_isWaitingSync:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    .line 211
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZ)V

    return-void
.end method

.method private UserName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 355
    const-string v0, ""

    if-nez p2, :cond_0

    return-object v0

    .line 358
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 359
    invoke-virtual {v1, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 362
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->normalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v1

    .line 364
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->nonMemberNameMapCache()Ljava/util/Map;

    move-result-object v2

    .line 366
    invoke-static {v1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    invoke-static {v1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 369
    :cond_1
    invoke-static {v2, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-static {v2, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {p1, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->updateNonMemberNameMapCache(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 378
    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method private resolveCreateUserString()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->resolveCreateUserString(Z)V

    return-void
.end method

.method private resolveCreateUserString(Z)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 344
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_createUserId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->UserName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->setSimpleUserString(Ljava/lang/String;)V

    return-void

    .line 349
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->setCreateUserString(Ljava/lang/String;)V

    return-void
.end method

.method private resolveUpdateUserString()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->resolveUpdateUserString(Z)V

    return-void
.end method

.method private resolveUpdateUserString(Z)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_updateUserId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->UserName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->setSimpleUserString(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->setUpdateUserString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SetMetaData(Ljava/lang/Object;)V
    .locals 1

    .line 254
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_metadata:Ljava/lang/Object;

    .line 255
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->normalizedContentsCreateUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_createUserId:Ljava/lang/String;

    .line 257
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_metadata:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->normalizedContentsUpdateUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_updateUserId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_createUser:Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_updateUser:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getCreateUserString()Ljava/lang/String;
    .locals 2

    .line 323
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_createUser:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->resolveCreateUserString()V

    .line 328
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_createUser:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 2

    .line 219
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_content:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 2

    .line 227
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_content:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_content:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 2

    .line 237
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_content:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleUserString()Ljava/lang/String;
    .locals 4

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_userName:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 274
    :cond_1
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "create"

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 275
    invoke-direct {p0, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->resolveCreateUserString(Z)V

    goto :goto_0

    .line 278
    :cond_2
    invoke-direct {p0, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->resolveUpdateUserString(Z)V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_userName:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_type:I

    return v0
.end method

.method public getUpdateUserString()Ljava/lang/String;
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_updateUser:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->resolveUpdateUserString()V

    .line 295
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_updateUser:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public isSharedDrive()Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCreateUserString(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_createUser:Ljava/lang/String;

    return-void
.end method

.method public setSimpleUserString(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_userName:Ljava/lang/String;

    return-void
.end method

.method public setUpdateUserString(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->_updateUser:Ljava/lang/String;

    return-void
.end method
