.class Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$6;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;

.field final synthetic val$text:Landroid/view/inputmethod/CompletionInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;Landroid/view/inputmethod/CompletionInfo;)V
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

    .line 577
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$6;->this$0:Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;

    iput-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$6;->val$text:Landroid/view/inputmethod/CompletionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$6;->this$0:Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->-$$Nest$fget_ic(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$6;->val$text:Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    return-void
.end method
