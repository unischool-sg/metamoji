.class Lcom/metamoji/ui/ZoomBar$1;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ZoomBar;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ZoomBar;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ZoomBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/metamoji/ui/ZoomBar$1;->this$0:Lcom/metamoji/ui/ZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/metamoji/ui/ZoomBar$1;->this$0:Lcom/metamoji/ui/ZoomBar;

    invoke-static {p1, p2}, Lcom/metamoji/ui/ZoomBar;->-$$Nest$monTouch(Lcom/metamoji/ui/ZoomBar;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
