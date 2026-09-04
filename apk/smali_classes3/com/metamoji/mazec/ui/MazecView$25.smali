.class Lcom/metamoji/mazec/ui/MazecView$25;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->setupPopupMenuButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;

.field final synthetic val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

.field final synthetic val$ims:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1281
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

    iput-object p3, p0, Lcom/metamoji/mazec/ui/MazecView$25;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_0

    .line 1328
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1329
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/PopupMenu;->dismiss()V

    .line 1330
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2, v2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    .line 1333
    :cond_1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_0

    .line 1303
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1304
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$25;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 1305
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/mazec/ui/PopupMenu;->onTouch(II)V

    :cond_3
    return v3

    .line 1310
    :cond_4
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1311
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 1313
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v4, p2}, Lcom/metamoji/mazec/ui/PopupMenu;->onTouch(II)V

    .line 1315
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/PopupMenu;->getSelectedLevel()I

    move-result p2

    .line 1316
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/PopupMenu;->dismiss()V

    .line 1317
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0, v2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    .line 1319
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25;->val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

    invoke-virtual {v0, p2}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;->execute(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1320
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2, v3}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 1324
    :cond_5
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 1286
    :cond_6
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/MazecView;->clearPopup()V

    .line 1288
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 1290
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25;->val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

    iget-object v2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;->create(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    .line 1291
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$25$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$25$1;-><init>(Lcom/metamoji/mazec/ui/MazecView$25;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/PopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1297
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$25;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/mazec/ui/PopupMenu;->popup(Landroid/view/View;Landroid/view/View;)V

    .line 1299
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    :goto_0
    return v1
.end method
