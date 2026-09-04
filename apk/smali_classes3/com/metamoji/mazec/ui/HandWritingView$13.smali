.class Lcom/metamoji/mazec/ui/HandWritingView$13;
.super Ljava/lang/Object;
.source "HandWritingView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/HandWritingView;->onCandidatesClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HandWritingView;

.field final synthetic val$ctx:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HandWritingView;Lcom/metamoji/mazec/MazecIms;)V
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

    .line 2079
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$13;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandWritingView$13;->val$ctx:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 2081
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$13;->val$ctx:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    .line 2082
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$13;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmPopupCandis(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$13;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmPopupCandis(Lcom/metamoji/mazec/ui/HandWritingView;)Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$13;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$monSelectHwrCandidate(Lcom/metamoji/mazec/ui/HandWritingView;)V

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$13;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fputmPopupCandis(Lcom/metamoji/mazec/ui/HandWritingView;Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V

    return-void
.end method
