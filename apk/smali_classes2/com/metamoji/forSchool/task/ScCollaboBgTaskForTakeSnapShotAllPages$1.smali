.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;
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
        "Lcom/metamoji/df/controller/ControllerContext;",
        ">;"
    }
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

    .line 73
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/df/controller/ControllerContext;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0, v0}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v1, v0, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 79
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;->call()Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    return-object v0
.end method
