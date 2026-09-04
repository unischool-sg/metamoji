.class Lcom/metamoji/ui/HistoryBarDriver$9;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->selectMeInner(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$finalItem:Lcom/metamoji/nt/NtMRUDocList$Item;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;ILcom/metamoji/nt/NtMRUDocList$Item;)V
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

    .line 1233
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$9;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput p2, p0, Lcom/metamoji/ui/HistoryBarDriver$9;->val$i:I

    iput-object p3, p0, Lcom/metamoji/ui/HistoryBarDriver$9;->val$finalItem:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1236
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$9;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver$9;->val$i:I

    invoke-static {v0, v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mselectItem(Lcom/metamoji/ui/HistoryBarDriver;I)V

    .line 1239
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$9;->val$finalItem:Lcom/metamoji/nt/NtMRUDocList$Item;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->openDocumentFromTab(Lcom/metamoji/nt/NtMRUDocList$Item;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1241
    const-string v1, "HistoryBarDriver.onItemSelected: error in opening note."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
