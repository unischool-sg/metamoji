.class Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForUpdateRoomInfo.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1$1;->this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1$1;->this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;->val$secureRoomPasswordStock:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1$1;->this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;

    iget-object p1, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;->val$are:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    iget-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1$1;->this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;

    iget-object p1, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void
.end method
