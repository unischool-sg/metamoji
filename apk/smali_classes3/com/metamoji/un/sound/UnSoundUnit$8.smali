.class Lcom/metamoji/un/sound/UnSoundUnit$8;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->addViewportListener()V
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

    .line 1509
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$8;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollChanged()V
    .locals 0

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    return-void
.end method

.method public scrollStart()V
    .locals 0

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    .line 1573
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$8;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/sound/UnSoundUnit;->updatePlayer()V

    .line 1574
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$8;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/sound/UnSoundUnit;->updateRecorder()V

    return-void
.end method

.method public zoomChanged()V
    .locals 0

    return-void
.end method

.method public zoomChanging()V
    .locals 0

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 0

    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    return-void
.end method

.method public zoomStart()V
    .locals 0

    return-void
.end method
