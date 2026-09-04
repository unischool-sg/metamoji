.class public final synthetic Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/transformer/WatchdogTimer$Listener;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/Transformer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/transformer/Transformer;

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/transformer/Transformer;

    invoke-virtual {v0}, Landroidx/media3/transformer/Transformer;->lambda$maybeInitializeExportWatchdogTimer$0$androidx-media3-transformer-Transformer()V

    return-void
.end method
