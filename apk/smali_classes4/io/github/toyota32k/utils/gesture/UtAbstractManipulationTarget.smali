.class public abstract Lio/github/toyota32k/utils/gesture/UtAbstractManipulationTarget;
.super Ljava/lang/Object;
.source "UtAbstractManipulationTarget.kt"

# interfaces
.implements Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtAbstractManipulationTarget;",
        "Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;",
        "<init>",
        "()V",
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


# instance fields
.field private final overScrollX:F

.field private final overScrollY:F

.field private final pageOrientation:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lio/github/toyota32k/utils/gesture/Orientation;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "noneOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/toyota32k/utils/gesture/UtAbstractManipulationTarget;->pageOrientation:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public changePage(Lio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/Direction;)Z
    .locals 1

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dir"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge getContentHeight()I
    .locals 1

    .line 9
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public bridge getContentWidth()I
    .locals 1

    .line 9
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getOverScrollX()F
    .locals 1

    .line 10
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtAbstractManipulationTarget;->overScrollX:F

    return v0
.end method

.method public getOverScrollY()F
    .locals 1

    .line 11
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtAbstractManipulationTarget;->overScrollY:F

    return v0
.end method

.method public getPageOrientation()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtAbstractManipulationTarget;->pageOrientation:Ljava/util/EnumSet;

    return-object v0
.end method

.method public bridge getParentHeight()I
    .locals 1

    .line 9
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentHeight()I

    move-result v0

    return v0
.end method

.method public bridge getParentWidth()I
    .locals 1

    .line 9
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentWidth()I

    move-result v0

    return v0
.end method

.method public hasNextPage(Lio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/Direction;)Z
    .locals 1

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dir"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
