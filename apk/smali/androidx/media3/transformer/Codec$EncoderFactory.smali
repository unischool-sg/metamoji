.class public interface abstract Landroidx/media3/transformer/Codec$EncoderFactory;
.super Ljava/lang/Object;
.source "Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncoderFactory"
.end annotation


# virtual methods
.method public audioNeedsEncoding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract createForAudioEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract createForVideoEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public videoNeedsEncoding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
