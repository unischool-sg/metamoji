.class Lcom/metamoji/ui/LaserPointerCanvas$2;
.super Ljava/lang/Object;
.source "LaserPointerCanvas.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/LaserPointerCanvas;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/LaserPointerCanvas;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/LaserPointerCanvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$2;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollChanged()V
    .locals 0

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    return-void
.end method

.method public scrollStart()V
    .locals 0

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    return-void
.end method

.method public zoomChanged()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$2;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$msyncZoom(Lcom/metamoji/ui/LaserPointerCanvas;)V

    return-void
.end method

.method public zoomChanging()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$2;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {v0}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$msyncZoom(Lcom/metamoji/ui/LaserPointerCanvas;)V

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$2;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {p1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$msyncZoom(Lcom/metamoji/ui/LaserPointerCanvas;)V

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$2;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-static {p1}, Lcom/metamoji/ui/LaserPointerCanvas;->-$$Nest$msyncZoom(Lcom/metamoji/ui/LaserPointerCanvas;)V

    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    return-void
.end method

.method public zoomStart()V
    .locals 0

    return-void
.end method
