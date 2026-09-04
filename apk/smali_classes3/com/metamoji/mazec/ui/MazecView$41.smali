.class Lcom/metamoji/mazec/ui/MazecView$41;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->openCandidatesView(Lcom/metamoji/mazec/converter/ConvertResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2900
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$41;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 2903
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$41;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    .line 2904
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$41;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCnvCands(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2905
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$41;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCnvCands(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->getSelectedWord()Lcom/metamoji/mazec/converter/MmjiWord;

    move-result-object v0

    .line 2906
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$41;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupCnvCands(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;)V

    .line 2907
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$41;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/ui/MazecView;->selectConvertCandidate(Lcom/metamoji/mazec/converter/MmjiWord;)V

    .line 2909
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$41;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmCnvCandidatesBar(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->resetCurrentCandidate()V

    .line 2910
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$41;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mupdateButtonStates(Lcom/metamoji/mazec/ui/MazecView;)V

    return-void
.end method
