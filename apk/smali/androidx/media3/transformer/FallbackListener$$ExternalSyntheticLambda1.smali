.class public final synthetic Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/FallbackListener;

.field public final synthetic f$1:Landroidx/media3/transformer/TransformationRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/FallbackListener;Landroidx/media3/transformer/TransformationRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/transformer/FallbackListener;

    iput-object p2, p0, Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/transformer/TransformationRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/transformer/FallbackListener;

    iget-object v1, p0, Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/transformer/TransformationRequest;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/FallbackListener;->lambda$onTransformationRequestFinalized$1$androidx-media3-transformer-FallbackListener(Landroidx/media3/transformer/TransformationRequest;)V

    return-void
.end method
