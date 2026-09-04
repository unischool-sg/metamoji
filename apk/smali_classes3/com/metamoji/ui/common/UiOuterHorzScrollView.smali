.class public Lcom/metamoji/ui/common/UiOuterHorzScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "UiOuterHorzScrollView.java"


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

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;-><init>(Lcom/metamoji/ui/common/UiOuterHorzScrollView;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiOuterHorzScrollView;->mTargetClasses:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;-><init>(Lcom/metamoji/ui/common/UiOuterHorzScrollView;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiOuterHorzScrollView;->mTargetClasses:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/common/UiOuterHorzScrollView$1;-><init>(Lcom/metamoji/ui/common/UiOuterHorzScrollView;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiOuterHorzScrollView;->mTargetClasses:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addTargetClass(Ljava/lang/Class;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/ui/common/UiOuterHorzScrollView;->mTargetClasses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetClasses([Ljava/lang/Class;)V
    .locals 3

    .line 48
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/metamoji/ui/common/UiOuterHorzScrollView;->mTargetClasses:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/metamoji/ui/common/UiOuterHorzScrollView;->mTargetClasses:Ljava/util/ArrayList;

    invoke-static {v0, p1, p0, v1}, Lcom/metamoji/ui/common/UiOuterScrollView;->checkInnerScrollView(FFLandroid/view/ViewGroup;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method
