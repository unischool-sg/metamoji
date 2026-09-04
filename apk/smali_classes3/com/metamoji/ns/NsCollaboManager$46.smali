.class Lcom/metamoji/ns/NsCollaboManager$46;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->startAnalysis()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4472
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$46;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 4475
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$46;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisStartTime:Ljava/util/Date;

    .line 4476
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$46;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisPostDirectionCount:I

    .line 4477
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$46;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    .line 4478
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$46;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$46$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/NsCollaboManager$46$1;-><init>(Lcom/metamoji/ns/NsCollaboManager$46;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
