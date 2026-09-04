.class Lcom/metamoji/mazec/ui/MazecView$39;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initCnvCandidatesBar(Lcom/metamoji/mazec/MazecIms;)V
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

    .line 1750
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConvertResultUpdate(Lcom/metamoji/mazec/converter/ConvertResult;)V
    .locals 1

    .line 1753
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCnvCands(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->closeCandidatesView()Z

    if-eqz p1, :cond_0

    .line 1756
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result v0

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->getCandidateTypes(Z)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/converter/ConvertResult;->getCandidates([I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/MazecView;->openCandidatesView(Lcom/metamoji/mazec/converter/ConvertResult;)Z

    .line 1760
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mupdateButtonStates(Lcom/metamoji/mazec/ui/MazecView;)V

    return-void
.end method

.method public onCurrentCandidateChanged(I)V
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCnvCands(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCnvCands(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->setCurrentCandidateIndex(I)V

    :cond_0
    return-void
.end method

.method public onRequestCandidatesViewClose()Z
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->closeCandidatesView()Z

    move-result v0

    return v0
.end method

.method public onRequestCandidatesViewOpen()Z
    .locals 2

    .line 1777
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getCnvResult()Lcom/metamoji/mazec/converter/ConvertResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->openCandidatesView(Lcom/metamoji/mazec/converter/ConvertResult;)Z

    move-result v0

    return v0
.end method

.method public onSelect(Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$39;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/MazecView;->selectConvertCandidate(Lcom/metamoji/mazec/converter/MmjiWord;)V

    return-void
.end method
