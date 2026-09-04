.class Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;
.super Ljava/lang/Object;
.source "DefaultEncoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultEncoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncoderQueryResult"
.end annotation


# instance fields
.field public final encoder:Landroid/media/MediaCodecInfo;

.field public final supportedFormat:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodecInfo;Landroidx/media3/common/Format;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;->encoder:Landroid/media/MediaCodecInfo;

    .line 683
    iput-object p2, p0, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;->supportedFormat:Landroidx/media3/common/Format;

    return-void
.end method
