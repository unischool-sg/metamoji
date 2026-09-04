.class public Lio/github/toyota32k/viewex/library/Viewbox;
.super Lio/github/toyota32k/viewex/library/FrameLayoutEx;
.source "Viewbox.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewbox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Viewbox.kt\nio/github/toyota32k/viewex/library/Viewbox\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007H\u0014J0\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0014R+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/github/toyota32k/viewex/library/Viewbox;",
        "Lio/github/toyota32k/viewex/library/FrameLayoutEx;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "<set-?>",
        "",
        "expandable",
        "getExpandable",
        "()Z",
        "setExpandable",
        "(Z)V",
        "expandable$delegate",
        "Lio/github/toyota32k/viewex/library/LiteOvservableProperty;",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onLayout",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final expandable$delegate:Lio/github/toyota32k/viewex/library/LiteOvservableProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "expandable"

    const-string v3, "getExpandable()Z"

    const-class v4, Lio/github/toyota32k/viewex/library/Viewbox;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lio/github/toyota32k/viewex/library/Viewbox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

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

    invoke-direct/range {v1 .. v7}, Lio/github/toyota32k/viewex/library/Viewbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lio/github/toyota32k/viewex/library/Viewbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lio/github/toyota32k/viewex/library/Viewbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    new-instance p1, Lio/github/toyota32k/viewex/library/LiteOvservableProperty;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    new-instance v0, Lio/github/toyota32k/viewex/library/Viewbox$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/github/toyota32k/viewex/library/Viewbox$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/viewex/library/Viewbox;)V

    invoke-direct {p1, p4, v0}, Lio/github/toyota32k/viewex/library/LiteOvservableProperty;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lio/github/toyota32k/viewex/library/Viewbox;->expandable$delegate:Lio/github/toyota32k/viewex/library/LiteOvservableProperty;

    .line 31
    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/Viewbox;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p4, Lio/github/toyota32k/viewex/library/R$styleable;->Viewbox:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :try_start_0
    sget p2, Lio/github/toyota32k/viewex/library/R$styleable;->Viewbox_expandable:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lio/github/toyota32k/viewex/library/Viewbox;->setExpandable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
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

    .line 18
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lio/github/toyota32k/viewex/library/Viewbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static final expandable_delegate$lambda$0(Lio/github/toyota32k/viewex/library/Viewbox;)Lkotlin/Unit;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/Viewbox;->requestLayout()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getExpandable()Z
    .locals 3

    .line 28
    iget-object v0, p0, Lio/github/toyota32k/viewex/library/Viewbox;->expandable$delegate:Lio/github/toyota32k/viewex/library/LiteOvservableProperty;

    sget-object v1, Lio/github/toyota32k/viewex/library/Viewbox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/github/toyota32k/viewex/library/LiteOvservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    .line 48
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/Viewbox;->getExpandable()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_0
    move v4, v5

    .line 50
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_1

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 51
    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    goto :goto_3

    :cond_2
    move v8, v7

    :goto_3
    if-eqz v6, :cond_3

    .line 52
    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v9

    :cond_3
    sub-int v7, v0, v7

    int-to-float v7, v7

    .line 53
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-int v8, v1, v8

    int-to-float v8, v8

    .line 54
    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v8, v7

    if-gtz v8, :cond_4

    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/Viewbox;->getExpandable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 56
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 58
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v5

    if-gtz v7, :cond_6

    invoke-virtual {p0}, Lio/github/toyota32k/viewex/library/Viewbox;->getExpandable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 59
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_7
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    .line 63
    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    if-eqz v6, :cond_c

    .line 64
    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_c

    .line 65
    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x7

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_9

    const/4 v7, 0x5

    if-eq v5, v7, :cond_8

    goto :goto_4

    .line 67
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    goto :goto_4

    .line 66
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    .line 69
    :goto_4
    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x70

    const/16 v6, 0x10

    if-eq v5, v6, :cond_b

    const/16 v6, 0x50

    if-eq v5, v6, :cond_a

    goto :goto_5

    .line 71
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    goto :goto_5

    .line 70
    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 74
    :cond_c
    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 75
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_0

    .line 77
    :cond_d
    invoke-super/range {p0 .. p5}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lio/github/toyota32k/viewex/library/FrameLayoutEx;->onMeasure(II)V

    const/4 p1, 0x0

    .line 41
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lio/github/toyota32k/viewex/library/Viewbox;->measureChildren(II)V

    return-void
.end method

.method public final setExpandable(Z)V
    .locals 3

    .line 28
    iget-object v0, p0, Lio/github/toyota32k/viewex/library/Viewbox;->expandable$delegate:Lio/github/toyota32k/viewex/library/LiteOvservableProperty;

    sget-object v1, Lio/github/toyota32k/viewex/library/Viewbox;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lio/github/toyota32k/viewex/library/LiteOvservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
