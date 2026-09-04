.class public final Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;
.super Ljava/lang/Object;
.source "UtSoftwareKeyboardObserver.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "com/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "rect",
        "Landroid/graphics/Rect;",
        "prevShowing",
        "",
        "onGlobalLayout",
        "",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private prevShowing:Z

.field private final rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;


# direct methods
.method constructor <init>(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->this$0:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->this$0:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;

    invoke-static {v0}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->access$getDecorView$p(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 48
    iget-object v0, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->this$0:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;

    invoke-static {v0}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->access$getDecorView$p(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    .line 49
    iget-object v2, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->this$0:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;

    invoke-static {v2}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->access$getDecorView$p(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 50
    :goto_0
    iget-boolean v3, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->prevShowing:Z

    if-eq v1, v3, :cond_2

    .line 51
    iput-boolean v1, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->prevShowing:Z

    .line 52
    iget-object v3, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->this$0:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;

    invoke-virtual {v3}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->getCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver$handler$1;->this$0:Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;

    invoke-static {v1}, Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;->access$getDecorView$p(Lcom/metamoji/lib/dialog/GlobalLayoutSoftwareKeyboardObserver;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
