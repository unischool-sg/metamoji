.class Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;
.super Ljava/util/TimerTask;
.source "WristGuardFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/WristGuardFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountUpTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/WristGuardFrame;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/WristGuardFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;->this$0:Lcom/metamoji/ui/WristGuardFrame;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;->this$0:Lcom/metamoji/ui/WristGuardFrame;

    invoke-static {v0}, Lcom/metamoji/ui/WristGuardFrame;->-$$Nest$fgetmHandler(Lcom/metamoji/ui/WristGuardFrame;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask$1;-><init>(Lcom/metamoji/ui/WristGuardFrame$CountUpTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
