.class Lcom/metamoji/media/ui/MediaUploadedListDialog$9;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;->playWithDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1097
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/io/File;Z)V
    .locals 2

    .line 1100
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    iget-object p2, p2, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1103
    :cond_0
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    iget-object p2, p2, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-static {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->-$$Nest$fget_ticket(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)Ljava/lang/String;

    move-result-object p2

    .line 1104
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tempCache:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$9$1;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$9;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
