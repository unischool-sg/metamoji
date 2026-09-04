.class Lcom/metamoji/media/MediaUploadManager$11;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->processOnePage(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtEditorWindowController;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager;

.field final synthetic val$context:Lcom/metamoji/df/controller/ControllerContext;

.field final synthetic val$pageController:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1527
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$11;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager$11;->val$pageController:Lcom/metamoji/nt/NtPageController;

    iput-object p3, p0, Lcom/metamoji/media/MediaUploadManager$11;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1527
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager$11;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 1530
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager$11;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager$11;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    if-eqz v0, :cond_0

    .line 1532
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager$11;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
