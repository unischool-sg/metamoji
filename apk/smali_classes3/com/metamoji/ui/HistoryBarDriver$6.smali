.class Lcom/metamoji/ui/HistoryBarDriver$6;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->onMruItemDeleted(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$removedDocId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/String;)V
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

    .line 1105
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$6;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput-object p2, p0, Lcom/metamoji/ui/HistoryBarDriver$6;->val$removedDocId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$6;->val$removedDocId:Ljava/lang/String;

    .line 1112
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$6;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    if-nez v0, :cond_0

    .line 1110
    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$minitTabs(Lcom/metamoji/ui/HistoryBarDriver;)V

    return-void

    .line 1112
    :cond_0
    invoke-static {v1, v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mfindTab(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/String;)I

    move-result v0

    .line 1118
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$6;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    if-ltz v0, :cond_1

    .line 1114
    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/DraggableStackPanel;->removeChild(I)V

    .line 1115
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$6;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mupdateTabs(Lcom/metamoji/ui/HistoryBarDriver;)V

    .line 1116
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$6;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {v0}, Lcom/metamoji/ui/HistoryBarDriver;->selectItem()V

    goto :goto_0

    .line 1118
    :cond_1
    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mupdateMoreButtonState(Lcom/metamoji/ui/HistoryBarDriver;)V

    .line 1120
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$6;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mcheckConsistency(Lcom/metamoji/ui/HistoryBarDriver;)Z

    return-void
.end method
