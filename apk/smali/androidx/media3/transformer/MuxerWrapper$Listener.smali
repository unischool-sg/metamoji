.class public interface abstract Landroidx/media3/transformer/MuxerWrapper$Listener;
.super Ljava/lang/Object;
.source "MuxerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/MuxerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onEnded(JJ)V
.end method

.method public abstract onError(Landroidx/media3/transformer/ExportException;)V
.end method

.method public abstract onSampleWrittenOrDropped()V
.end method

.method public abstract onTrackEnded(ILandroidx/media3/common/Format;II)V
.end method
