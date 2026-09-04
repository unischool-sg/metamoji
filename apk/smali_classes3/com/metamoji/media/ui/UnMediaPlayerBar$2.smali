.class Lcom/metamoji/media/ui/UnMediaPlayerBar$2;
.super Ljava/lang/Object;
.source "UnMediaPlayerBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayerBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayerBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    int-to-double p1, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 110
    iget-object p3, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-static {p3}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 111
    iget-object p3, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-static {p3}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;->seekBarValueChanging(D)V

    .line 114
    :cond_1
    iget-object p3, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->timeToString(D)Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object p2, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    iget-object p2, p2, Lcom/metamoji/media/ui/UnMediaPlayerBar;->_timeLabel:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-static {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-static {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;->seekBarValueChangingStart()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-static {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-static {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;->seekBarValueChangingEnd()V

    :cond_0
    return-void
.end method
