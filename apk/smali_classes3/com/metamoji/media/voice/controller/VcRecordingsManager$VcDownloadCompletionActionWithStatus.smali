.class public abstract Lcom/metamoji/media/voice/controller/VcRecordingsManager$VcDownloadCompletionActionWithStatus;
.super Ljava/lang/Object;
.source "VcRecordingsManager.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "VcDownloadCompletionActionWithStatus"
.end annotation


# instance fields
.field _status:Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;

.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VcDownloadCompletionActionWithStatus;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VcDownloadCompletionActionWithStatus;->_status:Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;

    return-void
.end method
