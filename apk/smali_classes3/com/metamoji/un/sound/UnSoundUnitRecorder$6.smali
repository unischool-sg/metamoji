.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->startAudioTimer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

.field final synthetic val$isPlayer:Z


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;Z)V
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

    .line 305
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iput-boolean p2, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->val$isPlayer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 308
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    new-instance v1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v1, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    .line 313
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v1, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    new-instance v2, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6$1;

    invoke-direct {v2, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0xa

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void
.end method
