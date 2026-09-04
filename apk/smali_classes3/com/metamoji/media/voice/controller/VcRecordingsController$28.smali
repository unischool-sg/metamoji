.class Lcom/metamoji/media/voice/controller/VcRecordingsController$28;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData$IForEachBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleAddIndexDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V
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

    .line 2701
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$28;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$28;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public block(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2705
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$28;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->addIndex(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
