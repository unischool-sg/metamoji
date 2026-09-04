.class public final Lcom/metamoji/video/AmvFitterKt;
.super Ljava/lang/Object;
.source "AmvFitter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvFitterKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003\u00a8\u0006\u0008"
    }
    d2 = {
        "fitSizeTo",
        "",
        "original",
        "Lcom/metamoji/video/MuSize;",
        "layout",
        "mode",
        "Lcom/metamoji/video/FitMode;",
        "result",
        "video"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final fitSizeTo(Lcom/metamoji/video/MuSize;Lcom/metamoji/video/MuSize;Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;)V
    .locals 3

    const-string v0, "original"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 29
    :try_start_0
    sget-object v1, Lcom/metamoji/video/AmvFitterKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/metamoji/video/FitMode;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result v1

    div-float/2addr p2, v1

    .line 35
    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result p0

    mul-float/2addr p0, p2

    invoke-virtual {p3, p1, p0}, Lcom/metamoji/video/MuSize;->set(FF)V

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p0

    mul-float/2addr p0, v1

    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result p1

    invoke-virtual {p3, p0, p1}, Lcom/metamoji/video/MuSize;->set(FF)V

    return-void

    .line 29
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result p0

    div-float/2addr p2, p0

    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result p0

    invoke-virtual {p3, p2, p0}, Lcom/metamoji/video/MuSize;->set(FF)V

    return-void

    .line 31
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/metamoji/video/MuSize;->getWidth()F

    move-result p0

    div-float/2addr v1, p0

    invoke-virtual {p3, p2, v1}, Lcom/metamoji/video/MuSize;->set(FF)V

    return-void

    .line 30
    :cond_4
    invoke-virtual {p3, p1}, Lcom/metamoji/video/MuSize;->copyFrom(Lcom/metamoji/video/MuSize;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 44
    sget-object p1, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    check-cast p0, Ljava/lang/Throwable;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2, v0, p2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p0, 0x0

    .line 45
    invoke-virtual {p3, p0, p0}, Lcom/metamoji/video/MuSize;->set(FF)V

    return-void
.end method
