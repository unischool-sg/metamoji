.class Lcom/metamoji/nt/NtMazecImsManager$13;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->hideSoftInput(ILandroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager;

.field final synthetic val$flags:I

.field final synthetic val$resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager;ILandroid/os/ResultReceiver;)V
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

    .line 468
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$13;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    iput p2, p0, Lcom/metamoji/nt/NtMazecImsManager$13;->val$flags:I

    iput-object p3, p0, Lcom/metamoji/nt/NtMazecImsManager$13;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$13;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_imi(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/nt/NtMazecImsManager$13;->val$flags:I

    iget-object v2, p0, Lcom/metamoji/nt/NtMazecImsManager$13;->val$resultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method
