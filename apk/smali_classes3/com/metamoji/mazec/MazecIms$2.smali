.class Lcom/metamoji/mazec/MazecIms$2;
.super Landroid/os/Handler;
.source "MazecIms.java"


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

    .line 472
    iput-object p1, p0, Lcom/metamoji/mazec/MazecIms$2;->this$0:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 479
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/mazec/util/MessageParam;

    if-eqz v0, :cond_0

    .line 481
    iget-object v1, v0, Lcom/metamoji/mazec/util/MessageParam;->replyTo:Lcom/metamoji/mazec/util/MessageHandler;

    if-eqz v1, :cond_0

    .line 483
    iget p1, p1, Landroid/os/Message;->what:I

    iget-wide v2, v0, Lcom/metamoji/mazec/util/MessageParam;->msgTime:J

    iget-object v0, v0, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/metamoji/mazec/util/MessageHandler;->handleMessage(IJLjava/lang/Object;)V

    :cond_0
    return-void
.end method
