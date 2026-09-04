.class final Lcom/metamoji/video/AmvHorzScrollView$Models;
.super Ljava/lang/Object;
.source "AmvHorzScrollView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvHorzScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Models"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\r\"\u0004\u0008\u0018\u0010\u000fR\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\u001f\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001cR\u0011\u0010!\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/video/AmvHorzScrollView$Models;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvHorzScrollView;)V",
        "trimmingEnabled",
        "",
        "getTrimmingEnabled",
        "()Z",
        "setTrimmingEnabled",
        "(Z)V",
        "position",
        "",
        "getPosition",
        "()J",
        "setPosition",
        "(J)V",
        "totalRange",
        "getTotalRange",
        "setTotalRange",
        "leftMask",
        "getLeftMask",
        "setLeftMask",
        "rightMask",
        "getRightMask",
        "setRightMask",
        "scrollPixel",
        "",
        "getScrollPixel",
        "()I",
        "leftMaskPixel",
        "getLeftMaskPixel",
        "rightMaskPixel",
        "getRightMaskPixel",
        "totalRangePixel",
        "getTotalRangePixel",
        "resetWithTotalRange",
        "",
        "range",
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
.field private leftMask:J

.field private position:J

.field private rightMask:J

.field final synthetic this$0:Lcom/metamoji/video/AmvHorzScrollView;

.field private totalRange:J

.field private trimmingEnabled:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvHorzScrollView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->this$0:Lcom/metamoji/video/AmvHorzScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 43
    iput-wide v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->totalRange:J

    .line 46
    iput-wide v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->rightMask:J

    return-void
.end method


# virtual methods
.method public final getLeftMask()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->leftMask:J

    return-wide v0
.end method

.method public final getLeftMaskPixel()I
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->this$0:Lcom/metamoji/video/AmvHorzScrollView;

    iget-wide v1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->leftMask:J

    invoke-static {v0, v1, v2}, Lcom/metamoji/video/AmvHorzScrollView;->access$valueToPixel(Lcom/metamoji/video/AmvHorzScrollView;J)I

    move-result v0

    return v0
.end method

.method public final getPosition()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->position:J

    return-wide v0
.end method

.method public final getRightMask()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->rightMask:J

    return-wide v0
.end method

.method public final getRightMaskPixel()I
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->this$0:Lcom/metamoji/video/AmvHorzScrollView;

    iget-wide v1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->rightMask:J

    invoke-static {v0, v1, v2}, Lcom/metamoji/video/AmvHorzScrollView;->access$valueToPixel(Lcom/metamoji/video/AmvHorzScrollView;J)I

    move-result v0

    return v0
.end method

.method public final getScrollPixel()I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->this$0:Lcom/metamoji/video/AmvHorzScrollView;

    iget-wide v1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->position:J

    invoke-static {v0, v1, v2}, Lcom/metamoji/video/AmvHorzScrollView;->access$scrollValueInPixel(Lcom/metamoji/video/AmvHorzScrollView;J)I

    move-result v0

    return v0
.end method

.method public final getTotalRange()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->totalRange:J

    return-wide v0
.end method

.method public final getTotalRangePixel()I
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->this$0:Lcom/metamoji/video/AmvHorzScrollView;

    iget-wide v1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->totalRange:J

    invoke-static {v0, v1, v2}, Lcom/metamoji/video/AmvHorzScrollView;->access$valueToPixel(Lcom/metamoji/video/AmvHorzScrollView;J)I

    move-result v0

    return v0
.end method

.method public final getTrimmingEnabled()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->trimmingEnabled:Z

    return v0
.end method

.method public final resetWithTotalRange(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x3e8

    .line 58
    :goto_0
    iput-wide p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->totalRange:J

    .line 59
    iput-wide p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->rightMask:J

    .line 60
    iput-wide v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->leftMask:J

    .line 61
    iput-wide v0, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->position:J

    return-void
.end method

.method public final setLeftMask(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->leftMask:J

    return-void
.end method

.method public final setPosition(J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->position:J

    return-void
.end method

.method public final setRightMask(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->rightMask:J

    return-void
.end method

.method public final setTotalRange(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->totalRange:J

    return-void
.end method

.method public final setTrimmingEnabled(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/metamoji/video/AmvHorzScrollView$Models;->trimmingEnabled:Z

    return-void
.end method
