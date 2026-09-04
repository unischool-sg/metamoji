.class public final Lio/github/toyota32k/utils/android/StyledAttrRetrieverKt;
.super Ljava/lang/Object;
.source "StyledAttrRetriever.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0002\u001a\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002\u001a$\u0010\n\u001a\u00020\u0002*\u00060\u000bR\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u0002H\u0007\u001a\"\u0010\u000f\u001a\u00020\u0010*\u00060\u000bR\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u0002\u001a \u0010\n\u001a\u00020\u0002*\u00020\u00112\u0008\u0008\u0001\u0010\r\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u0002H\u0007\u001a\u001e\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0008\u0008\u0001\u0010\r\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u0002\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "dp",
        "Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;",
        "",
        "getDp",
        "(I)Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;",
        "px",
        "Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;",
        "getPx",
        "(I)Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;",
        "v",
        "getAttrColor",
        "Landroid/content/res/Resources$Theme;",
        "Landroid/content/res/Resources;",
        "attrId",
        "def",
        "getAttrColorAsDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/content/Context;",
        "libUtils_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final dp(I)Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;
    .locals 1

    .line 286
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;-><init>(I)V

    return-object v0
.end method

.method public static final getAttrColor(Landroid/content/Context;II)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const-string v0, "getTheme(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/github/toyota32k/utils/android/StyledAttrRetrieverKt;->getAttrColor(Landroid/content/res/Resources$Theme;II)I

    move-result p0

    return p0
.end method

.method public static final getAttrColor(Landroid/content/res/Resources$Theme;II)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 292
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 293
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static synthetic getAttrColor$default(Landroid/content/Context;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 303
    :cond_0
    invoke-static {p0, p1, p2}, Lio/github/toyota32k/utils/android/StyledAttrRetrieverKt;->getAttrColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static synthetic getAttrColor$default(Landroid/content/res/Resources$Theme;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 290
    :cond_0
    invoke-static {p0, p1, p2}, Lio/github/toyota32k/utils/android/StyledAttrRetrieverKt;->getAttrColor(Landroid/content/res/Resources$Theme;II)I

    move-result p0

    return p0
.end method

.method public static final getAttrColorAsDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const-string v0, "getTheme(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/github/toyota32k/utils/android/StyledAttrRetrieverKt;->getAttrColorAsDrawable(Landroid/content/res/Resources$Theme;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final getAttrColorAsDrawable(Landroid/content/res/Resources$Theme;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0, p1, p2}, Lio/github/toyota32k/utils/android/StyledAttrRetrieverKt;->getAttrColor(Landroid/content/res/Resources$Theme;II)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static synthetic getAttrColorAsDrawable$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 307
    :cond_0
    invoke-static {p0, p1, p2}, Lio/github/toyota32k/utils/android/StyledAttrRetrieverKt;->getAttrColorAsDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAttrColorAsDrawable$default(Landroid/content/res/Resources$Theme;IIILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 297
    :cond_0
    invoke-static {p0, p1, p2}, Lio/github/toyota32k/utils/android/StyledAttrRetrieverKt;->getAttrColorAsDrawable(Landroid/content/res/Resources$Theme;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final getDp(I)Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;
    .locals 1

    .line 284
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$DP;-><init>(I)V

    return-object v0
.end method

.method public static final getPx(I)Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;
    .locals 1

    .line 285
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    return-object v0
.end method

.method public static final px(I)Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;
    .locals 1

    .line 287
    new-instance v0, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/android/StyledAttrRetriever$PX;-><init>(I)V

    return-object v0
.end method
