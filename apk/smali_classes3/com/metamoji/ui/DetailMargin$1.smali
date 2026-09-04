.class Lcom/metamoji/ui/DetailMargin$1;
.super Ljava/lang/Object;
.source "DetailMargin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailMargin;->init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/df/sprite/Viewport;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailMargin;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailMargin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/metamoji/ui/DetailMargin$1;->this$0:Lcom/metamoji/ui/DetailMargin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/metamoji/ui/DetailMargin$1;->this$0:Lcom/metamoji/ui/DetailMargin;

    invoke-static {p1, p2}, Lcom/metamoji/ui/DetailMargin;->-$$Nest$monMove(Lcom/metamoji/ui/DetailMargin;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
