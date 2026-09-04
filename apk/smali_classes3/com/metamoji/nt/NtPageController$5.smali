.class Lcom/metamoji/nt/NtPageController$5;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->pageActivated(Lcom/metamoji/df/controller/DfPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;

.field final synthetic val$pageController:Lcom/metamoji/df/controller/DfPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2790
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$5;->this$0:Lcom/metamoji/nt/NtPageController;

    iput-object p2, p0, Lcom/metamoji/nt/NtPageController$5;->val$pageController:Lcom/metamoji/df/controller/DfPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2792
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController$5;->val$pageController:Lcom/metamoji/df/controller/DfPageController;

    check-cast v1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/MediaUploadManager;->notifyMediaUploadToPage(Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method
