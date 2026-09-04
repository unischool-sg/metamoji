.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$15$1;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    .line 618
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    return-void
.end method
