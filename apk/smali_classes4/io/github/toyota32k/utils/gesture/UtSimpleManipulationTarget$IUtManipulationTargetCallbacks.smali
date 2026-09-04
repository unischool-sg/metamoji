.class public interface abstract Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$IUtManipulationTargetCallbacks;
.super Ljava/lang/Object;
.source "UtSimpleManipulationTarget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUtManipulationTargetCallbacks"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J@\u0010\u0002\u001a\u00020\u000326\u0010\u0004\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0005H&J@\u0010\r\u001a\u00020\u000326\u0010\u0004\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0005H&\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtSimpleManipulationTarget$IUtManipulationTargetCallbacks;",
        "",
        "changePage",
        "",
        "fn",
        "Lkotlin/Function2;",
        "Lio/github/toyota32k/utils/gesture/Orientation;",
        "Lkotlin/ParameterName;",
        "name",
        "orientation",
        "Lio/github/toyota32k/utils/gesture/Direction;",
        "dir",
        "",
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


# virtual methods
.method public abstract changePage(Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "-",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasNextPage(Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "-",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
