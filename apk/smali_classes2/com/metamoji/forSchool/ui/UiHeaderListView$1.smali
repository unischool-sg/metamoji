.class Lcom/metamoji/forSchool/ui/UiHeaderListView$1;
.super Ljava/lang/Object;
.source "UiHeaderListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/UiHeaderListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$1;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 368
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$1;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionX:I

    .line 369
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$1;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionY:I

    .line 370
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$1;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object p2, p1, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p2

    iput p2, p1, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_selectedItemPos:I

    const/4 p1, 0x0

    return p1
.end method
