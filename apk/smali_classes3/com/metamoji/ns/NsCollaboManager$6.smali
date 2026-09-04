.class Lcom/metamoji/ns/NsCollaboManager$6;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->loginRoomSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
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

    .line 1043
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$6;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$6;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$6;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->initializePanel()V

    :cond_0
    return-void
.end method
