.class Lcom/metamoji/media/voice/controller/VcRecordingsController$3;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayForward()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$currentTime:D

.field final synthetic val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;D)V
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

    .line 483
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$3;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$3;->val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iput-wide p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$3;->val$currentTime:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$3;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$3;->val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iget-wide v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$3;->val$currentTime:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playForward(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;D)V

    return-void
.end method
