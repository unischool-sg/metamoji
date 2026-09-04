.class Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit$11$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2004
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2007
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-boolean v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$paused:Z

    if-nez v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->play()V

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->addViewportListener()V

    .line 2013
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-static {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->-$$Nest$mgetUnitManager(Lcom/metamoji/un/sound/UnSoundUnit;)Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    iget-object v1, v1, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v1, v1, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setActiveUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 2015
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    .line 2017
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->updatePlayer()V

    return-void
.end method
