.class Lcom/metamoji/media/MediaUploadManager$9;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->notifyMediaUplaodToAllPages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager;

.field final synthetic val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$targetPages:Ljava/util/List;

.field final synthetic val$ticketDatas:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;Ljava/util/List;Lcom/metamoji/nt/NtEditorWindowController;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1477
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$9;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager$9;->val$targetPages:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/media/MediaUploadManager$9;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p4, p0, Lcom/metamoji/media/MediaUploadManager$9;->val$ticketDatas:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1480
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager$9;->val$targetPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1482
    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager$9;->val$targetPages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtPageController;

    .line 1483
    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager$9;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iget-object v4, p0, Lcom/metamoji/media/MediaUploadManager$9;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v5, p0, Lcom/metamoji/media/MediaUploadManager$9;->val$ticketDatas:Ljava/util/List;

    invoke-virtual {v3, v2, v4, v5}, Lcom/metamoji/media/MediaUploadManager;->processOnePage(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtEditorWindowController;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
