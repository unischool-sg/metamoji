.class Lcom/metamoji/ns/NsShareViewCommand$1;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand;->getShareViewList(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

.field final synthetic val$searchCondDic:Ljava/util/Map;

.field final synthetic val$sortCondList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$1;->val$completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

    iput-object p2, p0, Lcom/metamoji/ns/NsShareViewCommand$1;->val$searchCondDic:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/ns/NsShareViewCommand$1;->val$sortCondList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$1;->val$completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v0}, Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;->onCompleted(ZLjava/util/List;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ns/NsShareViewCommand$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsShareViewCommand$1$1;-><init>(Lcom/metamoji/ns/NsShareViewCommand$1;)V

    invoke-virtual {p1, v1, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method
