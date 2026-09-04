.class Lcom/metamoji/ns/NsCollaboManager$46$1;
.super Ljava/util/TimerTask;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsCollaboManager$46;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager$46;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4478
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$46$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$46;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4481
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$46$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$46;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager$46;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$monAnalysisTimer(Lcom/metamoji/ns/NsCollaboManager;)V

    return-void
.end method
