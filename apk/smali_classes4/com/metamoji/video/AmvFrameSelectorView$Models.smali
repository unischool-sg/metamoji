.class final Lcom/metamoji/video/AmvFrameSelectorView$Models;
.super Ljava/lang/Object;
.source "AmvFrameSelectorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvFrameSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Models"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0006\"\u0004\u0008\n\u0010\u0008R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFrameSelectorView$Models;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvFrameSelectorView;)V",
        "isPlayerPrepared",
        "",
        "()Z",
        "setPlayerPrepared",
        "(Z)V",
        "isVideoInfoPrepared",
        "setVideoInfoPrepared",
        "duration",
        "",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "video"
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
.field private duration:J

.field private isPlayerPrepared:Z

.field private isVideoInfoPrepared:Z

.field final synthetic this$0:Lcom/metamoji/video/AmvFrameSelectorView;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvFrameSelectorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$Models;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Models;->duration:J

    return-wide v0
.end method

.method public final isPlayerPrepared()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isPlayerPrepared:Z

    return v0
.end method

.method public final isVideoInfoPrepared()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isVideoInfoPrepared:Z

    return v0
.end method

.method public final setDuration(J)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$Models;->duration:J

    return-void
.end method

.method public final setPlayerPrepared(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isPlayerPrepared:Z

    return-void
.end method

.method public final setVideoInfoPrepared(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isVideoInfoPrepared:Z

    return-void
.end method
