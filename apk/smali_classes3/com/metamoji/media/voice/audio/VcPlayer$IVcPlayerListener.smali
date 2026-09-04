.class public interface abstract Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;
.super Ljava/lang/Object;
.source "VcPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/audio/VcPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IVcPlayerListener"
.end annotation


# virtual methods
.method public abstract playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
.end method

.method public abstract playerStartedToPlay()V
.end method

.method public abstract playerWasPaused()V
.end method

.method public abstract playerWasReadyToPlay()V
.end method

.method public abstract playerWasSeeked()V
.end method

.method public abstract playerWillFinishToPlay()V
.end method
