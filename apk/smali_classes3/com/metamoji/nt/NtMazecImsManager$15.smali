.class Lcom/metamoji/nt/NtMazecImsManager$15;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager;Ljava/lang/String;Landroid/os/Bundle;)V
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

    .line 484
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$15;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    iput-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$15;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtMazecImsManager$15;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$15;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_imsi(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtMazecImsManager$15;->val$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtMazecImsManager$15;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
