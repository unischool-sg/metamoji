.class Lcom/metamoji/media/voice/controller/VcRecordingsController$29;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData$IForEachBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRemoveIndexDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

.field final synthetic val$voiceTagInstances:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;Ljava/util/List;)V
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

    .line 2764
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$29;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$29;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$29;->val$voiceTagInstances:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public block(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 2768
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$29;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->removeIndex(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$29;->val$voiceTagInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 2772
    const-string v2, "indexId"

    invoke-virtual {v1, v2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 2773
    const-string/jumbo v3, "ticket"

    invoke-virtual {v1, v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v3

    .line 2774
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2775
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$29;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
