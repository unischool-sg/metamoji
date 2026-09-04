.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$7;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForReflectOfflineEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->processOneRestoredPageReflectOfflineEdit(Lcom/metamoji/nt/NtPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

.field final synthetic val$pageController:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Lcom/metamoji/nt/NtPageController;)V
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

    .line 393
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$7;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$7;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$7;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$7;->val$pageController:Lcom/metamoji/nt/NtPageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    .line 398
    const-string v0, "processOneRestoredPageReflectOfflineEdit.processOneRestoredPage updating thumbnail finished"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
