.class public final Landroidx/media3/transformer/DefaultMuxer$Factory;
.super Ljava/lang/Object;
.source "DefaultMuxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final muxerFactory:Landroidx/media3/transformer/InAppMp4Muxer$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    invoke-direct {v0}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/DefaultMuxer$Factory;->muxerFactory:Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    invoke-direct {v0}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;-><init>()V

    .line 50
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->setVideoDurationUs(J)Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/DefaultMuxer$Factory;->muxerFactory:Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroidx/media3/muxer/Muxer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 71
    new-instance v0, Landroidx/media3/transformer/DefaultMuxer;

    iget-object v1, p0, Landroidx/media3/transformer/DefaultMuxer$Factory;->muxerFactory:Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    invoke-virtual {v1, p1}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->create(Ljava/lang/String;)Landroidx/media3/transformer/InAppMp4Muxer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/transformer/DefaultMuxer;-><init>(Landroidx/media3/muxer/Muxer;Landroidx/media3/transformer/DefaultMuxer$1;)V

    return-object v0
.end method

.method public getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroidx/media3/transformer/DefaultMuxer$Factory;->muxerFactory:Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public setVideoDurationUs(J)Landroidx/media3/transformer/DefaultMuxer$Factory;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/media3/transformer/DefaultMuxer$Factory;->muxerFactory:Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->setVideoDurationUs(J)Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    return-object p0
.end method
