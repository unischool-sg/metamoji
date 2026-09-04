.class Lcom/metamoji/ns/NsCollaboManager$47;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->endAnalysis()V
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

    .line 4492
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$47;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4495
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$47;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 4496
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$47;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4497
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$47;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
