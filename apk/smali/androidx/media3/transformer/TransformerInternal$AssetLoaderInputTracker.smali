.class final Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;
.super Ljava/lang/Object;
.source "TransformerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/TransformerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssetLoaderInputTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;
    }
.end annotation


# instance fields
.field private final sequencesMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final trackTypeToNumberOfRegisteredGraphInput:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final trackTypeToSampleExporter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/transformer/SampleExporter;",
            ">;"
        }
    .end annotation
.end field

.field private final trackTypeToShouldTranscode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/Composition;)V
    .locals 3

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    const/4 v0, 0x0

    .line 896
    :goto_0
    iget-object v1, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 897
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    new-instance v2, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    invoke-direct {v2}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToSampleExporter:Landroid/util/SparseArray;

    .line 900
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToShouldTranscode:Landroid/util/SparseArray;

    .line 901
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToNumberOfRegisteredGraphInput:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getAssetLoaderInputFormat(II)Landroidx/media3/common/Format;
    .locals 1

    .line 909
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    .line 910
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iget-object p1, p1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->trackTypeToFirstAssetLoaderInputFormat:Landroid/util/SparseArray;

    .line 911
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 912
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Format;

    return-object p1
.end method

.method public getIndexForPrimarySequence(I)I
    .locals 2

    .line 964
    invoke-virtual {p0}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->hasRegisteredAllTracks()Z

    move-result v0

    const-string v1, "Primary track can only be queried after all tracks are added."

    .line 963
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 966
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 967
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    .line 968
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iget-object v1, v1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->trackTypeToFirstAssetLoaderInputFormat:Landroid/util/SparseArray;

    .line 969
    invoke-static {v1, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getOutputTrackCount()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1024
    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1025
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    .line 1026
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iget-object v3, v3, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->trackTypeToFirstAssetLoaderInputFormat:Landroid/util/SparseArray;

    const/4 v4, 0x1

    .line 1027
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    :cond_0
    const/4 v5, 0x2

    .line 1030
    invoke-static {v3, v5}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v2

    return v1
.end method

.method public getSampleExporter(I)Landroidx/media3/transformer/SampleExporter;
    .locals 1

    .line 1086
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToSampleExporter:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/SampleExporter;

    return-object p1
.end method

.method public hasAllTrackCounts()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 936
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 937
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iget v2, v2, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->requiredTrackCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hasAssociatedAllTracksWithGraphInput(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1012
    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1013
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iget-object v3, v3, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->trackTypeToFirstAssetLoaderInputFormat:Landroid/util/SparseArray;

    invoke-static {v3, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1017
    :cond_1
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToNumberOfRegisteredGraphInput:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public hasMultipleConcurrentVideoTracks()Z
    .locals 5

    .line 1042
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v3, v0

    .line 1047
    :goto_0
    iget-object v4, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1048
    iget-object v4, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    .line 1049
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iget-object v4, v4, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->trackTypeToFirstAssetLoaderInputFormat:Landroid/util/SparseArray;

    .line 1048
    invoke-static {v4, v2}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-le v3, v0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public hasRegisteredAllTracks()Z
    .locals 4

    .line 981
    invoke-virtual {p0}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->hasAllTrackCounts()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 984
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 985
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    .line 986
    iget v3, v2, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->requiredTrackCount:I

    iget-object v2, v2, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->trackTypeToFirstAssetLoaderInputFormat:Landroid/util/SparseArray;

    .line 987
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v3, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public registerGraphInput(I)V
    .locals 2

    .line 1000
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToNumberOfRegisteredGraphInput:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToNumberOfRegisteredGraphInput:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    .line 1003
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToNumberOfRegisteredGraphInput:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public registerSampleExporter(ILandroidx/media3/transformer/SampleExporter;)V
    .locals 2

    .line 1058
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToSampleExporter:Landroid/util/SparseArray;

    .line 1059
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Exactly one SampleExporter can be added for each track type."

    .line 1058
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1061
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToSampleExporter:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public registerTrack(ILandroidx/media3/common/Format;)V
    .locals 2

    .line 949
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result v0

    .line 950
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    .line 951
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iget-object p1, p1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->trackTypeToFirstAssetLoaderInputFormat:Landroid/util/SparseArray;

    .line 952
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 953
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public sequenceHasMultipleTracks(I)Z
    .locals 1

    .line 920
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iget-object p1, p1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->trackTypeToFirstAssetLoaderInputFormat:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setShouldTranscode(IZ)V
    .locals 2

    .line 1066
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToShouldTranscode:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    .line 1070
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToShouldTranscode:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1067
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void

    .line 1070
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setTrackCount(II)V
    .locals 1

    .line 928
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequencesMetadata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;

    iput p2, p1, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker$SequenceMetadata;->requiredTrackCount:I

    return-void
.end method

.method public shouldTranscode(I)Z
    .locals 1

    .line 1075
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToShouldTranscode:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1076
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->trackTypeToShouldTranscode:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
