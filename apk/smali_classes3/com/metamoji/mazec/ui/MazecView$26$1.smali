.class Lcom/metamoji/mazec/ui/MazecView$26$1;
.super Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;
.source "MazecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView$26;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/mazec/ui/MazecView$26;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView$26;Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1361
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$26;

    iget-object p1, p1, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;-><init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method onCreatePopup(Lcom/metamoji/mazec/ui/PopupMenu;)V
    .locals 1

    .line 1364
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$26$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$26$1$1;-><init>(Lcom/metamoji/mazec/ui/MazecView$26$1;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/PopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1371
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->onCreatePopup(Lcom/metamoji/mazec/ui/PopupMenu;)V

    return-void
.end method
