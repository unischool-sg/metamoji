.class public Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;
.super Landroid/widget/GridView;
.source "ScMonitorGridView.java"


# instance fields
.field expanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->expanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->expanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->expanded:Z

    return-void
.end method


# virtual methods
.method public computeVerticalScrollExtent()I
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->expanded:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0xffffff

    const/high16 v0, -0x80000000

    .line 39
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->expanded:Z

    return-void
.end method
