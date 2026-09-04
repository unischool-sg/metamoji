.class Lcom/metamoji/media/ui/UnMediaOverlayView$2;
.super Ljava/lang/Object;
.source "UnMediaOverlayView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaOverlayView;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaOverlayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$2;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$2;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-static {p1}, Lcom/metamoji/media/ui/UnMediaOverlayView;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaOverlayView;)Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView$2;->this$0:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-static {p1}, Lcom/metamoji/media/ui/UnMediaOverlayView;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaOverlayView;)Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;->tappedOverlayView()V

    :cond_1
    :goto_0
    return p2
.end method
