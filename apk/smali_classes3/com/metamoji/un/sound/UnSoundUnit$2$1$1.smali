.class Lcom/metamoji/un/sound/UnSoundUnit$2$1$1;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/un/sound/UnSoundUnit$2$1;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 638
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$2$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$2$1$1;->this$2:Lcom/metamoji/un/sound/UnSoundUnit$2$1;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$2$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$2;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    return-void
.end method
