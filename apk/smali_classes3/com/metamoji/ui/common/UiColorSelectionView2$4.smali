.class Lcom/metamoji/ui/common/UiColorSelectionView2$4;
.super Ljava/util/TimerTask;
.source "UiColorSelectionView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;->onScrollChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1158
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$4;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1161
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$4;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-boolean v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTouching:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$4;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-boolean v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$4;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-wide v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2;->mScrollTick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$4;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->fitPageAfterScrolled()V

    .line 1163
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$4;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$4;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTimer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 1165
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$4;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTimer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method
