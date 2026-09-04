.class Lcom/metamoji/ui/DetailFrame$1;
.super Ljava/lang/Object;
.source "DetailFrame.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailFrame;->init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/df/sprite/Viewport;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailFrame;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/metamoji/ui/DetailFrame$1;->this$0:Lcom/metamoji/ui/DetailFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/metamoji/ui/DetailFrame$1;->this$0:Lcom/metamoji/ui/DetailFrame;

    invoke-static {p1, p2}, Lcom/metamoji/ui/DetailFrame;->-$$Nest$monTouch(Lcom/metamoji/ui/DetailFrame;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
