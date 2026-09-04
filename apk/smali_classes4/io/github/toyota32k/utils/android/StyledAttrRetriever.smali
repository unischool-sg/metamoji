.class public final Lio/github/toyota32k/utils/android/StyledAttrRetriever;
.super Ljava/lang/Object;
.source "StyledAttrRetriever.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;,
        Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002$%B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B9\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0007\u0010\u0010J0\u0010\u0015\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000eH\u0007J&\u0010\u0015\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000eH\u0007J8\u0010\u001a\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000eH\u0007J8\u0010\u001a\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J.\u0010\u001a\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000eH\u0007J.\u0010\u001a\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J.\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000eJ$\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000eJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000eJ6\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000eJ6\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cJ,\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000eJ,\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0018\u0010 \u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020!J\u0008\u0010\"\u001a\u00020#H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/StyledAttrRetriever;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "context",
        "Landroid/content/Context;",
        "sa",
        "Landroid/content/res/TypedArray;",
        "<init>",
        "(Landroid/content/Context;Landroid/content/res/TypedArray;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "attrRes",
        "",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;[III)V",
        "getSa",
        "()Landroid/content/res/TypedArray;",
        "typedValue",
        "Landroid/util/TypedValue;",
        "getColor",
        "attrId",
        "themeAttrId",
        "fallbackThemeAttrRes",
        "def",
        "getColorWithAlphaOnFallback",
        "alpha",
        "",
        "getDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getDrawableWithAlphaOnFallback",
        "getDimensionPixelSize",
        "Lio/github/toyota32k/utils/android/IDimension;",
        "close",
        "",
        "DP",
        "PX",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final sa:Landroid/content/res/TypedArray;

.field private final typedValue:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sa"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    .line 33
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrRes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "obtainStyledAttributes(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 264
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final getColor(III)I
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColor(IIII)I

    move-result p1

    return p1
.end method

.method public final getColor(IIII)I
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-static {v0, p1}, Landroidx/core/content/res/TypedArrayKt;->getColorOrThrow(Landroid/content/res/TypedArray;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 48
    :catchall_0
    iget-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    iget p4, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 50
    iget-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget-object p2, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    invoke-virtual {p1, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    iget p4, p1, Landroid/util/TypedValue;->data:I

    :cond_1
    :goto_0
    return p4
.end method

.method public final getColorWithAlphaOnFallback(IIIF)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 114
    invoke-virtual/range {v0 .. v5}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColorWithAlphaOnFallback(IIIIF)I

    move-result p1

    return p1
.end method

.method public final getColorWithAlphaOnFallback(IIII)I
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 110
    invoke-virtual/range {v0 .. v5}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColorWithAlphaOnFallback(IIIII)I

    move-result p1

    return p1
.end method

.method public final getColorWithAlphaOnFallback(IIIIF)I
    .locals 6

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p5, v0

    .line 96
    invoke-static {p5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColorWithAlphaOnFallback(IIIII)I

    move-result p1

    return p1
.end method

.method public final getColorWithAlphaOnFallback(IIIII)I
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-static {v0, p1}, Landroidx/core/content/res/TypedArrayKt;->getColorOrThrow(Landroid/content/res/TypedArray;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 85
    :catchall_0
    iget-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    iget p4, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 87
    iget-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget-object p2, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    invoke-virtual {p1, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->typedValue:Landroid/util/TypedValue;

    iget p4, p1, Landroid/util/TypedValue;->data:I

    .line 91
    :cond_1
    :goto_0
    invoke-static {p4, p5}, Lio/github/toyota32k/utils/android/ColorExtKt;->withAlpha(II)I

    move-result p1

    return p1
.end method

.method public final getDimensionPixelSize(ILio/github/toyota32k/utils/android/IDimension;)I
    .locals 2

    const-string v0, "def"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->context:Landroid/content/Context;

    invoke-interface {p2, v1}, Lio/github/toyota32k/utils/android/IDimension;->px(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method

.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 150
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final getDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 143
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, p3}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColor(IIII)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public final getDrawable(IIII)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 129
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColor(IIII)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public final getDrawableWithAlphaOnFallback(IIIF)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 188
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColorWithAlphaOnFallback(IIIIF)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public final getDrawableWithAlphaOnFallback(IIII)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 185
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColorWithAlphaOnFallback(IIIII)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public final getDrawableWithAlphaOnFallback(IIIIF)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 169
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual/range {p0 .. p5}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColorWithAlphaOnFallback(IIIIF)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public final getDrawableWithAlphaOnFallback(IIIII)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 166
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual/range {p0 .. p5}, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->getColorWithAlphaOnFallback(IIIII)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object v0
.end method

.method public final getSa()Landroid/content/res/TypedArray;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/github/toyota32k/utils/android/StyledAttrRetriever;->sa:Landroid/content/res/TypedArray;

    return-object v0
.end method
