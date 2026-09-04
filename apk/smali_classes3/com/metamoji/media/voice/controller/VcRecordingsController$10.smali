.class Lcom/metamoji/media/voice/controller/VcRecordingsController$10;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->seekToTime(DLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$canSeek:Z

.field final synthetic val$interval:D

.field final synthetic val$playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;ZLcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 920
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-boolean p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->val$canSeek:Z

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->val$playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iput-wide p4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->val$interval:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/metamoji/media/voice/audio/VcPlayer;)V
    .locals 4

    .line 923
    iget-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->val$canSeek:Z

    if-eqz v0, :cond_1

    .line 924
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->val$playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 927
    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    if-ne p1, v0, :cond_0

    .line 925
    iget-wide v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->val$interval:D

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromTimeAfter(D)V

    return-void

    .line 927
    :cond_0
    iget-wide v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->val$interval:D

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playAndPauseFromTimeAfter(D)V

    return-void

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iget-wide v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;->val$interval:D

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromTimeAfter(D)V

    .line 931
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->pause()V

    return-void
.end method
