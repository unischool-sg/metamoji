.class Lcom/metamoji/sd/SdThumbnailLoader$Task;
.super Ljava/lang/Object;
.source "SdThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/SdThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private _docId:Ljava/lang/String;

.field private _driveId:Ljava/lang/String;

.field private _imageView:Landroid/widget/ImageView;

.field private _size:Lcom/metamoji/cm/Size;

.field final synthetic this$0:Lcom/metamoji/sd/SdThumbnailLoader;


# direct methods
.method static bridge synthetic -$$Nest$fget_context(Lcom/metamoji/sd/SdThumbnailLoader$Task;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_imageView(Lcom/metamoji/sd/SdThumbnailLoader$Task;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_size(Lcom/metamoji/sd/SdThumbnailLoader$Task;)Lcom/metamoji/cm/Size;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_size:Lcom/metamoji/cm/Size;

    return-object p0
.end method

.method constructor <init>(Lcom/metamoji/sd/SdThumbnailLoader;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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

    .line 49
    iput-object p1, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->this$0:Lcom/metamoji/sd/SdThumbnailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_driveId:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_docId:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_context:Landroid/content/Context;

    .line 53
    iput-object p5, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_imageView:Landroid/widget/ImageView;

    .line 54
    iput-object p6, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_size:Lcom/metamoji/cm/Size;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 61
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveStatus(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    and-int/2addr v1, v2

    sget v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_docId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_docId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->isThumbnailMissingForDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 70
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->cloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v2

    .line 71
    new-instance v3, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;

    invoke-direct {v3}, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;-><init>()V

    .line 72
    iget-object v4, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_docId:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->documentId:Ljava/lang/String;

    .line 73
    iput-object v1, v3, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->revision:Ljava/lang/String;

    .line 74
    const-string/jumbo v4, "\u2605"

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, v3}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/cs/response/SdFileResult;

    if-eqz v2, :cond_2

    .line 76
    iget v3, v2, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v3, :cond_2

    .line 78
    :try_start_0
    iget-object v3, v2, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->readFileAsByte(Ljava/io/File;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_docId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/metamoji/sd/SdThumbnailLoader$Task;->_docId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/sd/SdThumbnailLoader$Task$1;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/sd/SdThumbnailLoader$Task$1;-><init>(Lcom/metamoji/sd/SdThumbnailLoader$Task;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    const-wide/16 v0, 0xc8

    .line 102
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
