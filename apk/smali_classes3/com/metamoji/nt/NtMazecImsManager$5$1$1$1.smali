.class Lcom/metamoji/nt/NtMazecImsManager$5$1$1$1;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager$5$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/nt/NtMazecImsManager$5$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMazecImsManager$5$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$5$1$1$1;->this$2:Lcom/metamoji/nt/NtMazecImsManager$5$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$5$1$1$1;->this$2:Lcom/metamoji/nt/NtMazecImsManager$5$1$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtMazecImsManager$5$1$1;->this$1:Lcom/metamoji/nt/NtMazecImsManager$5$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtMazecImsManager$5$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$5;

    iget-object v0, v0, Lcom/metamoji/nt/NtMazecImsManager$5;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iget-object v1, p0, Lcom/metamoji/nt/NtMazecImsManager$5$1$1$1;->this$2:Lcom/metamoji/nt/NtMazecImsManager$5$1$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtMazecImsManager$5$1$1;->this$1:Lcom/metamoji/nt/NtMazecImsManager$5$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtMazecImsManager$5$1;->this$0:Lcom/metamoji/nt/NtMazecImsManager$5;

    iget-object v1, v1, Lcom/metamoji/nt/NtMazecImsManager$5;->val$completion:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$smtemporarilyChangeImeToMazecCore(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
