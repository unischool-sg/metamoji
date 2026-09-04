.class public interface abstract Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;
.super Ljava/lang/Object;
.source "InputSurfaceInterface.java"


# virtual methods
.method public abstract configure(Landroid/media/MediaCodec;)V
.end method

.method public abstract configure(Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;)V
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract release()V
.end method

.method public abstract setPresentationTime(J)V
.end method

.method public abstract swapBuffers()Z
.end method

.method public abstract updateSize(II)V
.end method
