.class public final synthetic Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/inspector/FrameExtractorInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    invoke-virtual {v0}, Landroidx/media3/inspector/FrameExtractorInternal;->lambda$releaseReference$0$androidx-media3-inspector-FrameExtractorInternal()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
