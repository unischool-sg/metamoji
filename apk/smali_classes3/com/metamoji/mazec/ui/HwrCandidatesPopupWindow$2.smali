.class Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$2;
.super Ljava/lang/Object;
.source "HwrCandidatesPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 55
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$2;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow$2;->this$0:Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwrCandidatesPopupWindow;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
