.class public Lio/github/toyota32k/viewex/library/FrameLayoutEx;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutEx.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0002J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0007H\u0014R$\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/github/toyota32k/viewex/library/FrameLayoutEx;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "v",
        "maxWidth",
        "getMaxWidth",
        "()I",
        "setMaxWidth",
        "(I)V",
        "maxHeight",
        "getMaxHeight",
        "setMaxHeight",
        "makeMeasureSpec",
        "spec",
        "max",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "library"
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
.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7fffffff

    .line 17
    iput p1, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxWidth:I

    .line 24
    iput p1, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxHeight:I

    .line 33
    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object p4, Lio/github/toyota32k/viewex/library/R$styleable;->FrameLayoutEx:[I

    invoke-virtual {p3, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "obtainStyledAttributes(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_0
    sget p3, Lio/github/toyota32k/viewex/library/R$styleable;->FrameLayoutEx_maxWidth:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->setMaxWidth(I)V

    .line 36
    sget p3, Lio/github/toyota32k/viewex/library/R$styleable;->FrameLayoutEx_maxHeight:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->setMaxHeight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final makeMeasureSpec(II)I
    .locals 3

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    return p1

    .line 47
    :cond_0
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, -0x80000000

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final getMaxHeight()I
    .locals 1

    .line 24
    iget v0, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxHeight:I

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .line 17
    iget v0, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 52
    iget v0, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxWidth:I

    invoke-direct {p0, p1, v0}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->makeMeasureSpec(II)I

    move-result v0

    .line 53
    iget v1, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxHeight:I

    invoke-direct {p0, p2, v1}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->makeMeasureSpec(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, v0, v1}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->measure(II)V

    .line 58
    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 1

    .line 26
    iget v0, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxHeight:I

    if-eq v0, p1, :cond_0

    .line 27
    iput p1, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxHeight:I

    .line 28
    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 1

    .line 19
    iget v0, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxWidth:I

    if-eq v0, p1, :cond_0

    .line 20
    iput p1, p0, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->maxWidth:I

    .line 21
    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->requestLayout()V

    :cond_0
    return-void
.end method
