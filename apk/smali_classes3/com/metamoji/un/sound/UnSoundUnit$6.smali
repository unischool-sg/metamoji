.class Lcom/metamoji/un/sound/UnSoundUnit$6;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->updateRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1283
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$6;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updateRecorder()V

    :cond_0
    return-void
.end method
