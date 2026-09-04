.class public Landroidx/media3/transformer/CompositionFrameMetadata;
.super Ljava/lang/Object;
.source "CompositionFrameMetadata.java"

# interfaces
.implements Landroidx/media3/effect/Frame$Metadata;


# instance fields
.field public final composition:Landroidx/media3/transformer/Composition;

.field public final itemIndex:I

.field public final sequenceIndex:I


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/Composition;II)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/media3/transformer/CompositionFrameMetadata;->composition:Landroidx/media3/transformer/Composition;

    .line 44
    iput p2, p0, Landroidx/media3/transformer/CompositionFrameMetadata;->sequenceIndex:I

    .line 45
    iput p3, p0, Landroidx/media3/transformer/CompositionFrameMetadata;->itemIndex:I

    return-void
.end method
