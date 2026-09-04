.class Lcom/metamoji/media/MediaUploadManager$10$1;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager$10;->call()Lcom/metamoji/df/controller/ControllerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/MediaUploadManager$10;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager$10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1508
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$10$1;->this$1:Lcom/metamoji/media/MediaUploadManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager$10$1;->this$1:Lcom/metamoji/media/MediaUploadManager$10;

    iget-object v0, v0, Lcom/metamoji/media/MediaUploadManager$10;->val$pageController:Lcom/metamoji/nt/NtPageController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->makeLayersForSchool(Z)V

    return-void
.end method
