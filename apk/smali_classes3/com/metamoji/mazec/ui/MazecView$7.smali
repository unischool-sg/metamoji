.class Lcom/metamoji/mazec/ui/MazecView$7;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initMenuBar(Lcom/metamoji/mazec/MazecIms;)V
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

    .line 682
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$7;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 685
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$7;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 695
    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 687
    :cond_1
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$7;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 688
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$7;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/16 v1, 0x2bc

    const/16 v2, 0x32

    const/16 v3, 0x16

    invoke-virtual {p2, v3, v1, v2}, Lcom/metamoji/mazec/ui/MazecView;->startRepeatKey(III)V

    .line 689
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    :goto_0
    return v0
.end method
