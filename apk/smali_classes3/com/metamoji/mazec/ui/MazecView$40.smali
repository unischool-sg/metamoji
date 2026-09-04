.class Lcom/metamoji/mazec/ui/MazecView$40;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->showMenuPopupWindow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1929
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$40;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1932
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$40;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    .line 1933
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$40;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmMenuPopupWnd(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MenuPopupWindow;)V

    return-void
.end method
