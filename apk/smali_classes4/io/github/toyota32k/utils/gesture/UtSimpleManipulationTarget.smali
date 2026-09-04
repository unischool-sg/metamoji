.class public Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;
.super Ljava/lang/Object;
.source "UtSimpleManipulationTarget.kt"

# interfaces
.implements Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;,
        Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$IUtManipulationTargetCallbacks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001:\u0002#$B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0017\u001a\u00020\u00002\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0019\u00a2\u0006\u0002\u0008\u001cJ\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020!H\u0016J\u0018\u0010\"\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020!H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;",
        "Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;",
        "parentView",
        "Landroid/view/View;",
        "contentView",
        "overScrollX",
        "",
        "overScrollY",
        "pageOrientation",
        "Ljava/util/EnumSet;",
        "Lio/github/toyota32k/utils/gesture/Orientation;",
        "<init>",
        "(Landroid/view/View;Landroid/view/View;FFLjava/util/EnumSet;)V",
        "getParentView",
        "()Landroid/view/View;",
        "getContentView",
        "getOverScrollX",
        "()F",
        "getOverScrollY",
        "getPageOrientation",
        "()Ljava/util/EnumSet;",
        "mCallbacks",
        "Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;",
        "callbacks",
        "fn",
        "Lkotlin/Function1;",
        "Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$IUtManipulationTargetCallbacks;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "changePage",
        "",
        "orientation",
        "dir",
        "Lio/github/toyota32k/utils/gesture/Direction;",
        "hasNextPage",
        "IUtManipulationTargetCallbacks",
        "Callbacks",
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
.field private final contentView:Landroid/view/View;

.field private mCallbacks:Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;

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

.field private final parentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;FFLjava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "FF",
            "Ljava/util/EnumSet<",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageOrientation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->parentView:Landroid/view/View;

    .line 13
    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->contentView:Landroid/view/View;

    .line 14
    iput p3, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->overScrollX:F

    .line 15
    iput p4, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->overScrollY:F

    .line 16
    iput-object p5, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->pageOrientation:Ljava/util/EnumSet;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;FFLjava/util/EnumSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    move p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    .line 16
    const-class p5, Lio/github/toyota32k/utils/gesture/Orientation;

    invoke-static {p5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p5

    const-string p6, "noneOf(...)"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move-object p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 11
    invoke-direct/range {p1 .. p6}, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;-><init>(Landroid/view/View;Landroid/view/View;FFLjava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public final callbacks(Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$IUtManipulationTargetCallbacks;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;

    invoke-direct {v0}, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;-><init>()V

    .line 37
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->mCallbacks:Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;

    return-object p0
.end method

.method public changePage(Lio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/Direction;)Z
    .locals 1

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->mCallbacks:Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;->getChangePageProc()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge getContentHeight()I
    .locals 1

    .line 10
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public bridge getContentWidth()I
    .locals 1

    .line 10
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getOverScrollX()F
    .locals 1

    .line 14
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->overScrollX:F

    return v0
.end method

.method public getOverScrollY()F
    .locals 1

    .line 15
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->overScrollY:F

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

    .line 16
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->pageOrientation:Ljava/util/EnumSet;

    return-object v0
.end method

.method public bridge getParentHeight()I
    .locals 1

    .line 10
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentHeight()I

    move-result v0

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .line 12
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public bridge getParentWidth()I
    .locals 1

    .line 10
    invoke-super {p0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentWidth()I

    move-result v0

    return v0
.end method

.method public hasNextPage(Lio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/Direction;)Z
    .locals 1

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;->mCallbacks:Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$Callbacks;->getHasNextPageProc()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
