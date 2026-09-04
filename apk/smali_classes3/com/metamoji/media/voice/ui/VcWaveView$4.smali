.class Lcom/metamoji/media/voice/ui/VcWaveView$4;
.super Ljava/lang/Object;
.source "VcWaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcWaveView;->createWaveData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcWaveView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->val$ticket:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$mcreateWaveDataWithAudioFile(Lcom/metamoji/media/voice/ui/VcWaveView;Ljava/lang/String;)[D

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmWaveDatas(Lcom/metamoji/media/voice/ui/VcWaveView;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v2}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fgetmWaveDatas(Lcom/metamoji/media/voice/ui/VcWaveView;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->val$ticket:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-static {v2, v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->-$$Nest$fputmWaveData(Lcom/metamoji/media/voice/ui/VcWaveView;[D)V

    .line 316
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcWaveView$4;->this$0:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcWaveView;->postInvalidate()V

    return-void

    :catchall_0
    move-exception v0

    .line 316
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
