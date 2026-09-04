.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForTakeSnapShotAllPages.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->processOnePage(Lcom/metamoji/nt/NtPageController;)V
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
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

.field final synthetic val$context:Lcom/metamoji/df/controller/ControllerContext;

.field final synthetic val$pageController:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext;)V
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

    .line 102
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;->val$pageController:Lcom/metamoji/nt/NtPageController;

    iput-object p3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;->val$context:Lcom/metamoji/df/controller/ControllerContext;

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

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
