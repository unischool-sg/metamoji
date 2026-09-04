.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$3;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updateRecorderBar()V
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

    .line 196
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$3;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$3;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getSoundUnitRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$3;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v1, v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$3;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v1, v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->updateFrame(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method
