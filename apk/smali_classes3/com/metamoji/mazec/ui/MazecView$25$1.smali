.class Lcom/metamoji/mazec/ui/MazecView$25$1;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView$25;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/mazec/ui/MazecView$25;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView$25;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1291
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$25$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1294
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$25;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    return-void
.end method
