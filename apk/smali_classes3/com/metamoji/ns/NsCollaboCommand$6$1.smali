.class Lcom/metamoji/ns/NsCollaboCommand$6$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$6;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$6;

.field final synthetic val$isCancelled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$6;Z)V
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

    .line 502
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$6$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$6;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboCommand$6$1;->val$isCancelled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$6$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$6;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$6;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    .line 507
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$6$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$6;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$6;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->dismiss()V

    .line 509
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboCommand$6$1;->val$isCancelled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$6$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$6;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$6;->val$distributeSharedDrives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$6$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$6;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$6;->val$distributeSharedDrives:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 514
    const-string v2, "driveId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 515
    invoke-static {}, Lcom/metamoji/sd/SdDriveUpdateChecker;->getInstance()Lcom/metamoji/sd/SdDriveUpdateChecker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveUpdateChecker;->doCheck(Ljava/lang/String;)Ljava/util/concurrent/ScheduledFuture;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
