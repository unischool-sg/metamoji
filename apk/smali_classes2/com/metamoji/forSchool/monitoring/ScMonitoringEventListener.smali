.class public interface abstract Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;
.super Ljava/lang/Object;
.source "ScMonitoringEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageThumbnailUpdatedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageTypeChangedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageMovedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageAddedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataEndedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataStartedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringAppendStudentEvent;,
        Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringEvent;
    }
.end annotation


# virtual methods
.method public abstract appendStudent(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringAppendStudentEvent;)V
.end method

.method public abstract closeDialog()V
.end method

.method public abstract currentPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;)V
.end method

.method public abstract endReceivingData(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataEndedEvent;)V
.end method

.method public abstract pageAdded(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageAddedEvent;)V
.end method

.method public abstract pageMoved(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageMovedEvent;)V
.end method

.method public abstract pageRemoved(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;)V
.end method

.method public abstract pageThumbnailUpdated(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageThumbnailUpdatedEvent;)V
.end method

.method public abstract pageTypeChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageTypeChangedEvent;)V
.end method

.method public abstract removeStudent(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;)V
.end method

.method public abstract screenLockChanged(Z)V
.end method

.method public abstract startReceivingData(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataStartedEvent;)V
.end method

.method public abstract studentViewingPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;)V
.end method

.method public abstract updateHiddenStudentName(Z)V
.end method

.method public abstract updatePageJumpState()V
.end method

.method public abstract updatePersonalUserStatus(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;)V
.end method
