.class Lcom/metamoji/media/voice/ui/VcPlayerBar$25;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$startTime:Ljava/lang/Number;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1285
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;->val$startTime:Ljava/lang/Number;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateRecordNameLabel()V

    .line 1288
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWaveView(Z)V

    .line 1289
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTimeRange()V

    .line 1290
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;->val$startTime:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateCurrentTime(Ljava/lang/Number;)V

    return-void
.end method
