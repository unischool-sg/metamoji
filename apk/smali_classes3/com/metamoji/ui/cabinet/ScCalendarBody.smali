.class public final Lcom/metamoji/ui/cabinet/ScCalendarBody;
.super Landroid/view/ViewGroup;
.source "ScCalendarBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0014J0\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u0017H\u0014J\u000e\u0010&\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020!J\u0006\u0010(\u001a\u00020\u0015J\u0014\u0010)\u001a\u00020\u00152\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006-"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/ScCalendarBody;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "mWeekHeader",
        "Lcom/metamoji/ui/cabinet/ScCalendarHeader;",
        "getMWeekHeader",
        "()Lcom/metamoji/ui/cabinet/ScCalendarHeader;",
        "setMWeekHeader",
        "(Lcom/metamoji/ui/cabinet/ScCalendarHeader;)V",
        "mListScrollView",
        "Landroid/widget/ScrollView;",
        "getMListScrollView",
        "()Landroid/widget/ScrollView;",
        "mListView",
        "Lcom/metamoji/ui/cabinet/ScCalendarList;",
        "getMListView",
        "()Lcom/metamoji/ui/cabinet/ScCalendarList;",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "onLayout",
        "p0",
        "",
        "p1",
        "p2",
        "p3",
        "p4",
        "m_model",
        "Lcom/metamoji/ui/cabinet/ScCalendarModel;",
        "getM_model",
        "()Lcom/metamoji/ui/cabinet/ScCalendarModel;",
        "setM_model",
        "(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V",
        "notifyModel",
        "model",
        "update",
        "updateCalendarList",
        "roomArray",
        "",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mListScrollView:Landroid/widget/ScrollView;

.field private final mListView:Lcom/metamoji/ui/cabinet/ScCalendarList;

.field private mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

.field private m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    .line 13
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListScrollView:Landroid/widget/ScrollView;

    .line 14
    new-instance v1, Lcom/metamoji/ui/cabinet/ScCalendarList;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListView:Lcom/metamoji/ui/cabinet/ScCalendarList;

    .line 17
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->setVisibility(I)V

    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarBody;->addView(Landroid/view/View;)V

    .line 21
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarBody;->addView(Landroid/view/View;)V

    .line 23
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/ScCalendarList;->setVisibility(I)V

    .line 24
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getMListScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public final getMListView()Lcom/metamoji/ui/cabinet/ScCalendarList;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListView:Lcom/metamoji/ui/cabinet/ScCalendarList;

    return-object v0
.end method

.method public final getMWeekHeader()Lcom/metamoji/ui/cabinet/ScCalendarHeader;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    return-object v0
.end method

.method public final getM_model()Lcom/metamoji/ui/cabinet/ScCalendarModel;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    return-object v0
.end method

.method public final notifyModel(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    .line 60
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->notifyModel(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V

    .line 61
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListView:Lcom/metamoji/ui/cabinet/ScCalendarList;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->notifyModel(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->layout(IIII)V

    .line 54
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListScrollView:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredWidth()I

    move-result p3

    iget-object p5, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {p5}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredHeight()I

    move-result p5

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/widget/ScrollView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 30
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 36
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->measure(II)V

    .line 37
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 38
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 39
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 41
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0, p2}, Landroid/widget/ScrollView;->measure(II)V

    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/cabinet/ScCalendarBody;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setMWeekHeader(Lcom/metamoji/ui/cabinet/ScCalendarHeader;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    return-void
.end method

.method public final setM_model(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    return-void
.end method

.method public final update()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mWeekHeader:Lcom/metamoji/ui/cabinet/ScCalendarHeader;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->requestLayout()V

    .line 67
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListView:Lcom/metamoji/ui/cabinet/ScCalendarList;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarList;->clear()V

    return-void
.end method

.method public final updateCalendarList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "roomArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarBody;->mListView:Lcom/metamoji/ui/cabinet/ScCalendarList;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->updateCalendarList(Ljava/util/List;)V

    return-void
.end method
