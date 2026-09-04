.class Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;
.super Ljava/lang/Object;
.source "HwrCandidatesPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;-><init>(Landroid/content/Context;)V
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

    .line 112
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->-$$Nest$fputmSelectedStr(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->-$$Nest$fputmAltCandidates(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Ljava/util/List;)V

    .line 116
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->-$$Nest$fputmIsOkResult(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Z)V

    .line 117
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-static {p1, v0}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->-$$Nest$fputmRegisterButtonTapped(Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;Z)V

    .line 118
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$6;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->dismiss()V

    return-void
.end method
