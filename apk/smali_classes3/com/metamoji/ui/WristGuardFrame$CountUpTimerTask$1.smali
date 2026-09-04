.class Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;
.super Ljava/lang/Object;
.source "WristGuardFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;->this$1:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 316
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;->this$1:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

    iget-object v0, v0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;->this$0:Lcom/metamoji/ui/WristGuardFrame;

    iget-boolean v0, v0, Lcom/metamoji/ui/WristGuardFrame;->mHasEvent:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 318
    iget-object v2, p0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;->this$1:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

    iget-object v2, v2, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;->this$0:Lcom/metamoji/ui/WristGuardFrame;

    iget-wide v2, v2, Lcom/metamoji/ui/WristGuardFrame;->mLastTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;->this$1:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

    iget-object v2, v2, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;->this$0:Lcom/metamoji/ui/WristGuardFrame;

    iput-wide v0, v2, Lcom/metamoji/ui/WristGuardFrame;->mLastTime:J

    .line 320
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;->this$1:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

    iget-object v0, v0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;->this$0:Lcom/metamoji/ui/WristGuardFrame;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/metamoji/ui/WristGuardFrame;->mHasEvent:Z

    .line 321
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;->this$1:Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;

    iget-object v0, v0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;->this$0:Lcom/metamoji/ui/WristGuardFrame;

    invoke-static {v0}, Lcom/metamoji/ui/WristGuardFrame;->-$$Nest$mmove(Lcom/metamoji/ui/WristGuardFrame;)V

    :cond_0
    return-void
.end method
