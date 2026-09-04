.class Lcom/metamoji/mazec/ui/MazecView$26$1$1;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView$26$1;->onCreatePopup(Lcom/metamoji/mazec/ui/PopupMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/mazec/ui/MazecView$26$1;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView$26$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1364
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26$1$1;->this$2:Lcom/metamoji/mazec/ui/MazecView$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1367
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26$1$1;->this$2:Lcom/metamoji/mazec/ui/MazecView$26$1;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/MazecView$26$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$26;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 1368
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26$1$1;->this$2:Lcom/metamoji/mazec/ui/MazecView$26$1;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/MazecView$26$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$26;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    return-void
.end method
