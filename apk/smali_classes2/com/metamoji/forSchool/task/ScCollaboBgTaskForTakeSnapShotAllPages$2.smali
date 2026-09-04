.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForTakeSnapShotAllPages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->processOnePage(Lcom/metamoji/nt/NtPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

.field final synthetic val$pageController:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;Lcom/metamoji/nt/NtPageController;)V
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

    .line 88
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->takeSnapShotWithoutEditLayer()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

    iget-object v1, v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->snapShotDic:Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
