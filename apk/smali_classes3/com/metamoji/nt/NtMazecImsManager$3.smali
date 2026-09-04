.class Lcom/metamoji/nt/NtMazecImsManager$3;
.super Landroid/os/ResultReceiver;
.source "NtMazecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->temporarilyChangeImeToMazecCore(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 175
    iput-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$3;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iput-object p3, p0, Lcom/metamoji/nt/NtMazecImsManager$3;->val$runnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/metamoji/nt/NtMazecImsManager$3;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$3;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iget-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$3;->val$runnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$3;->val$completion:Ljava/lang/Runnable;

    invoke-static {p1, p2, v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$smonHideReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
