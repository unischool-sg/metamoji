.class Lcom/metamoji/ui/dialog/SelectNote$3;
.super Ljava/lang/Object;
.source "SelectNote.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/SelectNote;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SelectNote;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 658
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalView(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_forLocOnSc(Lcom/metamoji/ui/dialog/SelectNote;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getLocationOnScreen([I)V

    .line 666
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalView(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v3}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_forLocOnSc(Lcom/metamoji/ui/dialog/SelectNote;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v3}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_forLocOnSc(Lcom/metamoji/ui/dialog/SelectNote;)[I

    move-result-object v3

    aget v3, v3, v1

    int-to-float v3, v3

    sub-float/2addr p2, v3

    float-to-int p2, p2

    invoke-virtual {v0, v2, p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->pointToPosition(II)I

    move-result p2

    .line 668
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalView(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalView(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {v0, v2, v4}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 670
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalView(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 671
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalView(Lcom/metamoji/ui/dialog/SelectNote;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    iput p2, v0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    .line 674
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/SelectNote;->m_Timer:Ljava/util/Timer;

    if-nez p2, :cond_1

    .line 675
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p2, Lcom/metamoji/ui/dialog/SelectNote;->m_Timer:Ljava/util/Timer;

    .line 676
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SelectNote$3;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    iget-object v2, p2, Lcom/metamoji/ui/dialog/SelectNote;->m_Timer:Ljava/util/Timer;

    new-instance v3, Lcom/metamoji/ui/dialog/SelectNote$3$1;

    invoke-direct {v3, p0, p1}, Lcom/metamoji/ui/dialog/SelectNote$3$1;-><init>(Lcom/metamoji/ui/dialog/SelectNote$3;Landroid/view/View;)V

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return v1
.end method
