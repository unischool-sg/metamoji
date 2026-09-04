.class public interface abstract Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;
.super Ljava/lang/Object;
.source "IUtManipulationTarget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/gesture/IUtManipulationTarget$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!H&J\u0018\u0010\"\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000bR\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u0018\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006#\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;",
        "",
        "parentView",
        "Landroid/view/View;",
        "getParentView",
        "()Landroid/view/View;",
        "contentView",
        "getContentView",
        "parentWidth",
        "",
        "getParentWidth",
        "()I",
        "parentHeight",
        "getParentHeight",
        "contentWidth",
        "getContentWidth",
        "contentHeight",
        "getContentHeight",
        "overScrollX",
        "",
        "getOverScrollX",
        "()F",
        "overScrollY",
        "getOverScrollY",
        "pageOrientation",
        "Ljava/util/EnumSet;",
        "Lio/github/toyota32k/utils/gesture/Orientation;",
        "getPageOrientation",
        "()Ljava/util/EnumSet;",
        "changePage",
        "",
        "orientation",
        "dir",
        "Lio/github/toyota32k/utils/gesture/Direction;",
        "hasNextPage",
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


# direct methods
.method public static synthetic access$getContentHeight$jd(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;)I
    .locals 0

    .line 9
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentHeight()I

    move-result p0

    return p0
.end method

.method public static synthetic access$getContentWidth$jd(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;)I
    .locals 0

    .line 9
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic access$getParentHeight$jd(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;)I
    .locals 0

    .line 9
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentHeight()I

    move-result p0

    return p0
.end method

.method public static synthetic access$getParentWidth$jd(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;)I
    .locals 0

    .line 9
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract changePage(Lio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/Direction;)Z
.end method

.method public getContentHeight()I
    .locals 1

    .line 26
    invoke-interface {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public getContentWidth()I
    .locals 1

    .line 24
    invoke-interface {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public abstract getOverScrollX()F
.end method

.method public abstract getOverScrollY()F
.end method

.method public abstract getPageOrientation()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            ">;"
        }
    .end annotation
.end method

.method public getParentHeight()I
    .locals 1

    .line 16
    invoke-interface {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public abstract getParentView()Landroid/view/View;
.end method

.method public getParentWidth()I
    .locals 1

    .line 14
    invoke-interface {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public abstract hasNextPage(Lio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/Direction;)Z
.end method
