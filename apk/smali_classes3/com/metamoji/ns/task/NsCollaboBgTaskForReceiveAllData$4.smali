.class Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForReceiveAllData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->processOneRestoredPage(Lcom/metamoji/nt/NtPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

.field final synthetic val$boothID:Ljava/lang/String;

.field final synthetic val$pageController:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V
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

    .line 218
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;->val$pageController:Lcom/metamoji/nt/NtPageController;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;->val$boothID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;->val$pageController:Lcom/metamoji/nt/NtPageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    .line 223
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;->val$boothID:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ReceiveAllData.processOneRestoredPage updating thumbnail finished %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
