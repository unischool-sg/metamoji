.class public interface abstract Landroidx/media3/transformer/EncoderSelector;
.super Ljava/lang/Object;
.source "EncoderSelector.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/transformer/EncoderSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroidx/media3/transformer/EncoderSelector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/transformer/EncoderSelector$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/transformer/EncoderSelector;->DEFAULT:Landroidx/media3/transformer/EncoderSelector;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 45
    invoke-static {p1, p0}, Landroidx/media3/transformer/EncoderUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$static$1(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 2

    .line 40
    invoke-static {p0}, Landroidx/media3/transformer/EncoderUtil;->getSupportedEncoders(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 41
    new-instance v1, Landroidx/media3/transformer/EncoderSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/EncoderSelector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract selectEncoderInfos(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end method
