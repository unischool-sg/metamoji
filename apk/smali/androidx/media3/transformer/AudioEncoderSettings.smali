.class public final Landroidx/media3/transformer/AudioEncoderSettings;
.super Ljava/lang/Object;
.source "AudioEncoderSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AudioEncoderSettings$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/transformer/AudioEncoderSettings;

.field public static final NO_VALUE:I = -0x1


# instance fields
.field public final bitrate:I

.field public final profile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroidx/media3/transformer/AudioEncoderSettings$Builder;

    invoke-direct {v0}, Landroidx/media3/transformer/AudioEncoderSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioEncoderSettings$Builder;->build()Landroidx/media3/transformer/AudioEncoderSettings;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/AudioEncoderSettings;->DEFAULT:Landroidx/media3/transformer/AudioEncoderSettings;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Landroidx/media3/transformer/AudioEncoderSettings;->profile:I

    .line 94
    iput p2, p0, Landroidx/media3/transformer/AudioEncoderSettings;->bitrate:I

    return-void
.end method

.method synthetic constructor <init>(IILandroidx/media3/transformer/AudioEncoderSettings$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/AudioEncoderSettings;-><init>(II)V

    return-void
.end method
