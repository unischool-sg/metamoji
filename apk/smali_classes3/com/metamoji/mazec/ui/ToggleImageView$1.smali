.class Lcom/metamoji/mazec/ui/ToggleImageView$1;
.super Ljava/lang/Object;
.source "ToggleImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/ToggleImageView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/ToggleImageView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/ToggleImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView$1;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/ToggleImageView$1;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;)I

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {p2, v1}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fputmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;I)V

    .line 58
    iget-object p2, p0, Lcom/metamoji/mazec/ui/ToggleImageView$1;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmOnChangeListener(Lcom/metamoji/mazec/ui/ToggleImageView;)Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 59
    iget-object p2, p0, Lcom/metamoji/mazec/ui/ToggleImageView$1;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmOnChangeListener(Lcom/metamoji/mazec/ui/ToggleImageView;)Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;

    move-result-object p2

    iget-object v1, p0, Lcom/metamoji/mazec/ui/ToggleImageView$1;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-interface {p2, v1}, Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;->onChange(Lcom/metamoji/mazec/ui/ToggleImageView;)V

    .line 63
    :cond_1
    check-cast p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/metamoji/mazec/ui/ToggleImageView$1;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 53
    :cond_2
    check-cast p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/metamoji/mazec/ui/ToggleImageView$1;->this$0:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/ToggleImageView;->-$$Nest$fgetmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;)I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    :goto_0
    return v0
.end method
