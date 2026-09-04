.class Lcom/metamoji/media/voice/ui/VcPlayerBar$34;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2752
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$34;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2754
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$34;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fputm_showingRemoveTrackAlert(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    .line 2755
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$34;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    return-void
.end method
