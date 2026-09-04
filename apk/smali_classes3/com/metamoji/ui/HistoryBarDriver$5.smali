.class Lcom/metamoji/ui/HistoryBarDriver$5;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->onMruItemAppended(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

.field final synthetic val$mru:Lcom/metamoji/nt/NtMRUDocList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
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

    .line 1071
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput-object p2, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->val$mru:Lcom/metamoji/nt/NtMRUDocList;

    iput-object p3, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1074
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->val$mru:Lcom/metamoji/nt/NtMRUDocList;

    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mfindTab(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$misCollaboMode(Lcom/metamoji/ui/HistoryBarDriver;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mcreateTab(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtMRUDocList$Item;Z)Lcom/metamoji/ui/HistoryTab;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/ui/DraggableStackPanel;->insertChild(ILandroid/view/View;)V

    move v0, v2

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v1, v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mselectItem(Lcom/metamoji/ui/HistoryBarDriver;I)V

    .line 1086
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mupdateTabs(Lcom/metamoji/ui/HistoryBarDriver;)V

    .line 1087
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mcheckConsistency(Lcom/metamoji/ui/HistoryBarDriver;)Z

    return-void

    .line 1089
    :cond_1
    const-string v0, "HistoryBarDriver.onMruItemAppended error. reinitialize tabs."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$5;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$minitTabs(Lcom/metamoji/ui/HistoryBarDriver;)V

    return-void
.end method
