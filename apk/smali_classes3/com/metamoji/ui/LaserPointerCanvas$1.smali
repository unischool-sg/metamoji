.class Lcom/metamoji/ui/LaserPointerCanvas$1;
.super Ljava/lang/Object;
.source "LaserPointerCanvas.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchListener;


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

    .line 116
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas$1;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$1;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->onTouchesCanceled(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$1;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->onTouchesEnded(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$1;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->onTouchesMoved(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas$1;->this$0:Lcom/metamoji/ui/LaserPointerCanvas;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->onTouchesBegan(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method
