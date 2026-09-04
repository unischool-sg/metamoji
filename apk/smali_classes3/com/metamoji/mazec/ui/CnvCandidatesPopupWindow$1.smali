.class Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$1;
.super Ljava/lang/Object;
.source "CnvCandidatesPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;-><init>(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow$1;->this$0:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
