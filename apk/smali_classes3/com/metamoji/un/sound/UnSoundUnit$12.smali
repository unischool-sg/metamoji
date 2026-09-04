.class Lcom/metamoji/un/sound/UnSoundUnit$12;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->reRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;

.field final synthetic val$self:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;Lcom/metamoji/un/sound/UnSoundUnit;)V
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

    .line 2058
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$12;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnit$12;->val$self:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2061
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$12;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$12;->val$self:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method
