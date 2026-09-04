.class Lcom/metamoji/media/voice/controller/VcRecordingsController$6;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayFromTimeToTime(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$endTime:D

.field final synthetic val$startTime:D


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;DD)V
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

    .line 744
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$6;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-wide p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$6;->val$startTime:D

    iput-wide p4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$6;->val$endTime:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/metamoji/media/voice/audio/VcPlayer;)V
    .locals 4

    .line 747
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$6;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iget-wide v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$6;->val$startTime:D

    iget-wide v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$6;->val$endTime:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromTime(DD)V

    return-void
.end method
