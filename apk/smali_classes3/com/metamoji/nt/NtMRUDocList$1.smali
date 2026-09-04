.class Lcom/metamoji/nt/NtMRUDocList$1;
.super Ljava/lang/Object;
.source "NtMRUDocList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMRUDocList;->addUsedDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMRUDocList;

.field final synthetic val$docid:Ljava/lang/String;

.field final synthetic val$driveid:Ljava/lang/String;

.field final synthetic val$fromSDrive:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

.field final synthetic val$ro:Z

.field final synthetic val$srcdocid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)V
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

    .line 777
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$1;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    iput-object p2, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$driveid:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$docid:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$srcdocid:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$ro:Z

    iput-object p6, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$fromSDrive:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 780
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$1;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v0}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$mcleanupDocList(Lcom/metamoji/nt/NtMRUDocList;)V

    .line 781
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList$1;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$driveid:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$docid:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$srcdocid:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$ro:Z

    iget-object v6, p0, Lcom/metamoji/nt/NtMRUDocList$1;->val$fromSDrive:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    invoke-static/range {v1 .. v6}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$maddOneDocument(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList$1;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v1}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$fgetmCurrentSelection(Lcom/metamoji/nt/NtMRUDocList;)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 783
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList$1;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v1, v0}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$fputmCurrentSelection(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    .line 784
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList$1;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v1}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$fgetmEventListeners(Lcom/metamoji/nt/NtMRUDocList;)Lcom/metamoji/ui/UiEventListeners;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList$1;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v1, v1, v0}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$mfireMruItemOpenEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$1;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v0}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$msave(Lcom/metamoji/nt/NtMRUDocList;)V

    return-void
.end method
