.class Lcom/metamoji/ui/DetailWindow$1;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 158
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$1;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$1;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0, p1, p2}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$monTouchCloseButton(Lcom/metamoji/ui/DetailWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
