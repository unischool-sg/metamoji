.class Lcom/metamoji/ns/direction/NsDirectionManager$10;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->currentPageChanged(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$valueStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 596
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$10;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$10;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$10;->val$valueStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$10;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    const-string v1, "currentPage"

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$10;->val$valueStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->changeProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
