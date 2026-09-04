.class Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;
.super Ljava/lang/Object;
.source "VcWaveView.java"

# interfaces
.implements Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/ui/VcWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestListener"
.end annotation


# instance fields
.field mCenter:D

.field mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

.field mInitialScale:D

.field mOffset0:I

.field mOffsetX:D

.field mScrolled:Z

.field mX0:F

.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcWaveView;


# direct methods
.method private constructor <init>(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 730
    iput p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mOffset0:I

    const/4 v0, 0x0

    .line 731
    iput v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mX0:F

    const-wide/16 v0, 0x0

    .line 732
    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mInitialScale:D

    .line 733
    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mCenter:D

    .line 735
    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mOffsetX:D

    const/4 v0, 0x0

    .line 736
    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    .line 737
    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mScrolled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/media/voice/ui/VcWaveView;Lcom/metamoji/media/voice/ui/VcWaveView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;-><init>(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    return-void
.end method


# virtual methods
.method public waveformDraw()V
    .locals 0

    return-void
.end method

.method public waveformFling(FF)V
    .locals 0

    return-void
.end method

.method public waveformTouchEnd()V
    .locals 7

    .line 797
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$mhideTimeBaloon(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    .line 798
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmMoveIndex(Lcom/metamoji/media/voice/ui/VcWaveView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fputmMoveIndex(Lcom/metamoji/media/voice/ui/VcWaveView;I)V

    .line 800
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;->waveScrollView(Lcom/metamoji/media/voice/ui/VcWaveView;D)V

    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    if-eqz v0, :cond_1

    .line 804
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcIndexView;->TouchEnd(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    .line 805
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcIndexView;->getIndexId()Ljava/lang/String;

    move-result-object v2

    .line 807
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcIndexView;->getStartTime()D

    move-result-wide v3

    .line 808
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcIndexView;->getEndTime()D

    move-result-wide v5

    .line 809
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;->waveScrollView(Ljava/lang/String;DD)V

    return-void

    .line 813
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mScrolled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iget-boolean v0, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    if-nez v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 815
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$mupdateCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    :cond_2
    return-void
.end method

.method public waveformTouchMove(FF)V
    .locals 4

    .line 775
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmMoveIndex(Lcom/metamoji/media/voice/ui/VcWaveView;)I

    move-result p2

    if-nez p2, :cond_2

    .line 776
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    float-to-double v0, p1

    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mOffsetX:D

    add-double/2addr v0, v2

    double-to-int p1, v0

    invoke-virtual {p2, p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->getTimeFromLocation(I)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmDuration(Lcom/metamoji/media/voice/ui/VcWaveView;)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 779
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmDuration(Lcom/metamoji/media/voice/ui/VcWaveView;)D

    move-result-wide p1

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0, p1, p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fputmCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;D)V

    .line 782
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$mshowTimeBaloon(Lcom/metamoji/media/voice/ui/VcWaveView;D)V

    .line 783
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->invalidate()V

    return-void

    .line 784
    :cond_2
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    .line 788
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    if-eqz p2, :cond_3

    .line 785
    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmDuration(Lcom/metamoji/media/voice/ui/VcWaveView;)D

    move-result-wide v1

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/metamoji/media/voice/ui/VcIndexView;->TouchMove(Lcom/metamoji/media/voice/ui/VcWaveView;FD)D

    move-result-wide p1

    .line 786
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0, p1, p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$mshowTimeBaloon(Lcom/metamoji/media/voice/ui/VcWaveView;D)V

    return-void

    :cond_3
    const/4 p2, 0x0

    .line 788
    iput-boolean p2, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    const/4 p2, 0x1

    .line 789
    iput-boolean p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mScrolled:Z

    .line 790
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iget v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mOffset0:I

    iget v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mX0:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->setOffset(I)V

    .line 791
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$madjustParam(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    return-void
.end method

.method public waveformTouchStart(FF)V
    .locals 6

    .line 743
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fputmMoveIndex(Lcom/metamoji/media/voice/ui/VcWaveView;I)V

    const/4 v0, 0x0

    .line 744
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mScrolled:Z

    .line 745
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/media/voice/ui/VcWaveView;->getLocationFromTime(D)I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v2, v1

    cmpg-float v3, v1, p1

    if-gtz v3, :cond_0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 748
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iput-boolean v0, p2, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 749
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p2, v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fputmMoveIndex(Lcom/metamoji/media/voice/ui/VcWaveView;I)V

    const/high16 p2, 0x41a00000    # 20.0f

    add-float/2addr v1, p2

    sub-float/2addr v1, p1

    float-to-double v0, v1

    .line 750
    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mOffsetX:D

    .line 751
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmCurrentTime(Lcom/metamoji/media/voice/ui/VcWaveView;)D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$mshowTimeBaloon(Lcom/metamoji/media/voice/ui/VcWaveView;D)V

    .line 752
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;->dragStart()V

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmCanEdit(Lcom/metamoji/media/voice/ui/VcWaveView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    .line 755
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->m_indexViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/media/voice/ui/VcIndexView;

    .line 757
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {v1, v2, p1, p2}, Lcom/metamoji/media/voice/ui/VcIndexView;->TouchStart(Lcom/metamoji/media/voice/ui/VcWaveView;FF)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    .line 759
    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    .line 760
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p2, v2, v3}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$mshowTimeBaloon(Lcom/metamoji/media/voice/ui/VcWaveView;D)V

    .line 761
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;->dragStart()V

    .line 765
    :cond_2
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mIndexView:Lcom/metamoji/media/voice/ui/VcIndexView;

    if-nez p2, :cond_3

    .line 766
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->getOffset()I

    move-result p2

    iput p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mOffset0:I

    .line 769
    :cond_3
    :goto_0
    iput p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mX0:F

    return-void
.end method

.method public waveformZoom(FFF)V
    .locals 4

    .line 842
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mInitialScale:D

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 846
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->setScale(D)V

    .line 847
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$madjustScale(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    .line 848
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmOffset(Lcom/metamoji/media/voice/ui/VcWaveView;)I

    move-result p3

    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iget-wide v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mCenter:D

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/ui/VcWaveView;->getLocationFromTime(D)I

    move-result v0

    float-to-int p2, p2

    sub-int/2addr v0, p2

    add-int/2addr p3, v0

    invoke-static {p1, p3}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fputmOffset(Lcom/metamoji/media/voice/ui/VcWaveView;I)V

    .line 849
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$madjustOffset(Lcom/metamoji/media/voice/ui/VcWaveView;)V

    return-void
.end method

.method public waveformZoomEnd()V
    .locals 0

    return-void
.end method

.method public waveformZoomStart(FFF)V
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const-wide/16 p1, 0x0

    .line 833
    iput-wide p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mInitialScale:D

    return-void

    .line 836
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->getScale()D

    move-result-wide v2

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mInitialScale:D

    .line 837
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->getTimeFromLocation(I)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$TestListener;->mCenter:D

    return-void
.end method
