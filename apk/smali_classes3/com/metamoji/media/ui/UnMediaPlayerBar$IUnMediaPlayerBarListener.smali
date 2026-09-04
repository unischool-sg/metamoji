.class public interface abstract Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;
.super Ljava/lang/Object;
.source "UnMediaPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/UnMediaPlayerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUnMediaPlayerBarListener"
.end annotation


# virtual methods
.method public abstract getDuration()D
.end method

.method public abstract getUnitId()Ljava/lang/String;
.end method

.method public abstract seekBarValueChanging(D)V
.end method

.method public abstract seekBarValueChangingEnd()V
.end method

.method public abstract seekBarValueChangingStart()V
.end method

.method public abstract tappedPlayButton()V
.end method

.method public abstract tappedReRecordButton()V
.end method
