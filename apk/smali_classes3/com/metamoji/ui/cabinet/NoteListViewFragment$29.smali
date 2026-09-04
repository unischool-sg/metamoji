.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2751
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2754
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_forLocOnSc(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getLocationOnScreen([I)V

    .line 2755
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_forLocOnSc(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_forLocOnSc(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->pointToPosition(II)I

    move-result p1

    .line 2756
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v4, v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2760
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {p2, v0, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 2761
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p2

    iput p1, p2, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    .line 2762
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p2

    invoke-virtual {p2, p1, v4}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    goto :goto_1

    .line 2757
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p2

    iget p2, p2, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {p1, p2, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 2758
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    :goto_1
    return v2
.end method
