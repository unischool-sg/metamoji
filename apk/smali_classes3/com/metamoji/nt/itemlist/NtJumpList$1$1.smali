.class Lcom/metamoji/nt/itemlist/NtJumpList$1$1;
.super Ljava/lang/Object;
.source "NtJumpList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtJumpList$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtJumpList$1;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtJumpList$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpList$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    new-instance v0, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;

    invoke-direct {v0}, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpList$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$1;

    iget-object v1, v1, Lcom/metamoji/nt/itemlist/NtJumpList$1;->this$0:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v1

    iput v1, v0, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->position:I

    .line 95
    iget v1, v0, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->position:I

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtJumpList$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$1;

    iget-object v2, v2, Lcom/metamoji/nt/itemlist/NtJumpList$1;->this$0:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->position:I

    .line 96
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtJumpList$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtJumpList$1;

    iget-object v1, v1, Lcom/metamoji/nt/itemlist/NtJumpList$1;->this$0:Lcom/metamoji/nt/itemlist/NtJumpList;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_MEMORY_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-static {v1, v2, v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->-$$Nest$mhandleCommand(Lcom/metamoji/nt/itemlist/NtJumpList;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;)V

    return-void
.end method
