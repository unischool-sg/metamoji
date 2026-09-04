.class final Landroidx/media3/muxer/LinearByteBufferAllocator;
.super Ljava/lang/Object;
.source "LinearByteBufferAllocator.java"

# interfaces
.implements Landroidx/media3/muxer/ByteBufferAllocator;


# instance fields
.field private memoryPool:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/muxer/LinearByteBufferAllocator;->memoryPool:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public allocate(I)Ljava/nio/ByteBuffer;
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 41
    iget-object v0, p0, Landroidx/media3/muxer/LinearByteBufferAllocator;->memoryPool:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 42
    iget-object v0, p0, Landroidx/media3/muxer/LinearByteBufferAllocator;->memoryPool:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/muxer/LinearByteBufferAllocator;->memoryPool:Ljava/nio/ByteBuffer;

    .line 45
    :cond_1
    iget-object v0, p0, Landroidx/media3/muxer/LinearByteBufferAllocator;->memoryPool:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    iget-object v1, p0, Landroidx/media3/muxer/LinearByteBufferAllocator;->memoryPool:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/media3/muxer/LinearByteBufferAllocator;->memoryPool:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method
