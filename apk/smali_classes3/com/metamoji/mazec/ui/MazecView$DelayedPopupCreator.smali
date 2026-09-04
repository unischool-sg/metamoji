.class Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/MazecView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayedPopupCreator"
.end annotation


# instance fields
.field private anchorView_:Landroid/widget/ImageView;

.field private creator_:Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;

.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;Landroid/widget/ImageView;)V
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

    .line 318
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->creator_:Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;

    .line 320
    iput-object p3, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->anchorView_:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method onCreatePopup(Lcom/metamoji/mazec/ui/PopupMenu;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0, p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    .line 339
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->anchorView_:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/mazec/ui/PopupMenu;->popup(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;)V

    .line 328
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->creator_:Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;

    invoke-interface {v1, v0}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;->create(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/MazecView;->clearPopup()V

    .line 333
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;->onCreatePopup(Lcom/metamoji/mazec/ui/PopupMenu;)V

    :cond_1
    return-void
.end method
