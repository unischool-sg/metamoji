.class Lcom/metamoji/nt/itemlist/NtJumpList$5$1;
.super Ljava/lang/Object;
.source "NtJumpList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtJumpList$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtJumpList$5;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtJumpList$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$5;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtJumpList$5;->this$0:Lcom/metamoji/nt/itemlist/NtJumpList;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$5;

    iget v1, v1, Lcom/metamoji/nt/itemlist/NtJumpList$5;->val$position:I

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$5;

    iget-boolean v2, v2, Lcom/metamoji/nt/itemlist/NtJumpList$5;->val$needScroll:Z

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtJumpList$5$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$5;

    iget-boolean v3, v3, Lcom/metamoji/nt/itemlist/NtJumpList$5;->val$needNotifyToNote:Z

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/nt/itemlist/NtJumpList;->-$$Nest$mselectLinkJump(Lcom/metamoji/nt/itemlist/NtJumpList;IZZ)Z

    return-void
.end method
