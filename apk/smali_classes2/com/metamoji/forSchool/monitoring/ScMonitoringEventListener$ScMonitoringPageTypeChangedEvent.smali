.class public Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageTypeChangedEvent;
.super Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringEvent;
.source "ScMonitoringEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScMonitoringPageTypeChangedEvent"
.end annotation


# instance fields
.field public pageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringEvent;-><init>()V

    return-void
.end method
