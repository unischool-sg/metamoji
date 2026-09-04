.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerDidPlayToEndTime()V
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

    .line 561
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->playerDidPlayToEndTime()V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v1, v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->prepareToPlay(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 579
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setSeekBarTime()V

    .line 580
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setCurrentTimeLabel()V

    :cond_2
    return-void
.end method
