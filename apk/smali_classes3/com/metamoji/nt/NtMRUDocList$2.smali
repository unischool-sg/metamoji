.class Lcom/metamoji/nt/NtMRUDocList$2;
.super Ljava/lang/Object;
.source "NtMRUDocList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMRUDocList;->addUsedDocs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMRUDocList;

.field final synthetic val$docItemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMRUDocList;Ljava/util/List;)V
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

    .line 805
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    iput-object p2, p0, Lcom/metamoji/nt/NtMRUDocList$2;->val$docItemList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 808
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v0}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$fgetmEventListeners(Lcom/metamoji/nt/NtMRUDocList;)Lcom/metamoji/ui/UiEventListeners;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    const/4 v1, 0x1

    invoke-static {v0, v0, v1}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$mfireMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList;Z)V

    :cond_0
    const/4 v1, 0x0

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v0}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$mcleanupDocList(Lcom/metamoji/nt/NtMRUDocList;)V

    .line 813
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$2;->val$docItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    .line 814
    iget-object v3, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-interface {v2}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->isReadOnly()Z

    move-result v7

    sget-object v8, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->LOCAL:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$maddOneDocument(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)Lcom/metamoji/nt/NtMRUDocList$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v0}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$fgetmEventListeners(Lcom/metamoji/nt/NtMRUDocList;)Lcom/metamoji/ui/UiEventListeners;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v0, v0, v1}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$mfireMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList;Z)V

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v0}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$msave(Lcom/metamoji/nt/NtMRUDocList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 817
    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v2}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$fgetmEventListeners(Lcom/metamoji/nt/NtMRUDocList;)Lcom/metamoji/ui/UiEventListeners;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 818
    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList$2;->this$0:Lcom/metamoji/nt/NtMRUDocList;

    invoke-static {v2, v2, v1}, Lcom/metamoji/nt/NtMRUDocList;->-$$Nest$mfireMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList;Z)V

    .line 820
    :cond_3
    throw v0
.end method
