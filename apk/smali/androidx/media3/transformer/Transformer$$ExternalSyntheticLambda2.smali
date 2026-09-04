.class public final synthetic Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/Transformer;

.field public final synthetic f$1:Landroidx/media3/transformer/ExportResult;

.field public final synthetic f$2:Landroidx/media3/transformer/ExportException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/transformer/Transformer;

    iput-object p2, p0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;->f$1:Landroidx/media3/transformer/ExportResult;

    iput-object p3, p0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;->f$2:Landroidx/media3/transformer/ExportException;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/transformer/Transformer;

    iget-object v1, p0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;->f$1:Landroidx/media3/transformer/ExportResult;

    iget-object v2, p0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;->f$2:Landroidx/media3/transformer/ExportException;

    check-cast p1, Landroidx/media3/transformer/Transformer$Listener;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/media3/transformer/Transformer;->lambda$onExportCompletedWithError$2$androidx-media3-transformer-Transformer(Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;Landroidx/media3/transformer/Transformer$Listener;)V

    return-void
.end method
