.class Lcom/metamoji/ns/NsCollaboCommand$10$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$10;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$10;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 918
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$10$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$10$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$10;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$10;->val$bgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

    iget-object v0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->snapShotDic:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 923
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$10$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$10;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$10;->val$snapShotDicList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$10$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$10;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$10;->val$bgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->snapShotDic:Ljava/util/Map;

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$10$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$10;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$10;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void
.end method
