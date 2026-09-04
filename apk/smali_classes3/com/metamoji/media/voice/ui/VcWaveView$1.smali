.class Lcom/metamoji/media/voice/ui/VcWaveView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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

    .line 164
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$1;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$1;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$1;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmListener(Lcom/metamoji/media/voice/ui/VcWaveView;)Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/metamoji/media/voice/ui/VcWaveView$WaveformListener;->waveformFling(FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
