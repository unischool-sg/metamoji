.class Lcom/metamoji/nt/NtMazecImsManager$14;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->toggleSoftInput(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager;

.field final synthetic val$hideFlags:I

.field final synthetic val$showFlags:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager;II)V
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

    .line 476
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$14;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    iput p2, p0, Lcom/metamoji/nt/NtMazecImsManager$14;->val$showFlags:I

    iput p3, p0, Lcom/metamoji/nt/NtMazecImsManager$14;->val$hideFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$14;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_imsi(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/nt/NtMazecImsManager$14;->val$showFlags:I

    iget v2, p0, Lcom/metamoji/nt/NtMazecImsManager$14;->val$hideFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;->toggleSoftInput(II)V

    return-void
.end method
