.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$4;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updatePlayerBar()V
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

    .line 211
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$4;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$4;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getSoundUnitRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$4;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v1, v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$4;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v1, v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->updateFrame(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method
