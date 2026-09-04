.class public final Landroidx/media3/transformer/NoWriteMuxer$Factory;
.super Ljava/lang/Object;
.source "NoWriteMuxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/NoWriteMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final audioMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final videoMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/media3/transformer/NoWriteMuxer$Factory;->audioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 45
    iput-object p2, p0, Landroidx/media3/transformer/NoWriteMuxer$Factory;->videoMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroidx/media3/muxer/Muxer;
    .locals 0

    .line 50
    new-instance p1, Landroidx/media3/transformer/NoWriteMuxer;

    invoke-direct {p1}, Landroidx/media3/transformer/NoWriteMuxer;-><init>()V

    return-object p1
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

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 56
    iget-object p1, p0, Landroidx/media3/transformer/NoWriteMuxer$Factory;->audioMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 59
    iget-object p1, p0, Landroidx/media3/transformer/NoWriteMuxer$Factory;->videoMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p1

    .line 61
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method
