.class public final Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
.super Ljava/lang/Object;
.source "EditedMediaItemSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/EditedMediaItemSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private isLooping:Z

.field private final items:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private trackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v1, p1, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 146
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    .line 147
    iget-boolean v0, p1, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->isLooping:Z

    .line 148
    iget-object p1, p1, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/EditedMediaItemSequence$1;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 139
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 110
    invoke-static {}, Landroidx/media3/transformer/EditedMediaItemSequence;->access$000()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    const-string/jumbo v1, "trackTypes must only contain TRACK_TYPE_AUDIO and/or TRACK_TYPE_VIDEO."

    .line 109
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 112
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 113
    new-instance p1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/transformer/EditedMediaItem;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 126
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 94
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Lcom/google/common/collect/ImmutableSet;
    .locals 0

    .line 94
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->isLooping:Z

    return p0
.end method


# virtual methods
.method public addGap(J)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 4

    .line 199
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    new-instance v1, Landroidx/media3/transformer/EditedMediaItem$Builder;

    new-instance v2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v3, "androidx-media3-GapMediaItem"

    .line 201
    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/transformer/EditedMediaItem$Builder;-><init>(Landroidx/media3/common/MediaItem;)V

    .line 202
    invoke-virtual {v1, p1, p2}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setDurationUs(J)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p1

    .line 199
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public addItem(Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)",
            "Landroidx/media3/transformer/EditedMediaItemSequence$Builder;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public varargs addItems([Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->items:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public build()Landroidx/media3/transformer/EditedMediaItemSequence;
    .locals 2

    .line 265
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;Landroidx/media3/transformer/EditedMediaItemSequence$1;)V

    return-object v0
.end method

.method public experimentalSetForceAudioTrack(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x1

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 230
    new-instance p1, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p1}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 231
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    return-object p0

    .line 233
    :cond_0
    iget-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 234
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Sets$SetView;->immutableCopy()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    return-object p0
.end method

.method public experimentalSetForceVideoTrack(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x2

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 248
    new-instance p1, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p1}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 249
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    return-object p0

    .line 251
    :cond_0
    iget-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 252
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Sets$SetView;->immutableCopy()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    return-object p0
.end method

.method public setIsLooping(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 0

    .line 217
    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->isLooping:Z

    return-object p0
.end method
