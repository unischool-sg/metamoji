.class Lcom/metamoji/media/voice/ui/VcPlayerBar$27;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->reloadTrackTable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/String;)V
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

    .line 1512
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;->val$ticket:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1514
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1515
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;->val$ticket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->rowFromTicket(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1516
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1517
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-static {v2, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$mreloadTrackTableRow(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/Integer;)V

    if-ne v0, v1, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
