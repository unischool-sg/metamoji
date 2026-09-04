.class Lcom/metamoji/cm/UiTimer$1;
.super Ljava/lang/Object;
.source "UiTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cm/UiTimer;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/UiTimer;Ljava/lang/Runnable;)V
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

    .line 37
    iput-object p1, p0, Lcom/metamoji/cm/UiTimer$1;->this$0:Lcom/metamoji/cm/UiTimer;

    iput-object p2, p0, Lcom/metamoji/cm/UiTimer$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/metamoji/cm/UiTimer$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 41
    iget-object v0, p0, Lcom/metamoji/cm/UiTimer$1;->this$0:Lcom/metamoji/cm/UiTimer;

    invoke-static {v0}, Lcom/metamoji/cm/UiTimer;->-$$Nest$fget_handler(Lcom/metamoji/cm/UiTimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/cm/UiTimer$1;->this$0:Lcom/metamoji/cm/UiTimer;

    invoke-static {v1}, Lcom/metamoji/cm/UiTimer;->-$$Nest$fget_job(Lcom/metamoji/cm/UiTimer;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/cm/UiTimer$1;->this$0:Lcom/metamoji/cm/UiTimer;

    invoke-static {v2}, Lcom/metamoji/cm/UiTimer;->-$$Nest$fget_period(Lcom/metamoji/cm/UiTimer;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
