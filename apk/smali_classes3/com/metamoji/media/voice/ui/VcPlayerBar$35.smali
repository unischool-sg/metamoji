.class Lcom/metamoji/media/voice/ui/VcPlayerBar$35;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleRenameLongPressTrack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$dlg:Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;ILcom/metamoji/media/voice/ui/VcRenameTitleDialog;)V
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

    .line 2904
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;->val$position:I

    iput-object p3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;->val$dlg:Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 2907
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fputm_showingRenameTrackDialog(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    if-eqz p3, :cond_0

    .line 2909
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;->val$position:I

    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;->val$dlg:Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;

    invoke-virtual {p3}, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->getRenamedTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$mrenameTitle(Lcom/metamoji/media/voice/ui/VcPlayerBar;ILjava/lang/String;)V

    .line 2911
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    return-void
.end method
