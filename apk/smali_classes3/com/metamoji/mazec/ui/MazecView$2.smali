.class Lcom/metamoji/mazec/ui/MazecView$2;
.super Lcom/metamoji/mazec/MazecEventAdapter;
.source "MazecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initView(Lcom/metamoji/mazec/MazecIms;)V
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

    .line 393
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Lcom/metamoji/mazec/MazecEventAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentsCleared(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 403
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mupdateButtonStates(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 405
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmViewData(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmCnvCandidatesBar(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->hasCandidates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/MazecView;->showHideCnvResult(Z)V

    return-void
.end method

.method public onConvertResultUpdated(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/converter/ConvertResult;)V
    .locals 0

    .line 410
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mupdateButtonStates(Lcom/metamoji/mazec/ui/MazecView;)V

    return-void
.end method

.method public onEvent(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onFilterChanged(Lcom/metamoji/mazec/MazecIms;I)V
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmSelectFilterView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectFilterView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 397
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmSelectFilterView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectFilterView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/ui/SelectFilterView;->setSelectedFilter(I)V

    :cond_0
    return-void
.end method

.method public onLanguageChanged(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;Z)V
    .locals 0

    .line 415
    invoke-static {p2}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->setLang(Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mupdateButtonStates(Lcom/metamoji/mazec/ui/MazecView;)V

    if-eqz p2, :cond_0

    .line 420
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmProgressOverlay(Lcom/metamoji/mazec/ui/MazecView;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStrokeUpdated(Lcom/metamoji/mazec/MazecIms;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/MazecIms;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 426
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 427
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mupdateButtonStatesInWriting(Lcom/metamoji/mazec/ui/MazecView;)V

    return-void

    .line 429
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$2;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mupdateButtonStates(Lcom/metamoji/mazec/ui/MazecView;)V

    return-void
.end method
