.class final Landroidx/media3/transformer/DefaultCodec$Api29;
.super Ljava/lang/Object;
.source "DefaultCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api29"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanonicalName(Landroid/media/MediaCodec;)Ljava/lang/String;
    .locals 0

    .line 547
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
