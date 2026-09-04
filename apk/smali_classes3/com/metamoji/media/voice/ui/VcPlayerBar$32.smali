.class Lcom/metamoji/media/voice/ui/VcPlayerBar$32;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->removeRecordingForRowAtIndexPath(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$indexId:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 2733
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->val$indexId:Ljava/lang/String;

    iput p3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->val$position:I

    iput-object p4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->val$ticket:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 2735
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fputm_showingRemoveTrackAlert(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    .line 2736
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    .line 2738
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->val$indexId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2739
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->val$position:I

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->val$ticket:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->removeLabel(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2741
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;->val$ticket:Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->removeRecording(Ljava/lang/String;)V

    return-void
.end method
