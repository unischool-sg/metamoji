.class public interface abstract Landroidx/media3/muxer/ByteBufferAllocator;
.super Ljava/lang/Object;
.source "ByteBufferAllocator.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/muxer/ByteBufferAllocator;


# direct methods
.method public static synthetic $r8$lambda$o9eIiP0_MIVZMvqatvfGEruEy30(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Landroidx/media3/muxer/ByteBufferAllocator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/muxer/ByteBufferAllocator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/muxer/ByteBufferAllocator;->DEFAULT:Landroidx/media3/muxer/ByteBufferAllocator;

    return-void
.end method


# virtual methods
.method public abstract allocate(I)Ljava/nio/ByteBuffer;
.end method
