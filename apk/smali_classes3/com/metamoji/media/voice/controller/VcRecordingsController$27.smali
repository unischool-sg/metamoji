.class Lcom/metamoji/media/voice/controller/VcRecordingsController$27;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData$IForEachBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRenameRecordingTitleDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$document:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/nt/NtDocument;)V
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

    .line 2635
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$27;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$27;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$27;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public block(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2639
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$27;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$27;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setTitle(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;)V

    const/4 p1, 0x1

    return p1
.end method
