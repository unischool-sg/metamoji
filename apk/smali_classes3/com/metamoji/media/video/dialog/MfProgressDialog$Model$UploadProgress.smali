.class public final Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;
.super Ljava/lang/Object;
.source "MfProgressDialog.kt"

# interfaces
.implements Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UploadProgress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;)V",
        "bytesSent",
        "",
        "getBytesSent",
        "()J",
        "setBytesSent",
        "(J)V",
        "totalBytesToSend",
        "getTotalBytesToSend",
        "setTotalBytesToSend",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bytesSent:J

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

.field private totalBytesToSend:J


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->this$0:Lcom/metamoji/media/video/dialog/MfProgressDialog$Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesSent()J
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->bytesSent:J

    return-wide v0
.end method

.method public getPercent()I
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getPercent()I

    move-result v0

    return v0
.end method

.method public getTotalBytesToSend()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->totalBytesToSend:J

    return-wide v0
.end method

.method public setBytesSent(J)V
    .locals 0

    .line 265
    iput-wide p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->bytesSent:J

    return-void
.end method

.method public setTotalBytesToSend(J)V
    .locals 0

    .line 266
    iput-wide p1, p0, Lcom/metamoji/media/video/dialog/MfProgressDialog$Model$UploadProgress;->totalBytesToSend:J

    return-void
.end method
