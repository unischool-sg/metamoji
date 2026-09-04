.class Lcom/metamoji/un/sound/UnSoundUnit$5;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V
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

    .line 1258
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1263
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->removeViewportListener()V

    .line 1265
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-static {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->-$$Nest$mgetUnitManager(Lcom/metamoji/un/sound/UnSoundUnit;)Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setActiveUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 1267
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->closePlayer()V

    .line 1269
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayer;->setSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 1270
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iput-object v1, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return-void
.end method
