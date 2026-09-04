.class Lcom/metamoji/nt/NtMazecImsManager$10;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager;

.field final synthetic val$attribute:Landroid/view/inputmethod/EditorInfo;

.field final synthetic val$ic:Landroid/view/inputmethod/InputConnection;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
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

    .line 423
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$10;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    iput-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$10;->val$ic:Landroid/view/inputmethod/InputConnection;

    iput-object p3, p0, Lcom/metamoji/nt/NtMazecImsManager$10;->val$attribute:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$10;->this$0:Lcom/metamoji/nt/NtMazecImsManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$fget_imi(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;

    iget-object v2, p0, Lcom/metamoji/nt/NtMazecImsManager$10;->val$ic:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v1, v2}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iget-object v2, p0, Lcom/metamoji/nt/NtMazecImsManager$10;->val$attribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method
