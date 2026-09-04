.class Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteLoop"
.end annotation


# instance fields
.field private _failed:Z

.field private _removeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;",
            ">;"
        }
    .end annotation
.end field

.field private _removedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;",
            ">;"
        }
    .end annotation
.end field

.field private _removing:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method static bridge synthetic -$$Nest$fget_removedList(Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removedList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;",
            ">;)V"
        }
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 772
    iput-boolean p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_failed:Z

    .line 775
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removeList:Ljava/util/List;

    .line 776
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removedList:Ljava/util/List;

    .line 777
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->next()V

    return-void
.end method

.method private allDone()V
    .locals 2

    .line 810
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private next()V
    .locals 5

    .line 789
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->allDone()V

    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removing:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 796
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removing:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getRecordId()Ljava/lang/String;

    move-result-object v2

    .line 799
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removing:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 797
    invoke-virtual {v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getRecordId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-static {v0, v1, v4, p0}, Lcom/metamoji/media/MediaUtil;->removeMedia(Ljava/util/List;ZZLcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;)V

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getMediaId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 800
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removing:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-static {v0, v4, v4, p0}, Lcom/metamoji/media/MediaUtil;->removeMedia(Ljava/util/List;ZZLcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;)V

    .line 805
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removing:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getTicket()Ljava/lang/String;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v1, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$mremoveRecordFromRecordingsManager(Lcom/metamoji/media/ui/MediaUploadedListDialog;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removedList:Ljava/util/List;

    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->_removing:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->next()V

    return-void
.end method
