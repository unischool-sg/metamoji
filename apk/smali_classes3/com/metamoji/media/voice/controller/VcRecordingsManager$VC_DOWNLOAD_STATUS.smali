.class public Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;
.super Ljava/lang/Object;
.source "VcRecordingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VC_DOWNLOAD_STATUS"
.end annotation


# instance fields
.field public _status:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;->_status:I

    return-void
.end method
