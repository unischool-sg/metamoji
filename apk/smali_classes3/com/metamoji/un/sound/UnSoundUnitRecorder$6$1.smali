.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$6$1;
.super Ljava/util/TimerTask;
.source "UnSoundUnitRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;

    iget-boolean v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->val$isPlayer:Z

    .line 319
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playSequence()V

    return-void

    .line 319
    :cond_0
    iget-object v0, v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recordSequence()V

    :cond_1
    return-void
.end method
