.class Lcom/metamoji/ui/common/UiButton$4;
.super Ljava/lang/Object;
.source "UiButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiButton;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIIIIIIIIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 577
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton$4;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 582
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButton$4;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmTouchListener(Lcom/metamoji/ui/common/UiButton;)Landroid/view/View$OnTouchListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 583
    iget-object p1, p0, Lcom/metamoji/ui/common/UiButton$4;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmTouchListener(Lcom/metamoji/ui/common/UiButton;)Landroid/view/View$OnTouchListener;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiButton$4;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-interface {p1, v0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
