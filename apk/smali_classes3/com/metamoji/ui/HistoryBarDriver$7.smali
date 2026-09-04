.class Lcom/metamoji/ui/HistoryBarDriver$7;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->onMruItemMoved(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$from:I

.field final synthetic val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;IILcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1143
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput p2, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$from:I

    iput p3, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$to:I

    iput-object p4, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    .line 1147
    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$from:I

    if-ge v1, v0, :cond_0

    iget v2, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$to:I

    if-ge v2, v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$from:I

    iget v2, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$to:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/DraggableStackPanel;->moveChild(II)V

    return-void

    :cond_0
    if-lt v1, v0, :cond_1

    .line 1150
    iget v2, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$to:I

    if-lt v2, v0, :cond_1

    return-void

    .line 1160
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    if-lt v1, v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-static {v2}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$misCollaboMode(Lcom/metamoji/ui/HistoryBarDriver;)Z

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mcreateTab(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtMRUDocList$Item;Z)Lcom/metamoji/ui/HistoryTab;

    move-result-object v0

    .line 1156
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$to:I

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/ui/DraggableStackPanel;->insertChild(ILandroid/view/View;)V

    .line 1157
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mupdateTabs(Lcom/metamoji/ui/HistoryBarDriver;)V

    return-void

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-static {v2}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$misCollaboMode(Lcom/metamoji/ui/HistoryBarDriver;)Z

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mcreateTab(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtMRUDocList$Item;Z)Lcom/metamoji/ui/HistoryTab;

    .line 1161
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->val$from:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DraggableStackPanel;->removeChild(I)V

    .line 1162
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$7;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mupdateTabs(Lcom/metamoji/ui/HistoryBarDriver;)V

    return-void
.end method
