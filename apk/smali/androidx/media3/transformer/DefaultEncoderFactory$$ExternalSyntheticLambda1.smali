.class public final synthetic Landroidx/media3/transformer/DefaultEncoderFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/transformer/DefaultEncoderFactory$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final getParameterSupportGap(Landroid/media/MediaCodecInfo;)I
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/DefaultEncoderFactory$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/transformer/DefaultEncoderFactory$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1}, Landroidx/media3/transformer/DefaultEncoderFactory;->lambda$filterEncodersByBitrateMode$2(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
