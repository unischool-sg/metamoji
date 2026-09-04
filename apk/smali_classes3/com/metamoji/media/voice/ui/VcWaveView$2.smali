.class Lcom/metamoji/media/voice/ui/VcWaveView$2;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "VcWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcWaveView;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$2;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$2;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$2;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;->waveformZoom(FFF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$2;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$2;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;->waveformZoomStart(FFF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$2;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$2;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;->waveformZoomEnd()V

    :cond_0
    return-void
.end method
