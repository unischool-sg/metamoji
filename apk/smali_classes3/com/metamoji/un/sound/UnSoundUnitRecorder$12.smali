.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$12;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$12;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$12;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->seekTime_:D

    .line 483
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$12;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    .line 484
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$12;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->stop(ZLjava/lang/Runnable;)Z

    .line 486
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$12;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->stopAudioTimer()V

    return-void
.end method
