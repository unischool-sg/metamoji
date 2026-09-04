.class Lcom/metamoji/mazec/ui/HandWritingView$10;
.super Ljava/lang/Object;
.source "HandWritingView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/HandWritingView;->initView(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/HandwritingPanel;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HandWritingView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 553
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$10;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 556
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$10;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$mresetScrollButtons(Lcom/metamoji/mazec/ui/HandWritingView;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
