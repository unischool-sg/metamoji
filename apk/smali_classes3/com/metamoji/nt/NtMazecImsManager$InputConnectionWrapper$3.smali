.class Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->setComposingRegion(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;II)V
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

    .line 550
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;->this$0:Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;

    iput p2, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;->val$start:I

    iput p3, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;->this$0:Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->-$$Nest$fget_ic(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;->val$start:I

    iget v2, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;->val$end:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    return-void
.end method
