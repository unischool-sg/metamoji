.class public final synthetic Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/transformer/OnMediaItemChangedListener;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/media3/transformer/GraphInput;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;ILandroidx/media3/transformer/GraphInput;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;

    iput p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/transformer/GraphInput;

    return-void
.end method


# virtual methods
.method public final onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V
    .locals 10

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;

    iget v1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/transformer/GraphInput;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->lambda$onOutputFormat$0$androidx-media3-transformer-TransformerInternal$SequenceAssetLoaderListener(ILandroidx/media3/transformer/GraphInput;Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V

    return-void
.end method
