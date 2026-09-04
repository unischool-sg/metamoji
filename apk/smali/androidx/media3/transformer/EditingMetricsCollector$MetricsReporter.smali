.class public interface abstract Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;
.super Ljava/lang/Object;
.source "EditingMetricsCollector.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/EditingMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetricsReporter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;
    }
.end annotation


# virtual methods
.method public abstract reportMetrics(Landroid/media/metrics/EditingEndedEvent;)V
.end method
