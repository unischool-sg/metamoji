.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$10;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->play()V
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

    .line 438
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 442
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-wide v1, v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->seekTime_:D

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->seek(D)V

    .line 443
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$10;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->play()V

    return-void
.end method
