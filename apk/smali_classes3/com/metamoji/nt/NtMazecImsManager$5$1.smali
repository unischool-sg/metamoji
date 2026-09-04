.class Lcom/metamoji/nt/NtMazecImsManager$5$1;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager$5;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$5$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$5$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$5;

    iget-object v0, v0, Lcom/metamoji/nt/NtMazecImsManager$5;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 246
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$5$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtMazecImsManager$5$1$1;-><init>(Lcom/metamoji/nt/NtMazecImsManager$5$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method
