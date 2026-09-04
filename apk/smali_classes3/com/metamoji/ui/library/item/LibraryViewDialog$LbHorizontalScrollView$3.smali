.class Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;
.super Ljava/util/TimerTask;
.source "LibraryViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->onScrollChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2147
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2150
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-boolean v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mTouching:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-boolean v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mDisableRewinder:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-wide v2, v2, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mScrollTick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2151
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3$1;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$3;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
