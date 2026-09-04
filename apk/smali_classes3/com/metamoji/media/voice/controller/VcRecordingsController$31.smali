.class Lcom/metamoji/media/voice/controller/VcRecordingsController$31;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData$IForEachBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleChangeIndexTimeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
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

    .line 2895
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$31;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$31;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public block(Ljava/lang/String;Ljava/lang/String;DD)Z
    .locals 7

    .line 2899
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$31;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setIndexTime(Ljava/lang/String;Ljava/lang/String;DD)V

    const/4 p1, 0x1

    return p1
.end method
