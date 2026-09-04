.class Lcom/metamoji/ns/direction/NsDirectionManager$33$2;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2087
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$2;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2091
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$2;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$2;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    iget-object v2, v2, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-wide v2, v2, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastFollowPresenterDate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33$2;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$33;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mfollowPresenter(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    :cond_0
    return-void
.end method
