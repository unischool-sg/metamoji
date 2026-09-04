.class Lcom/metamoji/nt/NtMazecImsManager$11;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->finishInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 431
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$11;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$11;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_imsi(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;->finishInput()V

    return-void
.end method
