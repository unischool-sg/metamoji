.class public final synthetic Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->lambda$prepareEditingMetricsCollector$4(Landroidx/media3/transformer/EditedMediaItemSequence;)Z

    move-result p1

    return p1
.end method
