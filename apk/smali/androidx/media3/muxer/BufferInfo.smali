.class public final Landroidx/media3/muxer/BufferInfo;
.super Ljava/lang/Object;
.source "BufferInfo.java"


# instance fields
.field public final flags:I

.field public final presentationTimeUs:J

.field public final size:I


# direct methods
.method public constructor <init>(JII)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 43
    iput p3, p0, Landroidx/media3/muxer/BufferInfo;->size:I

    .line 44
    iput p4, p0, Landroidx/media3/muxer/BufferInfo;->flags:I

    return-void
.end method
