.class Lcom/metamoji/ui/HistoryBarDriver$11;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->deleteMe(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$cur:I

.field final synthetic val$finalIndex:I

.field final synthetic val$finalItem:Lcom/metamoji/nt/NtMRUDocList$Item;

.field final synthetic val$mru:Lcom/metamoji/nt/NtMRUDocList;

.field final synthetic val$tabcount:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 1300
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput-object p2, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$mru:Lcom/metamoji/nt/NtMRUDocList;

    iput-object p3, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$finalItem:Lcom/metamoji/nt/NtMRUDocList$Item;

    iput p4, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$finalIndex:I

    iput p5, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$cur:I

    iput p6, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$tabcount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1303
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$mru:Lcom/metamoji/nt/NtMRUDocList;

    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$finalItem:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtMRUDocList;->removeUsedDoc(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$mru:Lcom/metamoji/nt/NtMRUDocList;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDocument()V

    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mupdateTabs(Lcom/metamoji/ui/HistoryBarDriver;)V

    .line 1312
    iget v0, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$cur:I

    .line 1314
    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$tabcount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-ltz v0, :cond_3

    .line 1318
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->val$mru:Lcom/metamoji/nt/NtMRUDocList;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList;->count()I

    move-result v1

    if-le v1, v0, :cond_3

    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v1

    if-gt v1, v0, :cond_2

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$11;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmHistoryBar(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/ui/DraggableStackPanel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mselectMeInner(Lcom/metamoji/ui/HistoryBarDriver;Ljava/lang/Object;Z)V

    return-void

    .line 1319
    :cond_3
    :goto_0
    const-string v0, "HistoryBarDriver.onItemDeleted(): logical error. (out of range)"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 1320
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDocument()V

    return-void
.end method
