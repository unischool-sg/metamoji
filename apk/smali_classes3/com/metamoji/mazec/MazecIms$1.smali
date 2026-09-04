.class Lcom/metamoji/mazec/MazecIms$1;
.super Ljava/lang/Object;
.source "MazecIms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/MazecIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 432
    iget-object v0, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwRecognitionRequesterPostTime(Lcom/metamoji/mazec/MazecIms;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v2}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwStrokesModel(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getLastStrokeRelatedActionTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 433
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRacContext(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/RACContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$mgetRecognitionParam(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    move-result-object v5

    .line 436
    new-instance v2, Lcom/metamoji/mazec/util/MessageParam;

    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v1}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmRacContext(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/RACContext;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v4}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fgetmHwRecognitionRequesterPostTime(Lcom/metamoji/mazec/MazecIms;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;J)V

    .line 437
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-static {v1, v2}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fputmLastRecogReq(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/util/MessageParam;)V

    .line 438
    iget-object v1, p0, Lcom/metamoji/mazec/MazecIms$1;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v5}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;->execContext()Lcom/metamoji/mazec/RACExecContext;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/metamoji/mazec/MazecIms;->-$$Nest$fputmLastRecogReqCtx(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/RACExecContext;)V

    const/16 v1, 0x35

    .line 439
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/BackgroundTaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
