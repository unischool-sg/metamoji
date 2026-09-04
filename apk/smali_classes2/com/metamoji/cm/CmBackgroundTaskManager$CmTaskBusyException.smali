.class public Lcom/metamoji/cm/CmBackgroundTaskManager$CmTaskBusyException;
.super Lcom/metamoji/cm/CmException;
.source "CmBackgroundTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmBackgroundTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmTaskBusyException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 286
    const-string v0, "CmTaskManager: cannot accept the request."

    invoke-direct {p0, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    return-void
.end method
