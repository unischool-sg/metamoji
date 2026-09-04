.class Lcom/metamoji/ui/HoverSelectorView$3;
.super Lcom/metamoji/cm/CmContext;
.source "HoverSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HoverSelectorView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HoverSelectorView;

.field final synthetic val$sel:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HoverSelectorView;I)V
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

    .line 563
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView$3;->this$0:Lcom/metamoji/ui/HoverSelectorView;

    iput p2, p0, Lcom/metamoji/ui/HoverSelectorView$3;->val$sel:I

    invoke-direct {p0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 565
    const-string p1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/HoverSelectorView$3;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
