.class Lcom/metamoji/ui/common/UiEditText$1;
.super Ljava/lang/Object;
.source "UiEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiEditText;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/metamoji/ui/common/UiEditText$1;->this$0:Lcom/metamoji/ui/common/UiEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 68
    iget-object p1, p0, Lcom/metamoji/ui/common/UiEditText$1;->this$0:Lcom/metamoji/ui/common/UiEditText;

    .line 70
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/ui/common/UiEditText$1;->this$0:Lcom/metamoji/ui/common/UiEditText;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiEditText;->-$$Nest$fgetmOffset(Lcom/metamoji/ui/common/UiEditText;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    .line 78
    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lcom/metamoji/ui/common/UiEditText$1;->this$0:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->handleClearButton()V

    :cond_2
    return v1
.end method
