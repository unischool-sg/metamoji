.class Lcom/metamoji/ui/dialog/UiDialog$7;
.super Ljava/lang/Object;
.source "UiDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiDialog;->setContentView(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 722
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 726
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$mgetModal(Lcom/metamoji/ui/dialog/UiDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 728
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 729
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 730
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/UiDialog;->mDlgView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->control_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fgetmDialogRect(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 733
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/UiDialog;->mDlgView:Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fgetmViewRect(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 734
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fgetmViewRect(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    .line 735
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fgetmViewRect(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    .line 736
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fgetmDialogRect(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 737
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$mgetDoneOnTouchOutsize(Lcom/metamoji/ui/dialog/UiDialog;)Z

    move-result p1

    .line 742
    iget-object p2, p0, Lcom/metamoji/ui/dialog/UiDialog$7;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz p1, :cond_0

    .line 739
    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/UiDialog;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/UiDialog;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
