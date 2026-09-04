.class final Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;
.super Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;
.source "DefaultEncoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultEncoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoEncoderQueryResult"
.end annotation


# instance fields
.field public final supportedEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/transformer/VideoEncoderSettings;)V
    .locals 0

    .line 694
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;-><init>(Landroid/media/MediaCodecInfo;Landroidx/media3/common/Format;)V

    .line 695
    iput-object p3, p0, Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;->supportedEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

    return-void
.end method
