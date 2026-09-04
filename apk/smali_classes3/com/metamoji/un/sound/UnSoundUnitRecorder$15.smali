.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->changeToRecorderBar()V
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

    .line 610
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 613
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    const-string/jumbo v1, "soundButton.m4a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->prepareToRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updateRecorderBar()V

    return-void
.end method
