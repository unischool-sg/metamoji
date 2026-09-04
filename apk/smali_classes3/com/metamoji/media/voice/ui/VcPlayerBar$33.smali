.class Lcom/metamoji/media/voice/ui/VcPlayerBar$33;
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

    .line 2745
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$33;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2747
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$33;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fputm_showingRemoveTrackAlert(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    .line 2748
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$33;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    return-void
.end method
