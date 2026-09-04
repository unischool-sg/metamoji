.class public final Lio/github/toyota32k/utils/android/UtFitterKt;
.super Ljava/lang/Object;
.source "UtFitter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/android/UtFitterKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\u000c"
    }
    d2 = {
        "fitSizeTo",
        "",
        "originalWidth",
        "originalHeight",
        "layoutWidth",
        "layoutHeight",
        "mode",
        "Lio/github/toyota32k/utils/android/FitMode;",
        "result",
        "Lio/github/toyota32k/utils/android/MuSize;",
        "original",
        "layout",
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
.method public static final fitSizeTo(FFFFLio/github/toyota32k/utils/android/FitMode;Lio/github/toyota32k/utils/android/MuSize;)F
    .locals 4

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 33
    :try_start_0
    sget-object v2, Lio/github/toyota32k/utils/android/UtFitterKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lio/github/toyota32k/utils/android/FitMode;->ordinal()I

    move-result p4

    aget p4, v2, p4

    const/4 v2, 0x1

    if-eq p4, v2, :cond_4

    if-eq p4, v0, :cond_3

    const/4 v2, 0x3

    if-eq p4, v2, :cond_2

    const/4 v2, 0x4

    if-ne p4, v2, :cond_1

    div-float p4, p2, p0

    div-float v2, p3, p1

    cmpg-float v3, p4, v2

    if-gez v3, :cond_0

    mul-float/2addr p1, p4

    .line 52
    invoke-virtual {p5, p2, p1}, Lio/github/toyota32k/utils/android/MuSize;->set(FF)V

    return p4

    :cond_0
    mul-float/2addr p0, v2

    .line 55
    invoke-virtual {p5, p0, p3}, Lio/github/toyota32k/utils/android/MuSize;->set(FF)V

    return v2

    .line 33
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    div-float p1, p3, p1

    mul-float/2addr p0, p1

    .line 45
    invoke-virtual {p5, p0, p3}, Lio/github/toyota32k/utils/android/MuSize;->set(FF)V

    return p1

    :cond_3
    div-float p0, p2, p0

    mul-float/2addr p1, p0

    .line 40
    invoke-virtual {p5, p2, p1}, Lio/github/toyota32k/utils/android/MuSize;->set(FF)V

    return p0

    .line 35
    :cond_4
    invoke-virtual {p5, p2, p3}, Lio/github/toyota32k/utils/android/MuSize;->set(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 61
    sget-object p1, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {p1}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    check-cast p0, Ljava/lang/Throwable;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2, v0, p2}, Lio/github/toyota32k/logger/UtLog;->stackTrace$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 62
    invoke-virtual {p5, v1, v1}, Lio/github/toyota32k/utils/android/MuSize;->set(FF)V

    return v1
.end method

.method public static final fitSizeTo(Lio/github/toyota32k/utils/android/MuSize;Lio/github/toyota32k/utils/android/MuSize;Lio/github/toyota32k/utils/android/FitMode;Lio/github/toyota32k/utils/android/MuSize;)F
    .locals 7

    const-string v0, "original"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/MuSize;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/MuSize;->getHeight()F

    move-result v2

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/MuSize;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lio/github/toyota32k/utils/android/MuSize;->getHeight()F

    move-result v4

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lio/github/toyota32k/utils/android/UtFitterKt;->fitSizeTo(FFFFLio/github/toyota32k/utils/android/FitMode;Lio/github/toyota32k/utils/android/MuSize;)F

    move-result p0

    return p0
.end method
