.class Lcom/metamoji/mazec/ui/MazecView$9;
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

    .line 721
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$9;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 724
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v1, :cond_1

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 732
    :cond_1
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    .line 733
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 726
    :cond_2
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$9;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 727
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$9;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 728
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    :goto_0
    return v1
.end method
