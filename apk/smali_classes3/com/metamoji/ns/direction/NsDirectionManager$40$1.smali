.class Lcom/metamoji/ns/direction/NsDirectionManager$40$1;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$40;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$40;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2522
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2527
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$40;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$boothId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getPageIdFromCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2529
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->updatePageInfoIcon(Ljava/lang/String;)V

    return-void

    .line 2533
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$40;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$boothId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getPageIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2535
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->updatePageInfoIcon(Ljava/lang/String;)V

    return-void

    .line 2540
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40$1;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$40;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$boothId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->updatePageInfoIcon(Ljava/lang/String;)V

    return-void
.end method
