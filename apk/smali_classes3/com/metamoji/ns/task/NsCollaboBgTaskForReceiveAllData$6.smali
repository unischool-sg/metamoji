.class Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForReceiveAllData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->processOneRestoredPageInner(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

.field final synthetic val$boothID:Ljava/lang/String;

.field final synthetic val$sync:Lcom/metamoji/cm/ResetableEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Ljava/lang/String;Lcom/metamoji/cm/ResetableEvent;)V
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

    .line 246
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;->val$boothID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;->val$sync:Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->isCancelled()Z

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;->val$boothID:Ljava/lang/String;

    new-instance v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6$1;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBooth(ZLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
