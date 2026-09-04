.class Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$5;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForReceiveAllData.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IFinish;


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

.field final synthetic val$sync:Lcom/metamoji/cm/ResetableEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/cm/ResetableEvent;)V
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

    .line 234
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$5;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$5;->val$sync:Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$5;->val$sync:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void
.end method
