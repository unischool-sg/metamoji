.class Lcom/metamoji/ns/NsCollaboCommand$24;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewNormalDocument(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isShareNote:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1960
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboCommand$24;->val$isShareNote:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 1968
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$24$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$24$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$24;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1980
    const-string v0, "handleCollaboNewNormalDocument"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
