.class Lcom/metamoji/ui/DetailWindow$16;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/DetailWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/cm/CmContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 631
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$16;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 634
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$16;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$16;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {p1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_frame(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailFrame;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$16;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mgetVisibleArea(Lcom/metamoji/ui/DetailWindow;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/DetailFrame;->adjustPosition(Landroid/graphics/RectF;)V

    .line 642
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$16;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {p1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_frame(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailFrame;->updatePosition()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$16;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {p1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_frame(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailFrame;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/DetailWindow$16$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/DetailWindow$16$1;-><init>(Lcom/metamoji/ui/DetailWindow$16;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/DetailFrame;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 631
    check-cast p1, Lcom/metamoji/cm/CmContext;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailWindow$16;->invoke(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
