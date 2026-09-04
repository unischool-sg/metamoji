.class public interface abstract Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;
.super Ljava/lang/Object;
.source "VcRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/audio/VcRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IVcRecorderListener"
.end annotation


# virtual methods
.method public abstract recorderBeginInterruptionToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
.end method

.method public abstract recorderEndInterruptionToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
.end method

.method public abstract recorderStartedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
.end method

.method public abstract recorderStoppedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
.end method

.method public abstract recorderStoppingToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
.end method

.method public abstract recorderWasReadyToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
.end method
