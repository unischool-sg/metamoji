.class public interface abstract Lcom/metamoji/ns/INsCollaboHandler;
.super Ljava/lang/Object;
.source "INsCollaboHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;
    }
.end annotation


# virtual methods
.method public abstract boothUpdated(Ljava/lang/String;)V
.end method

.method public abstract collaboBoothAttached(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract collaboDirectionReceived(Ljava/lang/String;Ljava/lang/String;[BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)V
.end method

.method public abstract collaboModeChanged(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V
.end method

.method public abstract collaboPostDirectionResult(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract connectStatusChanged(Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;)V
.end method

.method public abstract deviceIdInitialized(Ljava/lang/String;)V
.end method

.method public abstract logModeChanged(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;)V
.end method

.method public abstract postDirectionAnalysis(ILjava/util/Date;Ljava/util/Date;)V
.end method

.method public abstract schoolUserModeChanged(IZ)V
.end method

.method public abstract userModeChanged(IZ)V
.end method

.method public abstract userPropertyChanged(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract userPropertyInitialized(Lcom/metamoji/ns/NsCollaboUserInfo;)V
.end method
