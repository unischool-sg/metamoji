.class Lcom/metamoji/mazec/ui/MazecView$5$1;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView$5;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/mazec/ui/MazecView$5;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 562
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$5$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$5;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 566
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$5$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$5;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/CursorKeysPopuper;)V

    return-void
.end method
