.class final Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;
.super Ljava/lang/Object;
.source "EditingMetricsCollector.java"

# interfaces
.implements Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/EditingMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultMetricsReporter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter$Factory;
    }
.end annotation


# instance fields
.field private editingSession:Landroid/media/metrics/EditingSession;

.field private metricsReported:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "media_metrics"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/metrics/MediaMetricsManager;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/media/metrics/MediaMetricsManager;->createEditingSession()Landroid/media/metrics/EditingSession;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/EditingMetricsCollector$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/media/metrics/EditingSession;->close()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    :cond_0
    return-void
.end method

.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/media/metrics/EditingSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public reportMetrics(Landroid/media/metrics/EditingEndedEvent;)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->metricsReported:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Landroid/media/metrics/EditingSession;->reportEditingEndedEvent(Landroid/media/metrics/EditingEndedEvent;)V

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->metricsReported:Z

    :cond_0
    return-void
.end method
