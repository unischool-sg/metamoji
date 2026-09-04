.class public final synthetic Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/CompositionPlayer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda5;->f$0:Landroidx/media3/transformer/CompositionPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda5;->f$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionPlayer;->lambda$experimentalRedrawLastFrame$0$androidx-media3-transformer-CompositionPlayer()V

    return-void
.end method
