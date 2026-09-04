.class Lcom/metamoji/nt/NtMazecImsManager$4$1;
.super Landroid/os/ResultReceiver;
.source "NtMazecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager$4;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager$4;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$4$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$4;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$4$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$4;

    iget-object p1, p1, Lcom/metamoji/nt/NtMazecImsManager$4;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iget-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$4$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$4;

    iget-object p2, p2, Lcom/metamoji/nt/NtMazecImsManager$4;->val$runnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$4$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$4;

    iget-object v0, v0, Lcom/metamoji/nt/NtMazecImsManager$4;->val$completion:Ljava/lang/Runnable;

    invoke-static {p1, p2, v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$smonShowReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
