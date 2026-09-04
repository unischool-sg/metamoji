.class public Lcom/metamoji/ui/common/UiOuterScrollView;
.super Landroid/widget/ScrollView;
.source "UiOuterScrollView.java"


# instance fields
.field mTargetClasses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Lcom/metamoji/ui/common/UiOuterScrollView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiOuterScrollView$1;-><init>(Lcom/metamoji/ui/common/UiOuterScrollView;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiOuterScrollView;->mTargetClasses:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Lcom/metamoji/ui/common/UiOuterScrollView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiOuterScrollView$1;-><init>(Lcom/metamoji/ui/common/UiOuterScrollView;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiOuterScrollView;->mTargetClasses:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Lcom/metamoji/ui/common/UiOuterScrollView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiOuterScrollView$1;-><init>(Lcom/metamoji/ui/common/UiOuterScrollView;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiOuterScrollView;->mTargetClasses:Ljava/util/ArrayList;

    return-void
.end method

.method static checkInnerScrollView(FFLandroid/view/ViewGroup;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;)Z"
        }
    .end annotation

    .line 97
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 98
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p0, v0

    add-float/2addr p1, v1

    .line 102
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 105
    invoke-static {v2, p3}, Lcom/metamoji/ui/common/UiOuterScrollView;->checkSubClass(Ljava/lang/Object;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-static {p0, p1, p2, v2}, Lcom/metamoji/ui/common/UiOuterScrollView;->viewHitTest(FFLandroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    .line 110
    :cond_0
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p0, v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v4, v5, v2, p3}, Lcom/metamoji/ui/common/UiOuterScrollView;->checkInnerScrollView(FFLandroid/view/ViewGroup;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method static checkSubClass(Ljava/lang/Object;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;)Z"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static viewHitTest(FFLandroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 0

    .line 130
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 131
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 133
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 134
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 135
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 137
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p2, p0

    if-gtz p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    .line 138
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addTargetClass(Ljava/lang/Class;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/ui/common/UiOuterScrollView;->mTargetClasses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetClasses([Ljava/lang/Class;)V
    .locals 3

    .line 61
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/metamoji/ui/common/UiOuterScrollView;->mTargetClasses:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/metamoji/ui/common/UiOuterScrollView;->mTargetClasses:Ljava/util/ArrayList;

    invoke-static {v0, p1, p0, v1}, Lcom/metamoji/ui/common/UiOuterScrollView;->checkInnerScrollView(FFLandroid/view/ViewGroup;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method
