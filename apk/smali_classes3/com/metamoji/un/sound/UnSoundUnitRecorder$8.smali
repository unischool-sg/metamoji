.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderStoppedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

.field final synthetic val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;Lcom/metamoji/media/voice/audio/VcRecorder;)V
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

    .line 388
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->stopAudioTimer()V

    .line 392
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->getTempDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v3}, Lcom/metamoji/media/voice/audio/VcRecorder;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    .line 393
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->prepareToPlay()Z

    return-void

    .line 396
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
