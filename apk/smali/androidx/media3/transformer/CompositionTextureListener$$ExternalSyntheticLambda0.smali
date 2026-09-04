.class public final synthetic Landroidx/media3/transformer/CompositionTextureListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/media3/effect/GlTextureProducer;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/GlTextureProducer;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionTextureListener$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/effect/GlTextureProducer;

    iput-wide p2, p0, Landroidx/media3/transformer/CompositionTextureListener$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTextureListener$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/effect/GlTextureProducer;

    iget-wide v1, p0, Landroidx/media3/transformer/CompositionTextureListener$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Landroidx/media3/common/GlTextureInfo;

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/transformer/CompositionTextureListener;->lambda$onTextureRendered$0(Landroidx/media3/effect/GlTextureProducer;JLandroidx/media3/common/GlTextureInfo;)V

    return-void
.end method
