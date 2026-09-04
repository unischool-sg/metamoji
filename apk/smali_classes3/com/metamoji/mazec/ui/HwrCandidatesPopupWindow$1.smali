.class Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$1;
.super Ljava/lang/Object;
.source "HwrCandidatesPopupWindow.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/metamoji/mazec/ui/HwrCandidatesView;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->-$$Nest$fputmSelectedStr(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getAltCandidates()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->-$$Nest$fputmAltCandidates(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Ljava/util/List;)V

    .line 40
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->-$$Nest$fputmIsOkResult(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Z)V

    .line 41
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->dismiss()V

    return-void
.end method
