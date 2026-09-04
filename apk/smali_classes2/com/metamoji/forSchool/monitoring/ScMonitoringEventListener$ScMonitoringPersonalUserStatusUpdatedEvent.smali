.class public Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;
.super Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringEvent;
.source "ScMonitoringEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScMonitoringPersonalUserStatusUpdatedEvent"
.end annotation


# instance fields
.field public status:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringEvent;-><init>()V

    return-void
.end method
