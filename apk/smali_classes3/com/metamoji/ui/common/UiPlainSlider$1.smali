.class Lcom/metamoji/ui/common/UiPlainSlider$1;
.super Ljava/lang/Object;
.source "UiPlainSlider.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiPlainSlider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiPlainSlider;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiPlainSlider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider$1;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider$1;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInitialized(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider$1;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiPlainSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$minit(Lcom/metamoji/ui/common/UiPlainSlider;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
